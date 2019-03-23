package collection

import "fmt"

func main() {
	fmt.Println("--数组声明和默认初始值--------------------------------")
	var array [5]int
	for _, val := range array {
		fmt.Println(val)
	}

	fmt.Println("--使用字面量声明数组--------------------------------")
	array2 := [5]int{1, 2, 3, 4, 5}
	for _, val := range array2 {
		fmt.Println(val)
	}

	fmt.Println("--自动计算数组长度--------------------------------")
	array3 := [...]int{11, 22, 33, 44, 55}
	for _, val := range array3 {
		fmt.Println(val)
	}

	fmt.Println("--声明数组并指定特定元素的值--------------------------------")
	array4 := [5]int{1: 10, 2: 20}
	for _, val := range array4 {
		fmt.Println(val)
	}

	fmt.Println("--使用数组--------------------------------")
	fmt.Println("--访问指针数组--------------------------------")
	array5 := [5]*int{0: new(int), 1: new(int)}
	*array5[0] = 10
	*array5[1] = 20
	for _, val := range array5 {
		fmt.Println(val)
	}
	for _, val := range array5 {
		if val != nil {
			fmt.Println(*val)
		} else {
			fmt.Println("nil")
		}
	}
	fmt.Println("--数组的assignment: 会默认的调用copy函数，并对每个变量进行复制，实际内容不是指向同一个对象--------------------------------")
	var array6 [5]string
	array7 := [...]string{"RED", "Blue", "Green", "Yellow", "Pink"}
	array6 = array7
	for _, val := range array6 {
		fmt.Println(val)
	}
	for _, val := range array7 {
		fmt.Println(val)
	}
	for idx, _ := range array6 {
		array6[idx] += "_FIX"
	}
	for _, val := range array6 {
		fmt.Println(val)
	}
	for _, val := range array7 {
		fmt.Println(val)
	}

	fmt.Println("--指针数组的assignment: 会默认的调用copy函数，并对每个变量进行复制，实际内容是指向同一个对象--------------------------------")
	var array8 [3]*string
	array9 := [...]*string{new(string), new(string), new(string)}
	array8 = array9
	*array9[0] = "Red"
	*array9[1] = "Blue"
	*array9[2] = "Green"
	for _, val := range array8 {
		fmt.Println(*val)
	}
	for _, val := range array9 {
		fmt.Println(*val)
	}

}
