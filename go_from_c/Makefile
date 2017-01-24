hello.a: go/hello.go
	go build -buildmode=c-archive go/hello.go

c: hello.a
	clang -o app hello.a main.c

clean:
	rm -f *.h *.a app
