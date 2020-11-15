package main

import (
	"sort"
	"strconv"
)

func threeSum(nums []int) [][]int {
	n := len(nums)
	sort.Ints(nums)
	ret := make([][]int, 0)
	existed :=make(map[string]int)
	for i:=0; i<n; i++ {
		target := -nums[i]
		as := nums[i+1:]
		if len(as) < 2 {
			break
		}
		// 从as数组里面找和为 target的两个数
		r := twoSumInter(as, target)
		if r!=nil {
			for _, rr := range r {
				tmp := []int{nums[i]}
				tmp = append(tmp, as[rr[0]], as[rr[1]])
				sort.Ints(tmp)
				twoSum := strconv.Itoa(tmp[0]) +"-"+strconv.Itoa(tmp[1])
				if _, ok := existed[twoSum];ok {
					continue
				}
				existed[twoSum] = 1
				ret = append(ret,tmp)
			}
		}
	}
	return ret
}

// 返回下标
func twoSumInter(a []int, target int) [][]int {
	hashTable := map[int]int{}
	ret := make([][]int,0)
	for i, x := range a {
		if p, ok := hashTable[target-x]; ok {
			ret = append(ret, []int{p, i})
		}
		hashTable[x] = i
	}
	if len(ret) > 0 {
		return ret
	}
	return nil

}
