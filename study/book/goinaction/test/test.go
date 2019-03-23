package main

import (
	"fmt"
	"unsafe"
)

type TTT struct {
	name  int
	value int
}

func main() {
	fmt.Println(unsafe.Sizeof(TTT{}))
	fmt.Println(uintptr(-int(unsafe.Sizeof(TTT{})) & (8 - 1)))
}
