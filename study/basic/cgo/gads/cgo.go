package main

// #include <stdio.h>
// #include <stdlib.h>
// #include "foo.h"
import "C"
import (
	"fmt"
	"unsafe"
)

func main() {
	cs := C.CString("hello,ytlou")
	result := C.foo(cs)
	str := C.GoString(result)
	C.free(unsafe.Pointer(cs))
	C.free(unsafe.Pointer(result))
	fmt.Println(str)
}
