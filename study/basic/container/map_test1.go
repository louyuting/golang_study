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

	dict["red1"] = 1
	dict["red2"] = 2
	dict["red3"] = 3
	for k := range dict {
		fmt.Println("k=", k, ";")
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

	ttt := make(map[string]string)
	v2 := ttt["test1"]
	fmt.Println(v2)
	for k, v := range ttt {
		fmt.Println("k=", k, ";", "v=", v)
	}

	fmt.Println("--------------- map value是slice ---------------")
	mt3 := make(map[string][]string)
	v3 := mt3["test1"]
	if v3 == nil {
		v3 = make([]string, 0)
	}
	v3 = append(v3, "v1")
	v3 = append(v3, "v2")
	mt3["test1"] = v3
	for k, v := range mt3 {
		fmt.Println("k=", k, ";", "v=", v)
		for _, vvv := range v {
			fmt.Println("slice value ", vvv)
		}
	}

	fmt.Println("--------------- m ---------------")
	m := make(map[string]string)
	m["1"] = "0"
	fmt.Printf("m outer address %p, m=%v \n", m, m)
	passMap(m)
	fmt.Printf("post m outer address %p, m=%v \n", m, m)

	fmt.Println("--------------- m2 ---------------")
	var m2 map[string]string //未初始化
	fmt.Printf("m2 outer address %p, m=%v \n", m2, m2)
	passMapNotInit(m2)
	fmt.Printf("post m2 outer address %p, m=%v \n", m2, m2)

	fmt.Println(4 << (^uintptr(0) >> 63))
}

func passMap(m map[string]string) {
	fmt.Printf("m inner address %p \n", m)
	m["11111111"] = "11111111"
	fmt.Printf("post m inner address %p \n", m)
}

func passMapNotInit(m map[string]string) {
	fmt.Printf("inner: %v, %p\n", m, m)
	m = make(map[string]string, 0)
	m["a"] = "11"
	fmt.Printf("inner: %v, %p\n", m, m)
}
