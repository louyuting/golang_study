package main

import "fmt"

func main() {
	s := "hello world"
	fmt.Println(len(s))
	fmt.Println(s[0:5])
	fmt.Println(s[0], " ", s[7])

	var a [3]int
	for i, v := range a {
		fmt.Printf("%d %d\n", i, v)
	}

}
