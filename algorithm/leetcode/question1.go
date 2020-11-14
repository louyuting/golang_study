package main

func twoSum(nums []int, target int) []int {
	// key是元素，value是对应的index
	hashTable := map[int]int{}
	for i, x := range nums {
		if p, ok := hashTable[target-x]; ok {
			return []int{p, i}
		}
		hashTable[x] = i
	}
	return nil
}