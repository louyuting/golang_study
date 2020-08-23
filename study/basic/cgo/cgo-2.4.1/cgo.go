package main

/*
static int add(int a, int b) {
    return a+b;
}
*/
import "C"
import "fmt"

func main() {
	ret := C.add(1, 1)
	fmt.Println(ret)
}
