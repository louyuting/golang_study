package main

func main() {

}

func singleNumber(nums []int) int {
	var res int
	for _, val := range nums {
		res = res ^ val
	}
	return res
}
