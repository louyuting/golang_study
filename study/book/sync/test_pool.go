package main

import (
	"github.com/pkg/errors"
	"io"
	"log"
	"math/rand"
	"sync"
	"sync/atomic"
	"time"
)

// pool表示静态的共享资源池，用于goroutine复用
// 资源必须是实现了 Closer 接口的
type Pool struct {
	m         sync.Mutex
	resources chan io.Closer
	factory   func() (io.Closer, error)
	closed    bool
}

var ErrPoolClosed = errors.New("Pool has been closed")

/**
新建一个资源池，需要一个可以分配新资源的函数，并规定池子的大小
*/
func NewPool(fn func() (io.Closer, error), size uint) (*Pool, error) {
	if size <= 0 {
		return nil, errors.New("size value too small")
	}

	return &Pool{
		factory:   fn,
		resources: make(chan io.Closer, size),
	}, nil
}

/**
从池子获取一个资源
*/
func (p *Pool) Acquire() (io.Closer, error) {
	select {
	// 检查是否有空闲资源
	case r, ok := <-p.resources:
		log.Println("Acquire shared resource")
		if !ok {
			return nil, ErrPoolClosed
		}
		return r, nil
	// 没有空闲资源可用，创建一个新的资源
	default:
		log.Println("Acquire new resource")
		return p.factory()
	}
}

//使用完之后，释放一个资源放回池子里
func (p *Pool) Release(r io.Closer) {
	// 保证本操作和close操作的正确性
	p.m.Lock()

	defer p.m.Unlock()

	if p.closed {
		r.Close()
		return
	}

	select {
	// 试图将这个资源放入队列
	case p.resources <- r:
		log.Println("Release: IN QUEUE")
	default:
		log.Println("Release, closing")
		r.Close()
	}
}

// 关闭资源池
func (p *Pool) Close() {
	p.m.Lock()

	defer p.m.Unlock()

	if p.closed {
		return
	}

	p.closed = true

	//在清空资源之前，先将通道关闭，不然会发生死锁
	close(p.resources)

	for r := range p.resources {
		r.Close()
	}
}

////////////////////////////////////////////////////////////////////////////////////
const (
	maxGoroutines   = 25 //要使用的goroutine数量
	pooledResources = 2  //池中资源的数量
)

// 模拟要共享的资源
type dbConnection struct {
	ID int32
}

func (dbConn *dbConnection) Close() error {
	log.Println("close connection", dbConn.ID)
	return nil
}

// 每个连接独一无二的id
var idCounter int32

//创建一个新的连接
func createConnection() (io.Closer, error) {
	id := atomic.AddInt32(&idCounter, 1)
	log.Println("Create new connection, id=", id)
	return &dbConnection{id}, nil
}

func main() {

	var wg sync.WaitGroup
	wg.Add(maxGoroutines)

	ppp, err := NewPool(createConnection, pooledResources)

	if err != nil {
		log.Println(err)
	}

	// 使用池子里的连接完成查询
	for query := 0; query < maxGoroutines; query++ {
		go func(q int) {
			performQueries(q, ppp)
			wg.Done()
		}(query)
	}
	wg.Wait()

	log.Println("close pool")
	ppp.Close()
}

func performQueries(query int, p *Pool) {

	conn, err := p.Acquire()

	if err != nil {
		log.Println(err)
		return
	}

	defer p.Release(conn)

	// 等待查询结果
	time.Sleep(time.Duration(rand.Intn(1000)) * time.Millisecond)
	log.Printf("QID[%d], CID[%d]\n", query, conn.(*dbConnection).ID)
}
