package main

import (
	"fmt"
	"math"
	"time"
	"unsafe"
)

func main() {
	fmt.Println(unsafe.Sizeof(int(0)))
	fmt.Println(math.MaxUint16)
	fmt.Println(math.MaxUint32)
	fmt.Println(math.MaxInt16)
	fmt.Println(math.MaxInt32)
	fmt.Println(unsafe.Sizeof(uint32(111)))

	fmt.Println(time.Now().UnixNano())
	
	fmt.Println("Ptr size:", unsafe.Sizeof(new(int)))
	//	1576131855795
}
