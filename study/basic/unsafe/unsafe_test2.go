package main

import (
	"fmt"
	"unsafe"
)

//func add(x, y int) int {
//	z := x + y
//	return z
//}

type nn struct {
	name int
	val  string
}

func main2() {
	fmt.Println(1 << 7)
	test := new(nn)
	fmt.Println(test.name)
	fmt.Println(test.val)
	fmt.Println("hello2")
	var test2 nn
	fmt.Println(test2.name)
	fmt.Println(test2.val)

	fmt.Println("=========")
	fmt.Println(unsafe.Sizeof(test2.name))
	fmt.Println(unsafe.Sizeof(test2.val))
	fmt.Println(unsafe.Sizeof(nn{}))

	fmt.Println(4 << (^uintptr(0) >> 63))
}
