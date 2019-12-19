package main

import (
	"fmt"
	"unsafe"
)

type lfnode struct {
	next    uint64
	pushcnt uintptr
}

type workbufhdr struct {
	node lfnode // must be first
	nobj int
}

const PtrSize = 4 << (^uintptr(0) >> 63)

func main() {
	ageMp := make(map[string]int)
	ageMp["qcrao"] = 18

	for name, age := range ageMp {
		fmt.Println(name, age)
	}
	fmt.Println(unsafe.Sizeof(int(1)))
	fmt.Println(unsafe.Sizeof(workbufhdr{}))
	fmt.Println(PtrSize)
	fmt.Println((2048 - unsafe.Sizeof(workbufhdr{})) / PtrSize)
}
