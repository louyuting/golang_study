package sync

import (
	"fmt"
	"math/rand"
	"runtime"
	"sync"
	"time"
)

func main() {

	var wg sync.WaitGroup
	wg.Add(2)

	for i := 1; i < 10000; i++ {
		go func() {
			for {
				in := rand.Intn(100)
				fmt.Println("func-", in)
				time.Sleep(200 * time.Millisecond)
			}
			wg.Done()
		}()
	}

	go func() {
		for {
			fmt.Println("func2")
			time.Sleep(200 * time.Millisecond)
		}
		wg.Done()
	}()
	fmt.Println(runtime.GOMAXPROCS(0))
	for {
		fmt.Println("main")
		time.Sleep(200 * time.Millisecond)
	}
	wg.Wait()
}
