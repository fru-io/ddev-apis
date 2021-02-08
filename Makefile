ROOT_DIR:=$(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))
USER_ID:=$(shell id -u)

SITE_PROTOS:=$(shell find live/sites/v1alpha1 -name *.proto)
ADMIN_PROTOS:=$(shell find live/administration/v1alpha1 -name *.proto)

# Get the currently used golang install path (in GOPATH/bin, unless GOBIN is set)
ifeq (,$(shell go env GOBIN))
GOBIN=$(shell go env GOPATH)/bin
else
GOBIN=$(shell go env GOBIN)
endif

all: build

update:
	bazel run //:gazelle

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
	if [ ! -d build/dep/protobuf ];then git clone https://github.com/protocolbuffers/protobuf.git build/dep/protobuf; fi

push-builder:
	docker build -f Docker-protoc -t drud/protoc-builder .
	docker push drud/protoc-builder

build-go: prepare-release
	protoc \
	--proto_path=build/dep/googleapis \
	--proto_path=. \
	--go_out=plugins=grpc:build/go \
	--swagger_out=allow_delete_body=true:build/go \
	--grpc-gateway_out=allow_delete_body=true:build/go \
	${SITE_PROTOS} ${ADMIN_PROTOS}

release-go: build-go
	tar -zcvf build/release/go/go-gen-source.tar.gz build/go

build-js: prepare-release

	docker run --rm \
	--user ${USER_ID} \
	-v ${ROOT_DIR}/:/proto \
	drud/protoc-builder \
	protoc \
	--proto_path=/proto \
	-I=/proto/build/dep/googleapis \
	-I=/proto/build/dep/protobuf/src \
	--js_out=import_style=commonjs,binary:/proto/build/js \
	${SITE_PROTOS} ${ADMIN_PROTOS}

	cp package.json build/js/package.json

release-js: build-js
	tar -zcvf build/release/js/javascript-gen-source.tar.gz build/js

build-ts: prepare-release
	docker run --rm \
	--user ${USER_ID} \
	-v ${ROOT_DIR}:/proto \
	drud/protoc-builder \
	protoc \
	--proto_path=/proto \
	-I=/proto/build/dep/googleapis \
	-I=/proto/build/dep/protobuf/src \
	--js_out=import_style=commonjs:/proto/build/ts \
	--grpc-web_out=import_style=commonjs+dts,mode=grpcwebtext:/proto/build/ts \
	${SITE_PROTOS} ${ADMIN_PROTOS}

	#TODO: I do not want to manage this file, and eventually want to move the build to bazel for both proto and NPM, so I am doing this here
	cp package-web.json build/ts/package.json

release-ts: build-ts
	tar -zcvf build/release/ts/typescript-gen-source.tar.gz build/ts

release: prepare-release doc release-ts release-js release-go

site-doc:
	docker run --rm \
	--user ${USER_ID} \
	-v ${ROOT_DIR}/doc/api:/out:Z \
	-v ${ROOT_DIR}/:/protos:Z \
	pseudomuto/protoc-gen-doc --doc_opt=markdown,site-api.md \
	${SITE_PROTOS}

admin-doc:
	docker run --rm \
	--user ${USER_ID} \
	-v ${ROOT_DIR}/doc/api:/out:Z \
	-v ${ROOT_DIR}/:/protos:Z \
	pseudomuto/protoc-gen-doc --doc_opt=markdown,administration-api.md \
	${ADMIN_PROTOS}

.PHONY: doc
doc: site-doc admin-doc