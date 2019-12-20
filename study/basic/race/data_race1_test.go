package main

import (
	"fmt"
	"sync"
	"testing"
)

func Test_normal(t *testing.T) {
	Wait := &sync.WaitGroup{}
	var Counter = 0
	Wait.Add(2)

	for routine := 1; routine <= 2; routine++ {
		go Routine(Wait, &Counter)
	}
	Wait.Wait()
	fmt.Printf("Final Counter: %d\n", Counter)
}

func Routine(Wait *sync.WaitGroup, Counter *int) {
	for count := 0; count < 2; count++ {
		value := *Counter
		value++
		*Counter = value
	}
	Wait.Done()
}
