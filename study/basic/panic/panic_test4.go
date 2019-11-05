package main

import (
	"log"
	"time"
)

func main() {
	go func() {
		defer func() {
			if err := recover(); err != nil {
				log.Printf("recover: %v", err)
			}
		}()
		panic("aim lou 2.")
	}()
	time.Sleep(1 * time.Second)
}
