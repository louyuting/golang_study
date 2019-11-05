package main

import (
	"log"
)

func main() {
	func() {
		defer log.Println("defer sim lou.")
	}()

	log.Println("main.ending.")
}
