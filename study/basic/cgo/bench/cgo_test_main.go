package main

/*
//#include <stdio.h>
//#include <stdlib.h>
void printString() {}
*/
import "C"
import (
	"fmt"
	"time"
)

func main() {
	s := time.Now().UnixNano()
	for i := 0; i < 10000000; i++ {
		C.printString()
	}
	e := time.Now().UnixNano()
	fmt.Println("cgo", e-s, "ns")

	s = time.Now().UnixNano()
	for i := 0; i < 10000000; i++ {
		empty()
	}
	e = time.Now().UnixNano()
	fmt.Println(e-s, "ns")
}

func empty() {

}
