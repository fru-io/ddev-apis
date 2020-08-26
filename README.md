# ddev-apis

![Release](https://github.com/drud/ddev-apis/workflows/Release/badge.svg)

Public interface definitions for ddev apis.  

## API Documentation

Our documentation is generated and may be found below:

https://github.com/drud/ddev-apis/blob/main/doc/api/site-api.md

https://github.com/drud/ddev-apis/blob/main/doc/api/administration-api.md

*Please see release tags for officially supported procedures.  Procedures defined in the main branch may be in flight.*


## Build:

### Download Dependencies

Download some dependencies needed to build the project
```
    go get github.com/grpc-ecosystem/grpc-gateway/protoc-gen-grpc-gateway
    go get github.com/grpc-ecosystem/grpc-gateway/protoc-gen-swagger
    go get github.com/golang/protobuf/protoc-gen-go
```


## Develop:

This repository contains protobuf files which define and generate APIs and documentation for APIs. For more information about developing protobuf3 APIs see the language guide here:

https://developers.google.com/protocol-buffers/docs/proto3

- All fields we determine as optional to our services will have a field number greater than 16.  
- Validation on requests and their fields will be done server side.

## Generate

### From Bazel
Bazel is the preferred method of generating client code from this repository.  Bazel allows you to reference this repository and generate your client librares from another repository remotely.

Update your workspace to reference this repository as an archive:

WORKSPACE
```
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "com_ddev_apis",
    sha256 = "c395220a330628c457487b47952ee2d7724cbd732012723163c4fbc0aacf6432",
    urls = [
        "https://github.com/drud/ddev-apis/archive/v0.3.5.zip",
    ],
    strip_prefix = "ddev-apis-0.3.5"
)
```

Generate the protobuf libraries using this reference building any service[s] defined [here](https://github.com/drud/ddev-apis/tree/main/live)

BUILD
```
load("@rules_proto_grpc//go:defs.bzl", "go_grpc_compile")

go_grpc_compile(
    name = "site_grpc",
    deps = [
        "@com_ddev_apis//live/sites/v1alpha1:service_proto",
    ],
)
```

bazel will then generate the libraries and place them in ./bazel-bin/site_grpc/live/...

### Direct generation
Currently we officially support javascript/typescript web and golang APIs.  To generate client libraries in these two languages you will require the dependencies listed in [build](##Build).  You may reference the `Makefile` or consider the examples below:

#### Javascript (web with typescript bindings)
*from the repository root*
```
	protoc \
	--proto_path=. \
	--js_out=import_style=commonjs:<OUTPUT_DIRECTORY> \
	--grpc-web_out=import_style=commonjs+dts,mode=grpcwebtext:<OUTPUT_DIRECTORY> \
	<PROTO_FILES>...
```

#### Golang
```
	protoc \
	--proto_path=. \
	--go_out=plugins=grpc:<OUTPUT_DIRECTORY> \
	<PROTO_FILES>...
```

## Consume

Examples for several languages can be found in our ddev-apis-examples repository. **Link to be provided**