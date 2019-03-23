package basic

import "fmt"

type tree struct {
	value       int
	left, right *tree
}

type T struct {
	a, b int
}

type address struct {
	hostname string
	port     int
}

func main() {
	var str = "hello, world"
	fmt.Println(str[:10])

	aaa := T{a: 1, b: 2}
	bbb := T{a: 3, b: 4}

	fmt.Println(aaa.a)
	fmt.Println(aaa.b)
	fmt.Println(bbb.a)
	fmt.Println(bbb.b)

	hits := make(map[address]int)
	hits[address{"golang.org", 433}]++
	fmt.Println(hits[address{"golang.org", 433}])
}

func Sort(values []int) {
	var root *tree
	for _, v := range values {
		root = add(root, v)
	}
	appendValues(values[0:], root)
}

func appendValues(values []int, t *tree) []int {
	if t != nil {
		values = appendValues(values, t.left)
		values = append(values, t.value)
		values = appendValues(values, t.right)
	}
	return values
}

func add(t *tree, value int) *tree {
	if t == nil {
		t = new(tree)
		t.value = value
		return t
	}
	if value < t.value {
		t.left = add(t.left, value)
	} else {
		t.right = add(t.right, value)
	}
	return t
}
