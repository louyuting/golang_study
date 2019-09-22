package main

import (
	"github.com/pkg/errors"
	"log"
	"os"
	"os/signal"
	"time"
)

// Runner在给定超时时间内执行一组任务
// 并且在操作系统发送中断信号时结束这些任务
type Runner struct {
	// interrupt channel 报告从操作系统发送的信号
	interrupt chan os.Signal
	// complete channel report task completed
	complete chan error
	// timeout 报告处理任务已经超时
	timeout <-chan time.Time
	// tasks持有一组按照索引依次执行的函数任务
	tasks []func(int)
}

var ErrTimeout = errors.New("Received timeout")

var ErrInterrupt = errors.New("received interrupt")

// 创建一个新的Runner
func New(d time.Duration) *Runner {
	return &Runner{
		interrupt: make(chan os.Signal, 1),
		complete:  make(chan error),
		timeout:   time.After(d),
	}
}

/**
添加一个新的task到runner的任务列表
*/
func (r *Runner) Add(taskz ...func(int)) {
	r.tasks = append(r.tasks, taskz...)
}

// 开始启动任务
func (r *Runner) Start() error {
	// 我们希望接收所有的中断信号
	signal.Notify(r.interrupt, os.Interrupt)

	go func() {
		r.complete <- r.run()
	}()

	select {
	// 当任务处理完成时发出信号
	case err := <-r.complete:
		return err
	// 当任务处理程序超时时发出的信号
	case <-r.timeout:
		return ErrTimeout
	}
}

// run执行每一个已注册的任务
func (r *Runner) run() error {

	for id, task := range r.tasks {
		// 检测操作系统的中断信号
		if r.gotInterrupt() {
			return ErrInterrupt
		}

		// 执行已经注册的任务
		task(id)
	}
	return nil
}

// 验证是否接收到了中断信号
func (r *Runner) gotInterrupt() bool {

	select {
	// 当中断事件被触发时发出的信号
	case <-r.interrupt:
		//停止接收后续任何信号
		signal.Stop(r.interrupt)
		return true

	// 继续正常运行
	default:
		return false

	}
}

const timeout = 3 * time.Second

func main() {

	log.Println("Starting work")

	r := New(timeout)

	r.Add(createTask(), createTask(), createTask())

	if err := r.Start(); err != nil {
		switch err {
		case ErrTimeout:
			log.Println("Terminating due to timeout")
			os.Exit(1)
		case ErrInterrupt:
			log.Println("Terminating due to interrupt")
			os.Exit(2)
		}
	}

	log.Println("Process ended")
}

func createTask() func(int) {
	return func(id int) {
		log.Printf("Processor - task #%d.", id)
		time.Sleep(time.Duration(id) * time.Second)
	}
}
