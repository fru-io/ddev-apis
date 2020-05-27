# Get the currently used golang install path (in GOPATH/bin, unless GOBIN is set)
ifeq (,$(shell go env GOBIN))
GOBIN=$(shell go env GOPATH)/bin
else
GOBIN=$(shell go env GOBIN)
endif

all: build

prepare-release:
	mkdir -p build/release/go
	mkdir -p build/release/js
	mkdir -p build/release/ts
	mkdir -p build/go
	mkdir -p build/js
	mkdir -p build/ts
	mkdir -p build/dep
	if [ ! -d build/dep/googleapis ];then git clone https://github.com/googleapis/googleapis.git build/dep/googleapis; fi

build-go:
	protoc \
	--proto_path=build/dep/googleapis \
	--proto_path=. \
	--go_out=plugins=grpc:build/go \
	--swagger_out=allow_delete_body=true:build/go \
	--grpc-gateway_out=allow_delete_body=true:build/go \
	live/billing/v1alpha1/subscription.proto \
	live/billing/v1alpha1/service.proto

release-go: build-go
	tar -zcvf build/release/go/go-gen-source.tar.gz build/go

build-js:
	protoc \
	--proto_path=build/dep/googleapis \
	--proto_path=. \
	--js_out=import_style=commonjs:build/js \
	--grpc-web_out=import_style=commonjs,mode=grpcwebtext:build/js \
	live/billing/v1alpha1/subscription.proto \
	live/billing/v1alpha1/service.proto

release-js: build-js
	tar -zcvf build/release/js/javascript-gen-source.tar.gz build/js

build-ts:
	protoc \
	--proto_path=build/dep/googleapis \
	--proto_path=. \
	--js_out=import_style=commonjs:build/ts \
	--grpc-web_out=import_style=commonjs,mode=grpcwebtext:build/ts \
	live/billing/v1alpha1/subscription.proto \
	live/billing/v1alpha1/service.proto

release-ts: build-ts
	tar -zcvf build/release/ts/typescript-gen-source.tar.gz build/ts

release: prepare-release release-ts release-js release-go
