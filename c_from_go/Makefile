libhello.so: hello.c
	clang -shared -undefined dynamic_lookup -o libhello.so hello.c

go: libhello.so
	go build -o app main.go

clean:
	rm -f *.so app
