package main

import (
	"fmt"
	"strings"
)

func main() {
	var sli []string = nil
	fmt.Println(len(sli))
}

func IsBlank(s string) bool {
	return strings.TrimSpace(s) == ""
}
