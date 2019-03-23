package goroutine

import "fmt"

func main() {
	a := struct {
	}{}
	b := struct {
	}{}

	fmt.Println(a == b)
	fmt.Printf("%p %p", &a, &b)

}
