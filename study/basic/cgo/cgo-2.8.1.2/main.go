package main

//#include <stdio.h>
import "C"
import (
	"fmt"
	"unsafe"
)

type TestBuf struct {
	// *C.MyBuffer_T
	data *cgo_MyBuffer_T
}

func main() {
	testBuf := &TestBuf{}
	if testBuf.data != nil {
		fmt.Println(testBuf)
	}

	buf := NewMyBuffer(1024)
	defer buf.Delete()
	copy(buf.Data(), []byte("hello\x00"))
	C.puts((*C.char)(unsafe.Pointer(&(buf.Data()[0]))))
}
