package main

import (
	"fmt"
	"os"
)

func main() {
	fmt.Println("hello world")
	token := os.Getenv("GH_TOKEN")
	if token == "" {
		fmt.Println("GH_TOKEN not set")
		os.Exit(1)
	}
}
