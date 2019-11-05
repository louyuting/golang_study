package main

import "fmt"

func PrintStr() {
	str := new(string)
	*str = "hello world"
}

func main() {
	PrintStr()
}
