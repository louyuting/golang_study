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
}

func test(x, y int) int {
	x = 10
	y = 20
	return x + y
}
