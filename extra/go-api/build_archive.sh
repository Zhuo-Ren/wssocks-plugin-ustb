#!/bin/sh
set -e

# this script build go api into an archive file (static library)
FLAGS='-gcflags="all=-trimpath=${GOPATH}" -asmflags "all=-trimpath=${GOPATH}"'

go build $FLAGS --buildmode=c-archive -o libwssocks_go_api.a
