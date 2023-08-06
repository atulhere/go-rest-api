package main

import (
	"fmt"
	"log"
	"net/http"
)

func main() {

	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {

		fmt.Fprintf(w, "hello %q", r.URL.Query().Get("a"))

	})

	log.Println("Server is running on the Port 80")
	log.Println(http.ListenAndServe(":80", nil))

}
