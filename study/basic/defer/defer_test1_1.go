package main

import (
	"fmt"
	"log"
	"strconv"
)

func main() {
	for i := 1; i <= 2; i++ {
		defer log.Println("defer sim lou, ", strconv.Itoa(i))
	}
	fmt.Println("ending")
}
