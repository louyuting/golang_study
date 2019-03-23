package net

import (
	"fmt"
	ioutil2 "io/ioutil"
	"net/http"
)

func main() {

	resp, err := http.Get("https://www.baidu.com")
	if err != nil {
		fmt.Println("fail, err={}", err)
	}
	defer resp.Body.Close()
	body, e := ioutil2.ReadAll(resp.Body)
	if e != nil {
		fmt.Println("get body fail, err={}", e)
	}
	bodyStr := string(body)
	fmt.Println(bodyStr)
}
