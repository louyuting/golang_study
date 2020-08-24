package main

import (
	"fmt"
	"strings"
)

func main() {
	var sli []string = nil
	fmt.Println(len(sli))

	fmt.Println("output:", string(get()))
}

func get() []byte {
	return nil
}

func IsBlank(s string) bool {
	return strings.TrimSpace(s) == ""
}
