package main



func searchRange(nums []int, target int) []int {
	i:= 0
	j := len(nums)-1

	for i <= j {
		mid := (i+j)/2
		if target == nums[mid]{
			//find
			res := make([]int,0)
			low := mid
			high := mid
			p := mid-1
			for p>=0 && nums[p]==target  {
				low = p
				p--
			}
			p = mid+1
			for p<len(nums) && nums[p]==target {
				high = p
				p++
			}
			return append(res, low, high)
		}
		if  nums[mid] > target {
			j = mid-1
		} else {
			i = mid+1
		}
	}
	return []int{-1, -1}
}
