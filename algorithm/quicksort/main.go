package main

import "fmt"

func main() {
	a := []int{1, 8, 3, 6, 7, 2, 10, 21}
	quickSort(a, 0, len(a)-1)

	fmt.Println(a)
}

func quickSort(array []int, l, h int) {
	if l >= h {
		return
	}
	idx := partition(array, l, h)
	quickSort(array, l, idx-1)
	quickSort(array, idx+1, h)
}

func partition(array []int, l, h int) int {
	//选择基点
	key := array[l]
	for l < h {
		//从后往前扫描,直到找到array[h]小于基准
		for array[h] >= key && l < h {
			h--
		}
		//现在array[h]小于基准了,将array[h]赋值给array[l]
		array[l] = array[h]
		// 从前往后扫描,直到找到array[l]大于基准
		for array[l] <= key && l < h {
			l++
		}
		array[h] = array[l]
	}
	// 最后用基准覆盖
	array[h] = key
	return h
}
