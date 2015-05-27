#!/bin/bash

docker run --rm -i -v "${PWD}:/opt" eslint "$@"
