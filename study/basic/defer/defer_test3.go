package main

import (
	"log"
)

func main() {
	func() {
		defer log.Println("defer.qwertyuiop.")
	}()

	log.Println("main.qwertyuiop.")
}
