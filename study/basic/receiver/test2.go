package main

import "fmt"

type Person struct {
	name string
	age  int
}

func (p Person) howOld() int {
	fmt.Printf("internal howOld, addrss is %p \n", &p)
	p.name = "ximu1"
	return p.age
}

func (p Person) howOld2() int {
	fmt.Printf("internal howOld2, addrss is %p \n", &p)
	p.name = "ximu2"
	return p.age
}

func (p *Person) growUp() {
	fmt.Printf("internal growUp, addrss is %p \n", p)
	p.age += 1
}

func main() {
	yuting := Person{
		name: "yuting",
		age:  18,
	}
	fmt.Printf("person, addrss is %p \n", &yuting)
	yuting.howOld()
	yuting.howOld2()
	yuting.growUp()
	fmt.Printf("person, addrss is %p \n", &yuting)

	fmt.Println("------------- 2 -------------")

	yt := &Person{
		name: "yuting",
		age:  18,
	}
	fmt.Printf("person, addrss is %p \n", yt)
	yt.howOld()
	yt.howOld2()
	yt.growUp()
	fmt.Printf("person, addrss is %p \n", yt)
}
