package main

import (
	"log"
	"net/http"
	"strconv"
	"time"
)

func myHandler(w http.ResponseWriter, r *http.Request) {
	ret := "Hello world, now: " + strconv.Itoa(int(time.Now().UnixNano()))
	w.Write([]byte(ret))
}

func main() {
	http.HandleFunc("/demo", myHandler) //	设置访问路由
	log.Fatal(http.ListenAndServe(":8080", nil))
}
