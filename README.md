# ddev-apis

**This project is young and may have outdated instructions**



Public interface definitions for ddev apis

**This repository is structured after the following project:**
https://github.com/googleapis/googleapis/tree/master/google


## Build:

### Download Dependencies

Download some dependencies needed to build the project
```
    go get github.com/grpc-ecosystem/grpc-gateway/protoc-gen-grpc-gateway
    go get github.com/grpc-ecosystem/grpc-gateway/protoc-gen-swagger
    go get github.com/golang/protobuf/protoc-gen-go
```

### Create a test directory structure for generation
As an example we can generate the stubs here, however this is not a repository intended for this code
```
mkdir -p build/go/live
mkdir -p build/js/live
mkdir -p build/dep
```

### Download dependencies
Download the googleapis proto files to support the rest client generation.  It would be ideal to not support rest initially.
```
git clone https://github.com/googleapis/googleapis.git build/dep/googleapis
```
We will set this as a proto_path directive


To use any output library <name>_out, EG `go_out`, in protoc you need a binary on your system called protoc protoc-gen-<name>.

Below are some examples to consider downloading:
*Assuming `$GOPATH/bin` is in your path*

#### For the swagger generation:
```
go get \
    github.com/grpc-ecosystem/grpc-gateway/protoc-gen-grpc-gateway \
    github.com/grpc-ecosystem/grpc-gateway/protoc-gen-swagger \
    github.com/golang/protobuf/protoc-gen-go
```

#### For the go interfaces generation:
```
go get github.com/golang/protobuf/protoc-gen-go
```

#### For the javascript interfaces generation
visit https://github.com/grpc/grpc-web/tree/master/packages/grpc-web

### Generate the go service interfaces

```
protoc \
  --proto_path=build/dep/googleapis \
  --proto_path=. \
  --go_out=plugins=grpc:build/go \
  --swagger_out=allow_delete_body=true:build/go \
  --grpc-gateway_out=allow_delete_body=true:build/go/live \
  live/billing/v1alpha1/subscription.proto \
  live/billing/v1alpha1/service.proto
```

### Generate the js client interfaces
```
protoc \
  --proto_path=build/dep/googleapis \
  --proto_path=. \
  --js_out=import_style=commonjs:build/js/live \
  --grpc-web_out=import_style=commonjs,mode=grpcwebtext:build/js/live \
  live/billing/v1alpha1/subscription.proto \
  live/billing/v1alpha1/service.proto
```