package main

import (
	"log"
)

func main() {
	defer func() {
		if e := recover(); e != nil {
			log.Println("qwertyuiop.")
		}
	}()
	panic("end.")
}
