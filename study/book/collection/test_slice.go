package collection

import "fmt"

func main() {
	fmt.Println("--切片创建和初始化：make和切片字面量--------------------------------")
	slice := make([]string, 5)
	for _, val := range slice {
		fmt.Println(val)
	}
	fmt.Println("--使用切片字面量来声明切片,注意与数组的区别在于，数组必须指定数组的长度--------------------------------")
	slice2 := []string{"Red", "Blue", "Yellow", "Green", "Pink"}
	slice3 := []int{1, 2, 3}
	for _, val := range slice2 {
		fmt.Println(val)
	}
	for _, val := range slice3 {
		fmt.Println(val)
	}
	fmt.Println("--使用索引声明切面--------------------------------")
	slice4 := []string{99: "kongge"}
	for idx, val := range slice4 {
		fmt.Println(idx, ": ", val)
	}

	fmt.Println("--创建nil和空切片--------------------------------")
	var slice5 []int
	slice6 := make([]int, 0)
	fmt.Println(slice5)
	fmt.Println(slice6)
	fmt.Println(len(slice5))
	fmt.Println(len(slice6))

	fmt.Println("--使用切片--------------------------------")
	fmt.Println("--使用切片创建新切片（底层共享数据结构）--------------------------------")
	slice7 := []string{"Red", "Blue", "Yellow", "Green", "Pink"}
	slice8 := slice7[1:3]
	for idx, val := range slice7 {
		fmt.Println(idx, ": ", val)
	}
	for idx, val := range slice8 {
		fmt.Println(idx, ": ", val)
	}
	slice7[1] += "--FIX"
	slice7[2] += "--FIX"
	for idx, val := range slice7 {
		fmt.Println(idx, ": ", val)
	}
	for idx, val := range slice8 {
		fmt.Println(idx, ": ", val)
	}
	fmt.Println("--slice append--------------------------------")
	slice9 := []string{"Red", "Blue", "Yellow", "Green", "Pink"}
	slice9 = append(slice9, "Black")
	for idx, val := range slice9 {
		fmt.Println(idx, ": ", val)
	}

}
