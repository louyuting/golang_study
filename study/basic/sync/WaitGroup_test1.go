package main

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
			i := 0
			for {
				i++
				if i == 100 {
					break
				}
				in := rand.Intn(100)
				fmt.Println("func-", in)
				time.Sleep(200 * time.Millisecond)
			}
			wg.Done()
		}()
	}

	go func() {
		i := 0
		for {
			i++
			if i == 100 {
				break
			}
			fmt.Println("func2")
			time.Sleep(200 * time.Millisecond)
		}
		wg.Done()
	}()
	fmt.Println(runtime.GOMAXPROCS(0))
	i := 0
	for {
		i++
		if i == 100 {
			break
		}
		fmt.Println("main")
		time.Sleep(200 * time.Millisecond)
	}
	wg.Wait()
}
