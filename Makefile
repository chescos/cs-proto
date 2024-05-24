.PHONY: build

build:
	@rm -rf ./src || true
	@mkdir ./src
	@protoc --experimental_allow_proto3_optional --php_out=./src ./proto/econ.proto
	@mv ./src/Chescos/CsProto/* ./src
	@rm -rf ./src/Chescos
