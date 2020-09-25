#!/bin/sh
set -eux
MAIN_FILE="main.go"
MAIN_OUTPUT_FILE="spotrip"

# gofmt -s -w .
go build -o ${MAIN_OUTPUT_FILE} ${MAIN_FILE} "$@"
