#!/bin/bash

# Run this script from its directory, so that badgerpb4.proto is where it's expected to
# be.

go install github.com/aperturerobotics/protobuf-go-lite/cmd/protoc-gen-go-lite@latest
protoc --go-lite_out=. --go-lite_opt=paths=source_relative --plugin=protoc-gen-go-lite=$(go env GOPATH)/bin/protoc-gen-go-lite badgerpb4.proto
