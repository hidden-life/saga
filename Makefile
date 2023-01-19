# application name
APP_NAME=saga
# path where binary will be stored
BIN_DIR=$(CURDIR)/build

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
	@go build -o $(BIN_DIR)/$(APP_NAME) ./cmd/*.go

# run an application
.PHONY: run
run:
	@go run ./cmd/main.go

