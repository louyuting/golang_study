package main

import "log"

func main() {
	if err := recover(); err != nil {
		log.Printf("recover: %v", err)
	}
	panic("sim lou.")
}
