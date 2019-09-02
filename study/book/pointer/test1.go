package main

import (
	"fmt"
	"unsafe"
)

type Num struct {
	i string
	j int64
}
type Programmer struct {
	name     string
	age      int
	language string
}

func main() {
	fmt.Println("----------------1-----------------------")
	u64 := 13.333
	s := uint64(u64)
	fmt.Println(s)

	fmt.Println("----------------2-----------------------")
	num := uint64(11111)
	numPtr := &num
	fmt.Println(numPtr)
	flnum := (*float32)(unsafe.Pointer(numPtr))
	fmt.Println(flnum)

	fmt.Println("----------------3-----------------------")

	n := Num{i: "EDDYCJY", j: 1}
	nPointer := unsafe.Pointer(&n)
	// 这种在成员不同包不可见的时候非常管用
	niPointer := (*string)(unsafe.Pointer(nPointer))
	*niPointer = "呵呵"

	njPointer := (*int64)(unsafe.Pointer(uintptr(nPointer) + unsafe.Offsetof(n.j)))
	*njPointer = 2
	fmt.Printf("n.i: %s, n.j: %d\n", n.i, n.j)

	fmt.Println("----------------slice len-----------------------")
	sli := make([]int, 9, 20)
	slen := *(*int)(unsafe.Pointer(uintptr(unsafe.Pointer(&sli)) + uintptr(8)))
	fmt.Println(slen, len(sli)) // 9 9
	var Cap = *(*int)(unsafe.Pointer(uintptr(unsafe.Pointer(&sli)) + uintptr(16)))
	fmt.Println(Cap, cap(sli)) // 20 20

	fmt.Println("----------------map len-----------------------")
	mp := make(map[string]int)
	mp["qcrao"] = 100
	mp["stefno"] = 18
	lenMap := **(**int)(unsafe.Pointer(&mp))
	fmt.Println(lenMap, len(mp)) // 2 2

	fmt.Println("----------------修改私有成员-----------------------")
	p := Programmer{"yuting", 18, "go"}
	fmt.Println(p)

	lang := (*string)(unsafe.Pointer(uintptr(unsafe.Pointer(&p)) + unsafe.Sizeof(int(0)) + unsafe.Sizeof(string(""))))
	*lang = "Golang"

	fmt.Println(p)
}
