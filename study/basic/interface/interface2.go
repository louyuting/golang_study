package main

import (
	"fmt"
	"reflect"
	"unsafe"
)

type iface struct {
	itab, data uintptr
}

func main() {
	var a interface{} = nil

	bi := new(int)
	*bi = 10
	var b interface{} = bi

	x := 5
	var c interface{} = (*int)(&x)

	ia := *(*iface)(unsafe.Pointer(&a))
	ib := *(*iface)(unsafe.Pointer(&b))
	ic := *(*iface)(unsafe.Pointer(&c))

	fmt.Println(ia, ib, ic)
	fmt.Println(reflect.TypeOf(b) == reflect.TypeOf(c))
}
