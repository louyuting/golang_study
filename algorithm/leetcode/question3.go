package main



func lengthOfLongestSubstring(s string) int {
	l := 0
	h := 0
	sb := []byte(s)
	count := make(map[byte]int)
	ret := 0
	for h<len(s) {
		char := s[h]
		count[char]++
		for count[char] > 1 {
			count[sb[l]]--
			l++
		}
		if h-l+1 > ret {
			ret = h-l+1
		}
		h++
	}
	return ret
}