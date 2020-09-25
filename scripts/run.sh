#!/bin/sh
set -eux
MAIN_FILE="main.go"
MAIN_OUTPUT_FILE="main"

# reset
# gofmt -s -w .
go run ${MAIN_FILE} "$@"