#!/bin/bash

IFS=";"

CMD="docker run --rm -i"
for p in `echo "${SUBLIME_ESLINT_FOLDERS:-$PWD}"`; do
  DIRNAME="/opt/$(basename ${p})"
  CMD="${CMD} -v '${p}:${DIRNAME}'"
done

CMD="${CMD} -w '${DIRNAME}/`dirname ${SUBLIME_ESLINT_FILE:-.}`' eslint ${@}"
eval $CMD
