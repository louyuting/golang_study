package main

import (
	"fmt"
	"reflect"
)

type Test struct {
	name string
	id   int64
}

func main() {
	typez := reflect.TypeOf(1112222222222222)
	fmt.Println(typez)

	t := &Test{
		name: "sim1",
		id:   1,
	}
	reflectV := reflect.ValueOf(t)
	fmt.Println(reflectV.Kind())
	fmt.Println(reflectV.Elem())
	fmt.Println(reflectV.Type())
}
