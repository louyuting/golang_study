package main

import (
	"log"
	"strconv"
)

func main() {
	for i := 1; i <= 6; i++ {
		defer log.Println("defer sim lou-" + strconv.Itoa(i) + ".")
	}
	log.Println("ending.")
}
