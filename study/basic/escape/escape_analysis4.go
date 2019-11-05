package main

import "fmt"

func main() {
	str := new(string)
	*str = "hello world"
	fmt.Println(*str)
}
