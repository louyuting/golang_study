package main

import (
	"log"
	"strconv"
)

func main() {
	for i := 0; i < 6; i++ {
		defer log.Println("qwertyuiop" + strconv.Itoa(i) + ".")
	}

	log.Println("ending.")
}
