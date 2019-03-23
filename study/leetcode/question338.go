package main

import (
	"container/list"
	"fmt"
)

func main() {
	fmt.Println(countBits(2))
}

func countBits(num int) []int {
	var count = 0
	result := make([]int, num+1)
	for i := 1; i <= num; i++ {
		item := i
		ll := list.New()
		for item > 0 {
			ll.PushFront(item % 2)
			item = item / 2
		}

		for e := ll.Front(); e != nil; e = e.Next() {
			if e.Value == 1 {
				count++
			}
		}
		result[i] = count
		count = 0
	}
	return result
}
