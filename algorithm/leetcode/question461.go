package main

func hammingDistance(x int, y int) int {
	r := x ^ y
	count := 0
	for i := 0; i < 32; i++ {
		if r%2 == 0 {
			r = r >> 1
		} else {
			count++
			r = r >> 1
		}
	}
	return count
}
