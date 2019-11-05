package main

import (
	"errors"
	"fmt"
	errors2 "github.com/pkg/errors"
)

func printerr() {
	err := errors2.New("open file fail")
	if err != nil {
		fmt.Printf("err: %+v", err)
	}
}

func main() {
	fmt.Println("------------1--------------")
	err1 := errors.New("原始错误")
	err2 := fmt.Errorf("wrap err1：%w", err1)
	fmt.Printf("%+v\n", err1)
	fmt.Printf("%+v\n", err2)

	fmt.Println("------------2--------------")
	err3 := errors2.New("errors2")
	err4 := errors2.WithStack(err3)
	fmt.Printf("%+v", err4)

	fmt.Println("------------3--------------")
	printerr()

}
