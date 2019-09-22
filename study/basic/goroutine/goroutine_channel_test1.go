package goroutine

import (
	"fmt"
	"time"
)

func main() {
	fmt.Println("start")
	ch2 := make(chan int, 20)

	go func(in chan<- int) {
		for i := 0; i < 10; i++ {
			in <- i
		}
	}(ch2)
	for {
		select {
		case x := <-ch2:
			fmt.Println("x=", x)
		default:
			fmt.Println("default")
		}
		time.Sleep(1 * time.Second)
	}

}
