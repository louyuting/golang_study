package main

import "log"

func main() {
	defer func() {
		defer func() {
			if err2 := recover(); err2 != nil {
				log.Println("panic level2 recover")
			}
			
		}()
		if err := recover(); err != nil {
			log.Println("panic level1 recover")
			panic("2")
		}
	}()

	panic("sim lou.")
}
