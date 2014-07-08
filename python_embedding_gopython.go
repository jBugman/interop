package main

import "github.com/sbinet/go-python"

func main() {
	if err := python.Initialize(); err != nil {
		panic(err.Error())
	}
	defer python.Finalize()

	cmd := "from time import time,ctime\nprint 'Today is',ctime(time())\n"
	python.PyRun_SimpleString(cmd)
}
