package main

import (
	"fmt"
	"sync"
	"sync/atomic"
	"time"
)

func main()  {
	
	i1 := uint64(0)
	wg := sync.WaitGroup{}
	wg.Add(100)
	start := time.Now()
	for i:=0; i<100; i++ {
		go func() {
			for j:=0; j<1000000; j++ {
				i1++
			}
			wg.Done()
		}()
	}
	wg.Wait()
	end := time.Now()
	fmt.Println( (end.UnixNano()-start.UnixNano()), ":", i1)
	
	
	i2 := uint64(0)
	wg2 := sync.WaitGroup{}
	wg2.Add(100)
	start2 := time.Now()
	for i:=0; i<100; i++ {
		go func() {
			for j:=0; j<1000000; j++ {
				atomic.AddUint64(&i2, 1)
			}
			wg2.Done()
		}()
	}
	wg2.Wait()
	end2 := time.Now()
	diff2 := uint64(end2.UnixNano()) -uint64(start2.UnixNano())
	fmt.Println( diff2, ":", i2)
	
	i3 := uint64(0)
	lock :=sync.Mutex{}
	wg3 := sync.WaitGroup{}
	wg3.Add(100)
	start3 := time.Now()
	for i:=0; i<100; i++ {
		go func() {
			for j:=0; j<1000000; j++ {
				lock.Lock()
				i3++
				lock.Unlock()
			}
			wg3.Done()
		}()
	}
	wg3.Wait()
	end3 := time.Now()
	diff3 := uint64(end3.UnixNano()) -uint64(start3.UnixNano())
	fmt.Println( diff3, ":", i3)
}
