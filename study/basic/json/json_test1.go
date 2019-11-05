package main

import (
	"encoding/json"
	"fmt"
	"log"
)

type Movie struct {
	Title  string
	Year   int
	Color  bool
	Actors []string
}

type TT struct {
	key string
	m1  map[string][]string
	m2  map[string][]string
}

func testMap() {
	var m map[string]interface{}     //声明map
	m = make(map[string]interface{}) //必须初始化map分配内存
	m["username"] = "user1"
	m["age"] = 18
	m["sex"] = "man"
	fmt.Println(m)
	data, err := json.Marshal(m)
	if err != nil {
		fmt.Printf("json.marshal failed,err:", err)
		return
	}
	fmt.Printf("%s\n", string(data))

	tt := &TT{
		m1: make(map[string][]string),
		m2: make(map[string][]string),
	}
	tt.key = "sim"
	tt.m1["a"] = make([]string, 10)
	tt.m2["b"] = make([]string, 15)
	data2, err := json.Marshal(tt)
	fmt.Printf("%s\n", string(data2))

}

var movies = []Movie{
	{
		Title:  "Casablanca",
		Year:   1942,
		Color:  false,
		Actors: []string{"humphrey bogart", "Ingird Bergman"}},
	{
		Title:  "Cool Hand Luck",
		Year:   1962,
		Color:  true,
		Actors: []string{"humphrey bogart1", "Ingird Bergman"}},
	{
		Title:  "Bullint",
		Year:   1968,
		Color:  true,
		Actors: []string{"humphrey bogart1", "Ingird Bergman"}},
}

func main() {
	data, err := json.MarshalIndent(movies, "", "	")

	if err != nil {
		log.Fatal("Json marshaling failed:%s", err)
	}
	fmt.Printf("%s\n", data)

	a, b := 1, 2
	fmt.Println(test(a, b))
	fmt.Println(a, ": ", b)

	testMap()
}

func test(x, y int) int {
	x = 10
	y = 20
	return x + y
}
