hello_go.a: go/hello.go
	go build -buildmode=c-archive -o hello_go.a go/hello.go

hs: hello_go.a
	stack ghc -- hello_go.a main.hs -o app

clean:
	rm -f *.h *.a *.o *.hi app
