#!/bin/sh

IFS=";"

CMD="docker run --rm -i"
for p in `echo "${SUBLIME_LINTER_FOLDERS:-$PWD}"`; do
  DIRNAME="/opt/$(basename ${p})"
  CMD="${CMD} -v '${p}:${DIRNAME}'"
done

CMD="${CMD} -w '${DIRNAME}/`dirname ${SUBLIME_LINTER_FILE:-.}`' eslint ${@}"
eval $CMD
