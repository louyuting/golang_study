package main

import (
	"fmt"
	"sync/atomic"
)

func main() {
	panic("manual panic1")
	defer func() {
		if err := recover(); err != nil {
			fmt.Println("recover:", err) // 这里的err其实就是panic传入的内容
		}
	}()
	panic("manual panic2")
	panic("manual panic3")

	atomic.AddInt64()
}
