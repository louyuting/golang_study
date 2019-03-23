package main

import (
	"errors"
	"fmt"
	"io"
)

func main() {

	err := errors.New("test")
	flag, ok := err.(io.Reader)
	if ok {
		fmt.Println("success")
	} else {
		fmt.Println("fail")
	}
	fmt.Println(flag)

}
