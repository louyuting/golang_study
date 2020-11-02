package main

import "fmt"

func main() {
	a := []int{1, 3, 6, 7, 8, 10, 21}
	ret1 := binarySearchR(a, 0, len(a)-1, 21)
	fmt.Println(ret1)
	ret2 := binarySearch(a, 10)
	fmt.Println(ret2)
	fmt.Println(binarySearch(a, 11))
}

func binarySearch(a []int, t int) int {
	l := 0
	h := len(a) - 1
	for l <= h {
		mid := l + h
		if a[mid] == t {
			return mid
		} else if a[mid] <= t {
			l = mid + 1
		} else {
			h = mid - 1
		}
	}
	return -1
}

func binarySearchR(a []int, l, h int, t int) int {
	if l > h {
		return -1
	}

	mid := (l + h) / 2
	if t == a[mid] {
		return mid
	} else if t > a[mid] {
		return binarySearchR(a, mid+1, h, t)
	} else {
		return binarySearchR(a, l, mid-1, t)
	}
}
