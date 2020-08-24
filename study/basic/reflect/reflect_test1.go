package main

import (
	"fmt"
	"reflect"
)

type A struct {
	Foo string
}

func main() {
	a := &A{Foo: "ytlou"}
	val := reflect.ValueOf(a).Elem()
	typ := reflect.TypeOf(a.Foo)
	fmt.Println(typ)
	fmt.Println(val)
	for i := 0; i < val.NumField(); i++ {
		fmt.Println(val.Type().Field(i).Name)
	}
}
