package main

import (
	"fmt"
	"time"
)

func main() {
	ch := make(chan string, 2)
	go func() {
		fmt.Println("sleep1")
		time.Sleep(5 * time.Second)
		fmt.Println("sleep2")
	}()

	fmt.Println("1")
	ch <- "h1"
	fmt.Println("2")
	ch <- "w2"

	fmt.Println("3")

	select {
	case ch <- "c3":
		fmt.Println("ok")
	default:
		fmt.Println("channel is full !")
	}
	fmt.Println("...")
	msg1 := <-ch
	fmt.Println(msg1)
}
