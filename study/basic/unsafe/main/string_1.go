package main

import (
	"fmt"
	"reflect"
	"unsafe"
)

func bytesToString(src []byte) string {
	strPtr := (*string)(unsafe.Pointer(&src))
	strHeader := (*reflect.StringHeader)(unsafe.Pointer(strPtr))
	fmt.Printf("0x%x\n", strHeader.Data)
	return *strPtr
}

func passStr(str string) {
	srcHeader := (*reflect.SliceHeader)(unsafe.Pointer(&str))
	fmt.Printf("%p\n", &str)
	fmt.Printf("0x%x\n", srcHeader.Data)
}

type T struct {
	a int
	b int
}

func newT() T {
	t := T{
		a: 1,
		b: 1,
	}
	fmt.Printf("t addr: %p\n", &t)
	return t
}
func main() {
	src := []byte{'1', '2', '3'}
	srcHeader := (*reflect.SliceHeader)(unsafe.Pointer(&src))
	fmt.Printf("0x%x\n", srcHeader.Data)
	fmt.Printf("%p\n", src)

	ret := bytesToString(src)
	strHeader := (*reflect.StringHeader)(unsafe.Pointer(&ret))
	fmt.Printf("0x%x\n", strHeader.Data)

	t := newT()
	fmt.Printf("t addr: %p\n", &t)

	str := "louyuting"
	strHeader2 := (*reflect.StringHeader)(unsafe.Pointer(&str))
	fmt.Printf("0x%x\n", strHeader2.Data)
	fmt.Printf("%p\n", &str)
	passStr(str)

}
