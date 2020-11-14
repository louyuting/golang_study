package main

import "math"

func maxArea(height []int) int {
	l := 0
	h := len(height)-1
	res := 0
	for l < h {
		if height[l] > height[h] {
			res = int(math.Max(float64(res), float64((h-l)*height[h])))
			h--
		} else {
			res = int(math.Max(float64(res), float64((h-l)*height[l])))
			l++
		}
	}
	return res
}


