ROOT_DIR:=$(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))
USER_ID:=$(shell id -u)

BILLING_PROTOS:=$(shell find live/billing/v1alpha1/ -name *.proto)
SITE_PROTOS:=$(shell find live/sites/v1alpha1/ -name *.proto)

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
	# TODO: Bazel
	if [ ! -d build/dep/googleapis ];then git clone https://github.com/googleapis/googleapis.git build/dep/googleapis; fi

build-go: prepare-release
	protoc \
	--proto_path=build/dep/googleapis \
	--proto_path=. \
	--go_out=plugins=grpc:build/go \
	--swagger_out=allow_delete_body=true:build/go \
	--grpc-gateway_out=allow_delete_body=true:build/go \
	${BILLING_PROTOS}

release-go: build-go
	tar -zcvf build/release/go/go-gen-source.tar.gz build/go

build-js: prepare-release
	protoc \
	--proto_path=build/dep/googleapis \
	--proto_path=. \
	--js_out=import_style=commonjs:build/js \
	--grpc-web_out=import_style=commonjs,mode=grpcwebtext:build/js \
	${BILLING_PROTOS}

release-js: build-js
	tar -zcvf build/release/js/javascript-gen-source.tar.gz build/js

build-ts: prepare-release
	protoc \
	--proto_path=. \
	--js_out=import_style=commonjs:build/ts \
	--grpc-web_out=import_style=typescript,mode=grpcwebtext:build/ts \
	${BILLING_PROTOS}

	#TODO: I do not want to manage this file, and eventually want to move the build to bazel for both proto and NPM, so I am doing this here
	cp package.json build/ts/package.json

release-ts: build-ts
	tar -zcvf build/release/ts/typescript-gen-source.tar.gz build/ts

release: prepare-release doc release-ts release-js release-go

billing-doc:
	docker run --rm \
	--user ${USER_ID} \
	-v ${ROOT_DIR}/doc/api:/out \
	-v ${ROOT_DIR}/:/protos \
	pseudomuto/protoc-gen-doc --doc_opt=markdown,billing-api.md \
	${BILLING_PROTOS}

site-doc:
	docker run --rm \
	--user ${USER_ID} \
	-v ${ROOT_DIR}/doc/api:/out \
	-v ${ROOT_DIR}/:/protos \
	pseudomuto/protoc-gen-doc --doc_opt=markdown,site-api.md \
	${SITE_PROTOS}

.PHONY: doc
doc: billing-doc site-doc