package main

import "fmt"

func main() {
	a := []int{9, 8, 7, 6, 5, 4, 3, 2, 1, 0}
	fmt.Println(validMountainArray(a))
}

func validMountainArray2(A []int) bool {
	if len(A) < 3 {
		return false
	}
	n := len(A) - 1
	i := 0
	j := len(A) - 1

	// 找到从左往右的峰值
	for i < n {
		if A[i+1] > A[i] {
			i++
			continue
		}
		if A[i+1] == A[i] {
			return false
		}
		break
	}
	if i == 0 {
		return false
	}

	//找到从右往左的峰值
	for j > 0 {
		if A[j] < A[j-1] {
			j--
			continue
		}
		if A[j] == A[j-1] {
			return false
		}
		break
	}
	if j == n {
		return false
	}

	return i == j
}

func validMountainArray(A []int) bool {
	if len(A) < 3 {
		return false
	}
	i := 0
	n := len(A)

	// 先找到第一个拐点
	for i = 1; i <= n-1; {
		if A[i] > A[i-1] {
			i++
			continue
		}
		if A[i] == A[i-1] {
			return false
		}
		break
	}
	// 1. 递增没有拐点，返回false
	if i == n {
		return false
	}
	// 2. 递减没有拐点
	if i == 1 {
		return false
	}

	// 2. 有拐点，判断拐点后面的slice是不是递减的
	for i <= n-1 {
		if A[i] < A[i-1] {
			i++
			continue
		}
		if A[i] == A[i-1] {
			return false
		}
		break
	}

	// 拐点之后是递减的
	if i == n {
		return true
	}
	return false
}
