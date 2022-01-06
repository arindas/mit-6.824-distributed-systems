package main

//
// see directions in pbc.go
//

import (
	"fmt"
	"os"
	"time"
	// TODO: implement package
	// "github.com/arindas/mit-6.824-distributed-systems/pkg/pbservice"
)

func main() {
	if len(os.Args) != 3 {
		fmt.Printf("Usage: pbd viewport myport\n")
		os.Exit(1)
	}

	// TODO: start server
	// pbservice.StartServer(os.Args[1], os.Args[2])

	for {
		time.Sleep(100 * time.Second)
	}
}
