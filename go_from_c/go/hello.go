package main

import "C"

//export HelloFromGo
func HelloFromGo() *C.char {
	return C.CString("Hello from Go")
}

func main() {}
