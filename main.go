package main

import (
	"fmt"
	"os"
)

func main() {
	fmt.Println("Hello World from", os.Getenv("TARGETPLATFORM"))
}
