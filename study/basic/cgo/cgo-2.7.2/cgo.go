package main

/*
#include <stdio.h>
#include <stdlib.h>
void printString(const char* s) {
    //printf("%s", s);
}
*/
import "C"
import (
	"fmt"
	"time"
	"unsafe"
)

func printString(s string) {
	var cs *C.char = C.CString(s)
	//C.printString(cs)
	C.free(unsafe.Pointer(cs))
}

func main() {
	start := time.Now()
	for i := 0; i < 100; i++ {
		s := "hello"
		printString(s)
	}
	fmt.Println(time.Now().Sub(start).Nanoseconds())

	start = time.Now()
	for i := 0; i < 1000; i++ {
		s := "hello"
		printString(s)
	}
	fmt.Println(time.Now().Sub(start).Nanoseconds())

	start = time.Now()
	for i := 0; i < 10000; i++ {
		s := "hello"
		printString(s)
	}
	fmt.Println(time.Now().Sub(start).Nanoseconds())

}
