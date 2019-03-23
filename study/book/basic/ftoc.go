package basic

import "fmt"

func main() {
	const freezingF, boilingF = 32.0, 212.0
	fmt.Printf("F= %gF = %g C", freezingF, fToC(freezingF))
	fmt.Println()
	fmt.Printf("F= %gF = %g C", boilingF, fToC(boilingF))

	fmt.Println("========================================")
	fmt.Println(f() == f())
}

func fToC(f float64) float64 {
	return (f - 32) * 5 / 9
}

func f() *int {
	var i int = 1
	j := 2
	fmt.Println(j)
	fmt.Println(&i)
	return &i
}
