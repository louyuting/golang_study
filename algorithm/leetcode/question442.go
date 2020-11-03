package main

import (
	"container/list"
	"fmt"
	"sort"
)

func main() {
	fmt.Println(findDuplicates([]int{4, 3, 2, 7, 8, 2, 3, 1}))
	var arr = []int{1, 2, 22, 1, 44, 21, 11, 3, 4, 5}
	sort.Ints(arr)
	fmt.Println(arr)

	//fmt.Println(cap(arr))
	//a1 := arr[0:3]
	//a2 := arr[2:]
	//fmt.Println(a1)
	//fmt.Println(a2)
	//arr[2]=100
	//fmt.Println(a1)
	//fmt.Println(a2)
}

func findDuplicates(nums []int) []int {
	result := list.New()
	maps := make(map[int]int)

	for i := 0; i < len(nums); i++ {
		elem := nums[i]

		val, ok := maps[elem]
		if ok {
			maps[elem] = val + 1
		} else {
			maps[elem] = 1
		}
	}
	for key, val := range maps {
		if val != 1 {
			result.PushFront(key)
		}
	}
	var res []int
	for e := result.Front(); e != nil; e = e.Next() {
		el := e.Value.(int)
		res = append(res, el)
	}
	return res
}
