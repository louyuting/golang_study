package main

import (
	"fmt"
	"sync"
	"testing"
	"time"
)

func Test_normal2(t *testing.T) {
	Wait := &sync.WaitGroup{}
	var Counter = 0
	Wait.Add(2)

	for routine := 1; routine <= 2; routine++ {
		go Routine2(Wait, &Counter)
	}
	Wait.Wait()
	fmt.Printf("Final Counter: %d\n", Counter)
}

func Routine2(Wait *sync.WaitGroup, Counter *int) {
	for count := 0; count < 2; count++ {
		value := *Counter
		time.Sleep(1 * time.Nanosecond)
		value++
		*Counter = value
	}
	Wait.Done()
}
