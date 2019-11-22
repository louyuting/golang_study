package main

func f1() *int {
	y := 2
	return &y
}

func main() {
	y := f1()
	println(y)
}
