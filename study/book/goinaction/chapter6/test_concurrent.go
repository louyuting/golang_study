package main

import (
	"fmt"
	"runtime"
	"sync"
)

func main() {
	// 分配一个逻辑处理器给调度器使用
	runtime.GOMAXPROCS(1)

	// 计数加2表示需要等待两个goroutine完成
	var wg sync.WaitGroup
	wg.Add(2)

	fmt.Println("Start Goroutine")

	//声明一个匿名函数
	go func() {
		// 程序退出时，通知main函数工作完成
		defer wg.Done()

		for count := 0; count < 3000; count++ {
			for char := 'a'; char < 'a'+26; char++ {
				fmt.Printf("%c ", char)
			}
			fmt.Println("")
		}
	}()

	//声明一个匿名函数
	go func() {
		// 程序退出时，通知main函数工作完成
		defer wg.Done()

		for count := 0; count < 3000; count++ {
			for char := 'A'; char < 'A'+26; char++ {
				fmt.Printf("%c ", char)
			}
			fmt.Println("")
		}
	}()

	fmt.Println("waiting to finished")
	wg.Wait()
	fmt.Println("terminating program!")
}
