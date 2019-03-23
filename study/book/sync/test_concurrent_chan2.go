package sync

import (
	"fmt"
	"math/rand"
	"sync"
	"time"
)

const (
	numberGoroutines = 4
	taskLoad         = 10
)

var wg3 sync.WaitGroup

func init() {
	rand.Seed(time.Now().Unix())
}

func main() {
	tasks := make(chan string, taskLoad)

	wg3.Add(numberGoroutines)

	for gr := 1; gr <= numberGoroutines; gr++ {
		go worker(tasks, gr)
	}

	//增加一组要完成的工作
	for post := 1; post <= taskLoad; post++ {
		tasks <- fmt.Sprintf("Task: %d", post)
	}

	close(tasks)

	wg3.Wait()
}

func worker(tasks chan string, worker int) {

	defer wg3.Done()

	for {
		//等待球被击过来
		task, ok := <-tasks
		if !ok {
			//如果通道被关闭，就赢了
			fmt.Printf("worker %d, shutting down\n", worker)
			return
		}

		fmt.Printf("worker %d, started %s\n", worker, task)

		//随机等一段时间来模拟工作
		sleep := rand.Int63n(100)
		time.Sleep(time.Duration(sleep) * time.Millisecond)

		fmt.Printf("worker: %d completed %s \n", worker, task)
	}
}
