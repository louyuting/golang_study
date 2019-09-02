package main

import "fmt"

func main() {
	defer func() {
		fmt.Println("d")
		if err := recover(); err != nil {
			fmt.Println(err) // 这里的err其实就是panic传入的内容
		}
		fmt.Println("e")
	}()

	str := "LOU"
	switch str {
	case "YU":
		fmt.Println("YU")
	case "TING":
		fmt.Println("YU")
	case "LOUYU":
		fmt.Println("YU")
	case "TY":
		fmt.Println("YU")
	default:
		panic("Invalid str")
	}
}
