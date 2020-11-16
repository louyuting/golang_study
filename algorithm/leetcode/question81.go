package main

import "fmt"

func main()  {
	fmt.Println(search2([]int{3,1}, 1))
}

//( 例如，数组 [0,0,1,2,2,5,6] 可能变为 [2,5,6,0,0,1,2] )。
//编写一个函数来判断给定的目标值是否存在于数组中。若存在返回 true，否则返回 false。
func search2(nums []int, target int) bool {
	i := 0
	j := len(nums)-1

	for i<=j {
		mid := (i+j)/2
		if nums[mid] == target {
			return true
		}

		if nums[mid] > nums[i] {
			//mid左侧是递增的
			if nums[i] <= target && target < nums[mid]{
				j = mid -1
			} else {
				i = mid+1
			}
		} else if nums[mid] < nums[i] {
			if nums[mid] < target && target <= nums[j]{
				i = mid +1
			} else {
				j = mid -1
			}
		} else {
			if target != nums[i] {
				i++
			}
			if target != nums[j] {
				j--
			}
		}
	}
	return false
}
