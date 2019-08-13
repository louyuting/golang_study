package main
import (
	"fmt"
	"net/http"
	"log"
)

func myHandler(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "Hello there!\n")
}

func main(){
	http.HandleFunc("/", myHandler)		//	设置访问路由
	log.Fatal(http.ListenAndServe(":8080", nil))
}
