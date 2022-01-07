package main

//
// see comments in lockd.go
//

import (
	"fmt"
	"os"
	// TODO: implement lockservice
	// "github.com/arindas/mit-6.824-distributed-systems/pkg/lockservice"
)

func usage() {
	fmt.Printf("Usage: lockc -l|-u primaryport backupport lockname\n")
	os.Exit(1)
}

func main() {
	if len(os.Args) == 5 {
		// TODO: implement lock service and make clerk
		// ck := lockservice.MakeClerk(os.Args[2], os.Args[3])
		// var ok bool
		// if os.Args[1] == "-l" {
		// 	ok = ck.Lock(os.Args[4])
		// } else if os.Args[1] == "-u" {
		// 	ok = ck.Unlock(os.Args[4])
		// } else {
		// 	usage()
		// }
		// fmt.Printf("reply: %v\n", ok)
	} else {
		usage()
	}
}
