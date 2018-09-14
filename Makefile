.PHONY:test fmt
test:fmt
	go test ./...
fmt:
	go fmt ./...
	goimports -l ./
	go vet ./...
	golint ./...