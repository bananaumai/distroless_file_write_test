package main

import (
	"fmt"
	"os"
)

func main() {
	if len(os.Args) < 2 {
		panic("Please provide a file name.")
	}

	fileName := os.Args[1]
	file, err := os.OpenFile(fileName, os.O_RDWR|os.O_CREATE, 0755)
	if err != nil {
		panic(err)
	}
	defer file.Close()

	if _, err := fmt.Fprintf(file, "Hello, World!"); err != nil {
		panic(err)
	}

	fmt.Println("done")
}
