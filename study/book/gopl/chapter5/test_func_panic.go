package main

import "fmt"

func main() {
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
