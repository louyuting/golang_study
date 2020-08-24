package main

import (
	"log"
)

func main() {
	func() {
		defer log.Println("defer sim lou.")
	}()
	{
		defer func() {
			log.Println("defer sim lou--2")
		}()
	}
	func() {
		defer func() {
			log.Println("defer sim lou--3s")
		}()
	}()
	log.Println("main.ending.")
}
