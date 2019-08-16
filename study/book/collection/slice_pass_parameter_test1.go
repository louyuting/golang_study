package main

import (
	"fmt"
	"strconv"
	"unsafe"
)

func testPassParamsWithoutGrowTest1(sl []string) []string{
	fmt.Printf("inner: %v, %p\n",sl, sl)
	for i:=0; i<5; i++ {
		sl[i] = strconv.Itoa(i*2)
	}
	for i:=5; i<10; i++ {
		sl = append(sl, strconv.Itoa(i*2))
	}
	fmt.Println("sl.len=", len(sl))
	fmt.Println("sl.cap=", cap(sl))
	fmt.Printf("inner: %v, %p\n",sl, sl)
	return sl
}

func testPassParamsWithGrowTest1(sl []string) []string{
	fmt.Printf("inner: %v, %p\n",sl, sl)
	for i:=0; i<5; i++ {
		sl[i] = strconv.Itoa(i*2)
	}
	for i:=5; i<11; i++ {
		sl = append(sl, strconv.Itoa(i*2))
	}
	fmt.Println("sl.len=", len(sl))
	fmt.Println("sl.cap=", cap(sl))
	fmt.Printf("inner: %v, %p\n",sl, sl)
	return sl
}

func testModifyElem(s []int) {
	s[0] = 1
	fmt.Printf("s inter address is %p \n", s)
	fmt.Println("s=", s)
	s = append(s, 11)
	fmt.Printf("s inter address（after append） is %p \n", s)
	fmt.Println("s=（after append）", s)
}

func testSlicePtr(sp *[]int) {
	fmt.Printf("sp address is %p \n", *sp)
	fmt.Println("sp=", *sp)
	*sp = append(*sp, 10)
	fmt.Printf("post sp address is %p \n", *sp)
	fmt.Println("post sp=", *sp)
}

func testSliceReturn(sp []int) []int {
	fmt.Printf("sp address is %p \n", sp)
	fmt.Println("sp=", sp)
	sp = append(sp, 10)
	fmt.Printf("post sp address is %p \n", sp)
	fmt.Println("post sp=", sp)
	return sp
}

func main()  {
	fmt.Println("------------------------ slice0 -------------------------")
	sa := make([]int, 10, 20)
	fmt.Printf("sa address is %p \n", sa)
	fmt.Println("sa=", sa)
	testModifyElem(sa)
	fmt.Printf("post sa address is %p \n", sa)
	fmt.Println("post sa=", sa)
	
	
	fmt.Println("------------------------slice1 -------------------------")
	slice1 := make([]string, 5, 10)
	fmt.Printf("slice1 outer content and pointer: %v, %p\n", slice1, slice1)
	for i:=0; i<5; i++ {
		slice1[i] = strconv.Itoa(i)
	}
	fmt.Println("slice1.len=", len(slice1))
	fmt.Println("slice1.cap=", cap(slice1))
	testPassParamsWithoutGrowTest1(slice1)
	fmt.Println("after function slice1.len=", len(slice1))
	fmt.Println("after function slice1.cap=", cap(slice1))
	fmt.Printf("outer: %v, %p\n", slice1, slice1)
	
	slice1 = testPassParamsWithoutGrowTest1(slice1)
	fmt.Println("after2 function slice1.len=", len(slice1))
	fmt.Println("after2 function slice1.cap=", cap(slice1))
	fmt.Printf("outer2: %v, %p\n", slice1, slice1)
	
	fmt.Println("------------------------ slice2 -------------------------")
	slice2 := make([]string, 5, 10)
	fmt.Printf("slice2 outer content and pointer: %v, %p\n", slice2, slice2)
	for i:=0; i<5; i++ {
		slice2[i] = strconv.Itoa(i)
	}
	fmt.Println("slice2.len=", len(slice2))
	fmt.Println("slice2.cap=", cap(slice2))
	testPassParamsWithGrowTest1(slice2)
	fmt.Println("after function slice2.len=", len(slice2))
	fmt.Println("after function slice2.cap=", cap(slice2))
	fmt.Printf("outer: %v, %p\n", slice2, slice2)
	
	slice2 = testPassParamsWithGrowTest1(slice2)
	fmt.Println("after2 function slice2.len=", len(slice2))
	fmt.Println("after2 function slice2.cap=", cap(slice2))
	fmt.Printf("outer2: %v, %p\n", slice2, slice2)
	
	fmt.Println("------------------------ slice3 -------------------------")
	slice3 := make([]string, 5, 10)
	fmt.Printf("slice3 outer content and pointer: %v, %p\n", slice3, slice3)
	for i:=0; i<5; i++ {
		slice3[i] = strconv.Itoa(i)
	}
	
	var slice4 []string
	slice4 = append(slice3, "app1","app1","app1","app1","app1","app1","app1","app1","app1","app-10")
	fmt.Printf("slice3 address: %p \n", slice3)
	for idx, value := range slice3 {
		fmt.Println("idx=", idx, ", value=", value)
	}
	fmt.Printf("slice4 address: %p \n", slice4)
	for idx, value := range slice4 {
		fmt.Println("idx=", idx, ", value=", value)
	}
	
	fmt.Println("------------------------ test -------------------------")
	a := 0
	fmt.Println("address a=", &a)
	ap := unsafe.Pointer(&a)
	fmt.Println("address a=", &ap)
	
	aup := uintptr(ap)// &a的值
	fmt.Println("address aup=", aup)
	
	fmt.Println("------------------------ slice5 -------------------------")
	slice5 := make([]string, 5, 10)
	fmt.Printf("slice5 outer content and pointer: %v, %p\n", slice5, slice5)
	fmt.Printf("slice5 outer content and pointer: %v, %p\n", slice5, &slice5)
	
	sss := make([]int, 20, 40)
	sss_c := sss[10:]
	fmt.Println("len=", len(sss_c), "cap=", cap(sss_c))
	
	fmt.Println("------------------------ slice6 -------------------------")
	slice6 := make([]int, 10, 10)
	fmt.Printf("slice6 address is %p \n", slice6)
	fmt.Println("slice6=", slice6)
	testSlicePtr(&slice6)
	fmt.Printf("post slice6 address is %p \n", slice6)
	fmt.Println("post slice6=", slice6)
	
	fmt.Println("------------------------ slice7 -------------------------")
	slice7 := make([]int, 10, 10)
	fmt.Printf("slice7 address is %p \n", slice7)
	fmt.Println("slice7=", slice7)
	slice7 = testSliceReturn(slice7)
	fmt.Printf("post slice7 address is %p \n", slice7)
	fmt.Println("post slice7=", slice7)
	
	fmt.Println("------------------------ slice8 -------------------------")
	slice8 := make([]int, 10, 10)
	fmt.Printf("slice8 address is %p \n", slice8)
	fmt.Println("slice8=", slice8)
	slice8_sub := slice8[2:4]
	fmt.Printf("slice8_sub address is %p \n", slice8_sub)
	fmt.Println("slice8_sub=", slice8_sub)
	fmt.Println("len=", len(slice8_sub), "cap=", cap(slice8_sub))
	slice8_sub = append(slice8_sub, 111)
	fmt.Printf("post slice8 address is %p \n", slice8)
	fmt.Println("post slice8=", slice8)
	fmt.Printf("post slice8_sub address is %p \n", slice8_sub)
	fmt.Println("post slice8_sub=", slice8_sub)
	fmt.Println("post len=", len(slice8_sub), "cap=", cap(slice8_sub))
	for idx, v := range slice8_sub {
		fmt.Println("idx=", idx, "value=", v)
	}
	
	fmt.Println("------------------------ slice9 -------------------------")
	slice9 := []int{10, 20, 30, 40}
	newslice9 := append(slice9, 50)
	fmt.Printf("Before slice = %v, Pointer = %p, len = %d, cap = %d\n", slice9, slice9, len(slice9), cap(slice9))
	fmt.Printf("Before newSlice = %v, Pointer = %p, len = %d, cap = %d\n", newslice9, newslice9, len(newslice9), cap(newslice9))
	newslice9[1] += 10
	fmt.Printf("After slice = %v, Pointer = %p, len = %d, cap = %d\n", slice9, slice9, len(slice9), cap(slice9))
	fmt.Printf("After newSlice = %v, Pointer = %p, len = %d, cap = %d\n", newslice9, newslice9, len(newslice9), cap(newslice9))
	
	fmt.Println("------------------------ slice10 -------------------------")
	array := [4]int{10, 20, 30, 40}
	slice := array[0:2]
	newSlice := append(slice, 50)
	fmt.Printf("Before slice = %v, Pointer = %p, len = %d, cap = %d\n", slice, slice, len(slice), cap(slice))
	fmt.Printf("Before newSlice = %v, Pointer = %p, len = %d, cap = %d\n", newSlice, newSlice, len(newSlice), cap(newSlice))
	newSlice[1] += 10
	fmt.Printf("After slice = %v, Pointer = %p, len = %d, cap = %d\n", slice, slice, len(slice), cap(slice))
	fmt.Printf("After newSlice = %v, Pointer = %p, len = %d, cap = %d\n", newSlice, newSlice, len(newSlice), cap(newSlice))
	fmt.Printf("After array = %v\n", array)
	
	fmt.Println("------------------------ slice11 -------------------------")
	test11()
	fmt.Println("------------------------ slice12 -------------------------")
	test12()
	
	var t int = 0
	fmt.Printf("addrsss: %p \n", t)
	fmt.Println("addrsss: ", &t)
	
}


func test11() {
	array := []int{10, 20, 30, 40}
	slice := make([]int, 6)
	n := copy(slice, array)
	fmt.Println(n,slice)
}

func test12() {
	slice := []int{10, 20, 30, 40}
	for index, value := range slice {
		fmt.Printf("value = %d , value-addr = %x , slice-addr = %x\n", value, &value, &slice[index])
	}
}