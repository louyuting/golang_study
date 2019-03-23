package main

import (
	"fmt"
	"unicode/utf8"
)

func main() {
	str := "hello巴巴爸爸"
	fmt.Println(len(str))
	fmt.Println(len([]rune(str)))
	fmt.Println(utf8.RuneCountInString(str))
	for _, val := range str {
		fmt.Println(val)
		fmt.Println(string(val))
	}

	sss := []rune(str)
	reverseWord(sss, 1, 4)
	fmt.Println(string(sss))
}
func reverseWords(s string) string {

	str := []rune(s)
	var start = 0
	var end = 0
	for end < len(str) {
		if str[end] == ' ' {
			reverseWord(str, start, end-1)
			start = end + 1
		}
		if end == len(str)-1 {
			reverseWord(str, start, end)
			break
		}
		end++
	}
	return string(str)

}

// 从start到end翻转
func reverseWord(str []rune, start, end int) {
	if start >= end || start < 0 || end >= len(str) {
		return
	}
	for start < end {
		str[start], str[end] = str[end], str[start]
		start++
		end--
	}
}
