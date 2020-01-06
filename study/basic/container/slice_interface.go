package main

import "fmt"

func main()  {
    s := make([]int, 0)
    s = append(s, 1)
    s = append(s, 2)
    s = append(s, 3)
    handleRules(s)
}

func handleRules(rules interface{}) {
    fmt.Printf("%+v", rules)

}