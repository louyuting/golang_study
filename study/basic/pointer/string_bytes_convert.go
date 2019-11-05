package main

import (
	"fmt"
	"reflect"
	"unsafe"
)

func main() {
	str := string("ads")
	fmt.Println("str address:", &str)
	bs := string2bytes(&str)
	fmt.Printf("bytes address %p \n", bs)
	sb := make([]byte, 0, 10)
	sb = append(sb, 'a', 'b', 'c', 'd', 'e', 'f')
	fmt.Println(sb)
	fmt.Printf("bytes sb address %p \n", sb)
}
