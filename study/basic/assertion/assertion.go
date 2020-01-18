package main

type Student struct {
	Name  string
	Age   int
	Class string
	Score int
}

func InterfaceInvoke(i interface{}) {
	s := i.(*Student)
	s.Name = "Jerry"
	s.Age = 18
	s.Class = "20005"
	s.Score = 100
}

func main() {
	s := new(Student)
	InterfaceInvoke(s)
}
