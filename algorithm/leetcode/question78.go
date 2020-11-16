package main


// TODO
func subsets(nums []int) [][]int {
	res := make([][]int, 0)

	var dfs func(i int, list []int)
	dfs = func(i int, list []int) {
		if i == len(nums) {
			tmp := make([]int, len(list))
			copy(tmp, list)
			res = append(res, tmp)
			return
		}
		// 选择第i个然后进行递归
		list = append(list, nums[i])
		dfs(i+1, list)
		// 不选择第i个，然后进行递归
		list = list[:len(list)-1]
		dfs(i+1, list)
	}
	dfs(0, []int{})
	return res
}