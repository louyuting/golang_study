package main

import (
	"math"
	"sort"
)

func merge(intervals [][]int) [][]int {
	if len(intervals) <= 1 {
		return intervals
	}
	sort.SliceStable(intervals, func(i, j int) bool {
		return intervals[i][0] < intervals[j][0]
	})

	res := make([][]int, 0, len(intervals))
	// 得到的intervals首元素是递增的
	left := intervals[0][0]
	right := intervals[0][1]
	for i:=1; i< len(intervals); i++ {
		if intervals[i][0] > right {
			res = append(res, []int{left, right})
			left = intervals[i][0]
			right = intervals[i][1]
		} else {
			// 合并
			right = int(math.Max(float64(right), float64(intervals[i][1])))
		}
	}
	res = append(res, []int{left, right})
	return res
}