package io

import (
	"fmt"
	"os"
)

func main() {
	var s, sep string

	s, sep = "", ""
	for _, arg := range os.Args {
		s += sep + arg
		sep = " "
	}
	fmt.Println(s)
}
