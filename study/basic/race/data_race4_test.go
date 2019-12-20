package main

import (
	"fmt"
	"sync"
	"testing"
)

var Lock sync.Mutex

func Test_normal4(t *testing.T) {
	Wait := &sync.WaitGroup{}
	var Counter = 0
	Wait.Add(2)

	for routine := 1; routine <= 2; routine++ {
		go Routine4(Wait, &Counter)
	}
	Wait.Wait()
	fmt.Printf("Final Counter: %d\n", Counter)
}

func Routine4(Wait *sync.WaitGroup, Counter *int) {
	for count := 0; count < 2; count++ {
		Lock.Lock()
		*Counter = *Counter + 1
		Lock.Unlock()
	}
	Wait.Done()
}
