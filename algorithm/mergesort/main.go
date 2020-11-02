package main

import "fmt"

func main() {
	a := []int{1, 8, 3, 6, 7, 2, 10, 21}
	ret := make([]int, 8, 8)
	mergeSort(a, 0, len(a)-1, ret)
	fmt.Println(a)
}

func mergeSort(a []int, first, last int, ret []int) {
	if first >= last {
		return
	}

	mid := (first + last) / 2
	mergeSort(a, first, mid, ret)
	mergeSort(a, mid+1, last, ret)
	mergeArray(a, first, mid, last, ret)
}

func mergeArray(a []int, first, mid, last int, ret []int) {
	// a[first, mid], a[mid+1, last]
	i := first
	j := mid + 1
	m := mid
	n := last
	k := 0
	for i <= m && j <= n {
		if a[i] < a[j] {
			ret[k] = a[i]
			i++
			k++
		} else {
			ret[k] = a[j]
			j++
			k++
		}
	}

	for i <= m {
		ret[k] = a[i]
		i++
		k++
	}
	for j <= n {
		ret[k] = a[j]
		j++
		k++
	}

	for c := 0; c < k; c++ {
		a[first+c] = ret[c]
	}
	return
}
