package main

import (
	"fmt"
	"html"
	"io"
	"log"
	"net/http"
	"strings"
	"time"
)

func main() {
	s := &http.Server{
		Addr:           ":8080",
		Handler:        nil,
		ReadTimeout:    10 * time.Second,
		WriteTimeout:   10 * time.Second,
		MaxHeaderBytes: 1 << 20,
	}

	helloHandler := func(w http.ResponseWriter, req *http.Request) {
		req.ParseForm()
		fmt.Println(req.Form)
		fmt.Println("path", req.URL.Path)
		fmt.Println("scheme", req.URL.Scheme)
		fmt.Println(req.Form["url_long"])
		for k, v := range req.Form {
			fmt.Println("key:", k)
			fmt.Println("val:", strings.Join(v, ""))
		}

		io.WriteString(w, "Hello, world!\n")
	}
	http.HandleFunc("/hello", helloHandler)
	http.HandleFunc("/", helloHandler)

	http.HandleFunc("/bar", func(w http.ResponseWriter, r *http.Request) {
		fmt.Fprintf(w, "Hello, %q", html.EscapeString(r.URL.Path))
	})

	log.Fatal(s.ListenAndServe())
}
