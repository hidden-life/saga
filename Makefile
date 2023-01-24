# application binary name
BINARY_NAME ?= saga
# path where binary will be stored after build
BINARY_DIR := $(CURDIR)/build

# clear all shit
.PHONY: clean
clean:
	@go clean
	@rm -rf ./build

# build binary file
.PHONY: build
build: clean
	@rm -rf build
	@mkdir build
	@chmod -R 755 ./build
	@go build -o $(BINARY_DIR)/$(BINARY_NAME) ./cmd/*.go

# run an application
.PHONY: run
run:
	@go run ./cmd/main.go

