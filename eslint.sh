#!/bin/bash

DIR="${PWD}"
for (( i=1; i<=$#; i++ )); do
  case "${!i}" in
    --stdin-filename)
      DIR="${DIR/$(dirname ${@:$((i+1))})}"
    ;;
    *);;
  esac
done

docker run --rm -i -v "${DIR%/}:/opt" eslint "$@"
