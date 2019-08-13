package main

import (
	"container/list"
	"fmt"
)

type Person struct {
	Name string
	Company string
}

func main() {
	fmt.Println("---------------------创建list.List-------------")
	
	l := list.New()
	fmt.Println("list.len", l.Len())
	
	l.PushFront(Person{
		Name:"yuting",
		Company:"Freewheel",
	})
	fmt.Println("list.len", l.Len())
	
	for e:=l.Front(); e!=nil; e=e.Next() {
		fmt.Println(e)
		fmt.Println(e.Value.(Person).Name)
		fmt.Println(e.Value.(Person).Company)
	}
	fmt.Println("end")
}