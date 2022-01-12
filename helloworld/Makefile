.PHONY: helloworldpb testpb

helloworldpb: testpb
	protoc -I=../ -I=. --go_out=. --go_opt=paths=source_relative ./*.proto

testpb:
	protoc -I=../ --go_out=../test --go_opt=module=github.com/cwww3/pb-learning/test ../test/*.proto
