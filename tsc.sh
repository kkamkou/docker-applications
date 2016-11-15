#!/bin/sh

docker run --rm -i -v "${PWD}:/opt" typescript "$@"
