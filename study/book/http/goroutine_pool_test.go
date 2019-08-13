package main

import (
	"sync"
	"testing"
)

func no_go_pool()  {
	//start := time.Now()
	wg := new(sync.WaitGroup)
	
	for i := 0; i < 10000; i++ {
		wg.Add(1)
		go func(n int) {
			defer wg.Done()
			//for i:=0; i<100000; i++ {
			//
			//}
		}(i)
	}
	wg.Wait()
	
	//end := time.Now()
	//fmt.Println(end.Sub(start))
}

func go_pool() {
	//start := time.Now()
	wg := new(sync.WaitGroup)
	data := make(chan int, 100)
	
	for i := 0; i < 10; i++ {
		wg.Add(1)
		
		go func(n int) {
			defer wg.Done()
			for _ = range data {
				//for i:=0; i<100000; i++ {
				//
				//}
			}
		}(i)
	}
	
	for i := 0; i < 10000; i++ {
		data <- i
	}
	
	close(data)
	wg.Wait()
	//end := time.Now()
	//fmt.Println(end.Sub(start))
}

type Worker struct {
	Func func()
}

func go_pool_with_func()  {
	var wg sync.WaitGroup
	channels := make(chan Worker, 10)
	
	for i:=0; i<5; i++ {
		wg.Add(1)
		go func() {
			defer wg.Done()
			for ch := range channels {
				ch.Func()
			}
		}()
	}
	
	for i := 0; i < 10000; i++ {
		j := i
		wk := Worker{
			Func: func() {
				j++
			},
		}
		channels <- wk
	}
	// close channel, and will wait for all msg finished
	close(channels)
	wg.Wait()
}


//func main()  {
//	fmt.Println("=================no_go_pool=====================")
//	no_go_pool()
//
//	fmt.Println("=================go_pool=====================")
//	go_pool()
//}


func BenchmarkGopool(b *testing.B) {
	for i := 0; i < b.N; i++ {
		go_pool()
	}
}

func BenchmarkNopool(b *testing.B) {
	for i := 0; i < b.N; i++ {
		no_go_pool()
	}
}

func BenchmarkGoPoolWithFunc(b *testing.B) {
	for i := 0; i < b.N; i++ {
		go_pool_with_func()
	}
}