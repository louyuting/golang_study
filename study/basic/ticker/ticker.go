package main

import (
	"fmt"
	"runtime"
	"time"
)

func init() {
	runtime.GOMAXPROCS(runtime.NumCPU())
}

func main() {
	ch := make(chan int, 1024)
	go func(ch chan int) {
		for {
			val := <-ch
			fmt.Printf("val:%d\n", val)
		}
	}(ch)

	tick := time.NewTicker(1 * time.Second)
	for i := 0; i < 41; i++ {
		select {
		case <-tick.C:
			fmt.Printf("%d: case <-tick.C\n", i)
		case ch <- i:
		}

		time.Sleep(200 * time.Millisecond)
	}
	close(ch)
	tick.Stop()
}
