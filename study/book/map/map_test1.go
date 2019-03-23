package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	counts := make(map[string]int)
	input := bufio.NewScanner(os.Stdin)

	for input.Scan() {
		if input.Text() == "quit" {
			break
		}
		counts[input.Text()]++
	}

	for key, val := range counts {
		fmt.Println("key:", key, "  val=", val)
	}
}
