#!/bin/sh
set -eux
MAIN_FILE="cmd/spotrip/main.go"
MAIN_OUTPUT_FILE="main"

gofmt -s -w .
go build ${MAIN_FILE} -o ${MAIN_OUTPUT_FILE} "$@"
