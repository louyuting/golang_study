package main

import (
	"fmt"
	"sync/atomic"
	"unsafe"
)

type Test struct {
	name string
	id   int64
}

func main() {
	iface := atomic.Value{}
	t := &Test{
		name: "sim1",
		id:   1,
	}
	addr := uintptr(unsafe.Pointer(t))
	fmt.Println(addr)
	iface.Store(t)
	got := iface.Load()
	getT, _ := got.(*Test)
	fmt.Println(uintptr(unsafe.Pointer(getT)))
	fmt.Printf("%+v", getT)

}
