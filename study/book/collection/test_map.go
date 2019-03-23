package collection

import "fmt"

func main() {
	fmt.Println("--Map创建和初始化------------------------------------")
	// 创建一个map, key是String，value是int
	dict := make(map[string]int)
	// 创建一个map, KV都是String
	//dict2 := map[string]string{"red":"#da2222", "orange":"#e32323"}

	dict["red"] = 1
	for k, v := range dict {
		fmt.Println("k=", k, ";", "v=", v)
	}
	fmt.Println("--map 判断键是否存在------------------------------------")
	value1, exist1 := dict["red"]
	value2, exist2 := dict["blue"]
	if exist1 {
		fmt.Println("test1--k=red, value=", value1)
	}
	if exist2 {
		fmt.Println("test2--k=blue, value=", value2)
	} else {
		fmt.Println("test2--k=blue is not existed")
	}
	value3 := dict["red"]
	if value3 != 0 {
		fmt.Println("test3--k=red, value=", value3)
	}
	fmt.Println("--map 删除键值对------------------------------------")
	delete(dict, "red")
	for k, v := range dict {
		fmt.Println("k=", k, ";", "v=", v)
	}
}
