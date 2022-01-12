.PHONY: helloworld test remove

helloworld: test
	protoc -I=./ -I=../ --go_out=. --go_opt=paths=source_relative helloworld/*.proto

test:
	protoc --go_out=. --go_opt=paths=source_relative test/*.proto

remove:
	rm -rf helloworld/hello_world.pb.go test/test.pb.go