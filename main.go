package main

import (
	"fmt"
	"log"
	"net/http"
)

func helloWorld(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "Hello World!")
	log.Printf("Endpoint Hit: helloWorld")
}

func handleRequests() {
	http.HandleFunc("/hello", helloWorld)
	log.Fatal(http.ListenAndServe(":8080", nil))
}

func main() {
	handleRequests()
}
