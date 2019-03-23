package main

import (
	"fmt"
	"runtime"
	"sync"
	"sync/atomic"
)

var counter int64 = 0

// 计数加2表示需要等待两个goroutine完成
var wg sync.WaitGroup

func main() {
	// 分配一个逻辑处理器给调度器使用
	runtime.GOMAXPROCS(1)

	wg.Add(2)

	fmt.Println("Start Goroutine")

	//声明一个匿名函数
	go incCounter(1)

	go incCounter(2)
	fmt.Println("waiting to finished")
	wg.Wait()
	fmt.Println("terminating program!, counter=", counter)
}

func incCounter(id int) {

	defer wg.Done()

	for count := 0; count < 2; count++ {
		atomic.AddInt64(&counter, 1)
		runtime.Gosched()
	}
}
