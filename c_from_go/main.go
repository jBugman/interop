package main

// char* helloFromC(); // inline 'header'
// #cgo LDFLAGS: -L${SRCDIR} -lhello
import "C"

import "fmt"

func main() {
	cs := C.helloFromC()
	s := C.GoString(cs)
	fmt.Println(s)
}
