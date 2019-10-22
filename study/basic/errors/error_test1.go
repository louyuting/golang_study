package main

import (
	"errors"
	"fmt"
	errors2 "github.com/pkg/errors"
)

func main() {
	fmt.Println("------------1--------------")
	err1 := errors.New("原始错误")
	err2 := fmt.Errorf("wrapper err1, %w", err1)
	fmt.Println(err1)
	fmt.Println(err2)

	fmt.Println("------------2--------------")
	err3 := errors2.New("errors2")
	err4 := errors2.WithStack(err3)
	fmt.Println(err4)
}
