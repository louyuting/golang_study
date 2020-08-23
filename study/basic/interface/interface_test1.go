package main

import (
	"fmt"
	"unsafe"
)

type ity struct {
	ty unsafe.Pointer
}
type tflag uint8

// a copy of runtime.typeAlg
type typeAlg struct {
	// function for hashing objects of this type
	// (ptr to object, seed) -> hash
	hash func(unsafe.Pointer, uintptr) uintptr
	// function for comparing objects of this type
	// (ptr to object A, ptr to object B) -> ==?
	equal func(unsafe.Pointer, unsafe.Pointer) bool
}
type nameOff int32 // offset to a name
type typeOff int32 // offset to an *rtype
type rtype struct {
	size       uintptr
	ptrdata    uintptr  // number of bytes in the type that can contain pointers
	hash       uint32   // hash of type; avoids computation in hash tables
	tflag      tflag    // extra type information flags
	align      uint8    // alignment of variable with this type
	fieldAlign uint8    // alignment of struct field with this type
	kind       uint8    // enumeration for C
	alg        *typeAlg // algorithm table
	gcdata     *byte    // garbage collection data
	str        nameOff  // string form
	ptrToThis  typeOff  // type for pointer to this type, may be zero
}

type emptyInterface struct {
	typ  *rtype
	word unsafe.Pointer
}

func print(x interface{}) {
	e := (*emptyInterface)(unsafe.Pointer(&x))
	fmt.Println(e)
}

func main() {
	print(int64(111))
	//var inter interface{} = x
	//fmt.Println(inter)
	//
	//g := Gopher{"Go"}
	//var c coder = g
	//fmt.Println(c)
}

//
//type coder interface {
//	code()
//	debug()
//}
//
//type Gopher struct {
//	language string
//}
//
//func (p Gopher) code() {
//	fmt.Printf("I am coding %s language\n", p.language)
//}
//
//func (p Gopher) debug() {
//	fmt.Printf("I am debuging %s language\n", p.language)
//}
