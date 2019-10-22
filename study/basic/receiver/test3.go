package receiver

import (
	"errors"
	"fmt"
)

type coder interface {
	howOld() int
	howOld2() int
	growUp()
}

type Gopher struct {
	name string
	age  int
}

func (p Gopher) howOld() int {
	fmt.Printf("internal howOld, addrss is %p \n", &p)
	return p.age
}

func (p Gopher) howOld2() int {
	fmt.Printf("internal howOld2, addrss is %p \n", &p)
	return p.age
}

func (p *Gopher) growUp() {
	fmt.Printf("internal growUp, addrss is %p \n", p)
	p.age += 1
}

func main() {
	fmt.Println("------------- 1 -------------")
	var yt coder = &Gopher{
		name: "yuting",
		age:  18,
	}
	fmt.Printf("person, addrss is %p \n", yt)
	yt.howOld()
	yt.howOld2()
	yt.growUp()
	fmt.Printf("person, addrss is %p \n", yt)

	fmt.Println("------------- 2 -------------")
	var yt coder = Gopher{
		name: "yuting",
		age:  18,
	}
	errors.New()
	//fmt.Printf("person, addrss is %p \n", &yuting)
	//yuting.howOld()
	//yuting.howOld2()
	//yuting.growUp()
	//fmt.Printf("person, addrss is %p \n", &yuting)
}
