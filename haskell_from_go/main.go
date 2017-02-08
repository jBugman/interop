package main

// char* helloFromHaskell();
// void wrapped_init();
// void wrapped_exit();
// #cgo LDFLAGS: -L${SRCDIR} -lhello
import "C"

import "fmt"

func main() {
	// Starting and stopping Haskell runtime
	C.wrapped_init()
	defer C.wrapped_exit()

	cs := C.helloFromHaskell()
	s := C.GoString(cs)
	fmt.Println(s)
}
