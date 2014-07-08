package main

// #cgo pkg-config: python
// #include <Python.h>
import "C"
import "unsafe"

func main() {
	C.Py_Initialize()
	defer C.Py_Finalize()

	cmd := C.CString("from time import time,ctime\nprint 'Today is',ctime(time())\n")
	defer C.free(unsafe.Pointer(cmd))
	C.PyRun_SimpleStringFlags(cmd, nil)
}
