# application name
APP_NAME=saga
# path where binary will be stored
BIN_DIR=$(CURDIR)/build

# build binary file
.PHONY: build
build:
	@rm -rf build
	@mkdir build
	@chmod -R 755 ./build
	@go build -o $(BIN_DIR)/$(APP_NAME) ./cmd/*.go

.PHONY: run
# run an application
run:
	@go run ./cmd/main.go

