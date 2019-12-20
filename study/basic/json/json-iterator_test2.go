package main

import (
	"fmt"
	"github.com/json-iterator/go"
)

type Movie2 struct {
	Title  string
	Year   int
	Color  bool
	Actors []string
}

var movies2 = []Movie2{
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

	json := jsoniter.ConfigCompatibleWithStandardLibrary
	str1, _ := json.Marshal(&movies2)
	str := string(str1[:])
	fmt.Println(str)
}
