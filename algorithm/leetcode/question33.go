package main

func search(nums []int, target int) int {
	if len(nums) == 0 {
		return -1
	}

	if len(nums) == 1 {
		if nums[0] == target {
			return 0
		} else {
			return -1
		}
	}
	i := 0
	j := len(nums)-1

	for i<=j {
		mid := (i+j)/2
		if nums[mid] == target {
			return mid
		}

		if nums[0] <= nums[mid] {
			// 表示mid左边是递增的，旋转点在右边
			if nums[0] <= target && target < nums[mid]{
				j = mid - 1
			} else {
				i = mid + 1
			}
		} else {
			if nums[mid] < target && target <= nums[j]{
				i = mid +1
			} else {
				j = mid -1
			}
		}
	}
	return -1
}