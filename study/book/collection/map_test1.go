package main

import "fmt"

func main() {
	fmt.Println("--Map创建和初始化------------------------------------")
	// 创建一个map, key是String，value是int
	dict := make(map[string]int)
	fmt.Println("len111=", len(dict))
	var dm map[string]string
	fmt.Println("len111=", len(dm))
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
	
	fmt.Println("--------------- map作为函数传参 ---------------")
	m := make(map[string]string)
	m["1"] = "0"
	m["11"] = "0"
	m["111"] = "0"
	m["1111"] = "0"
	fmt.Println(m)
	fmt.Printf("m outer address %p \n", m)
	passMap(m)
	fmt.Printf("post m outer address %p \n", m)
	fmt.Println("output m:")
	for k, v := range m {
		fmt.Println("k=", k, ";", "v=", v)
	}
	
	m2 := make(map[string]string)
	v2 := m2["test1"]
	fmt.Println(v2)
	for k, v := range m2 {
		fmt.Println("k=", k, ";", "v=", v)
	}
	
	fmt.Println("--------------- map value是slice ---------------")
	m3 := make(map[string][]string)
	v3 := m3["test1"]
	if v3 == nil {
		v3 = make([]string, 0)
	}
	v3 = append(v3, "v1")
	v3 = append(v3, "v2")
	m3["test1"] = v3
	for k, v := range m3 {
		fmt.Println("k=", k, ";", "v=", v)
		for _, vvv := range v {
			fmt.Println("slice value ", vvv)
		}
	}
	
	
}

func passMap(m map[string]string) {
	fmt.Printf("m inner address %p \n", m)
	m["11111111"] = "11111111"
	fmt.Printf("post m inner address %p \n", m)
}
