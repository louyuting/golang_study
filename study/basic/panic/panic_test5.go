package main

import (
	"fmt"
	"log"
)

type SOmeMsg struct {
	a string
	b int
	c []string
}

func main() {
	var f bool
	fmt.Println(f)
	ret := test2()
	fmt.Println(ret)
}

func test2() *SOmeMsg {
	defer func() {
		if err := recover(); err != nil {
			log.Printf("recover: %v", err)
			return
		}
	}()
	panic("sim lou.")
}