package main

//
// see directions in pbc.go
//

import (
	"fmt"
	"os"
	"time"
	// TODO: implement package
	// "github.com/arindas/mit-6.824-distributed-systems/pkg/viewservice"
)

func main() {
	if len(os.Args) != 2 {
		fmt.Printf("Usage: viewd port\n")
		os.Exit(1)
	}

	// TODO: start server
	// viewservice.StartServer(os.Args[1])

	for {
		time.Sleep(100 * time.Second)
	}
}
