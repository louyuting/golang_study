package main

import (
	"fmt"
	"unsafe"
)

func main1() {
	fmt.Println(unsafe.Sizeof(int(32)))
}
