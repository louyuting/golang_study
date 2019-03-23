package main

import (
	"fmt"
	"time"
)

func main() {
	natural := make(chan int)
	squares := make(chan int)

	go func() {
		for x := 0; x < 100; x++ {
			natural <- x

		}
		close(natural)
	}()

	go func() {
		for x := range natural {
			squares <- x * x
		}
		close(squares)

	}()

	for x := range squares {
		fmt.Println(x)
		time.Sleep(100 * time.Millisecond)
	}
}
