package main

import (
	"fmt"
	"log"
	"net/http"
)

func myHandler(w http.ResponseWriter, r *http.Request) {

	fmt.Fprintf(w, "Hello %s, %s\n", r.RequestURI, r.URL)
}

func main() {
	http.HandleFunc("/aaaaa/bbbbb", myHandler) //	设置访问路由
	log.Fatal(http.ListenAndServe(":8080", nil))
}
