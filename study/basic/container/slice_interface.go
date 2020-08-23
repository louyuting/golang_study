package main

import (
	"fmt"
	"reflect"
	"unsafe"
)

func main() {
	s := make([]string, 0, 100)
	fmt.Println("size of slice:", unsafe.Sizeof(s))

	sliceHeader := (*reflect.SliceHeader)(unsafe.Pointer(&s))
	fmt.Printf("0x%x\n", sliceHeader.Data)
	fmt.Printf("%p\n", sliceHeader)

	fmt.Printf("s address：%p\n", s)
	fmt.Printf("s address：%p\n", &s)
	handleRules(s)

	s2 := make([]string, 10, 100)
	fmt.Printf("%p\n", &s2)
	s3 := append(s2, "ximu")
	fmt.Printf("%p\n", &s2)
	fmt.Printf("%p\n", &s3)
	fmt.Printf("%p\n", s3)
}

func handleRules(ss []string) {
	fmt.Printf("s address：%p\n", &ss)
}
