package main

import (
	"fmt"
	"log"
)

func main() {
	defer log.Println("ABCDEFGHIJK")

	fmt.Println("ending")
}
