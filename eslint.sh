#!/bin/bash

docker run -v "${PWD}:/opt" -i eslint "$@"
