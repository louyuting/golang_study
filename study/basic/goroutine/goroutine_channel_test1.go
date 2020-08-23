package main

import (
	"fmt"
	"time"
)

func main() {
	fmt.Println("start")
	ch2 := make(chan int, 20)

	go func(in chan<- int) {
		time.Sleep(time.Second * 1000)
		for i := 0; i < 10; i++ {
			in <- i
		}
	}(ch2)

	select {
	case x := <-ch2:
		fmt.Println("x=", x)
	}

}
