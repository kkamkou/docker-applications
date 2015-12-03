#!/bin/sh

docker run --rm -i -v "${PWD}:/opt" -p 4200:4200 -p 49152:49152 ember-cli-babel "$@"
