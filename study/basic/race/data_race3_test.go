package main

import (
	"fmt"
	"sync"
	"testing"
)

func Test_normal3(t *testing.T) {
	Wait := &sync.WaitGroup{}
	var Counter = 0
	Wait.Add(2)

	for routine := 1; routine <= 2; routine++ {
		go Routine3(Wait, &Counter)
	}
	Wait.Wait()
	fmt.Printf("Final Counter: %d\n", Counter)
}

func Routine3(Wait *sync.WaitGroup, Counter *int) {
	for count := 0; count < 2; count++ {
		*Counter = *Counter + 1
	}
	Wait.Done()
}
