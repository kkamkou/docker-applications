#!/bin/sh

IFS=";"

CMD="docker run --rm -i"
for p in `echo "${SUBLIME_LINTER_FOLDERS:-$PWD}"`; do
  [ -z `echo ${SUBLIME_LINTER_FILE:-.} | grep ${p}` ] && continue
  CMD="${CMD} -v '${p}:${p}'"
done

CMD="${CMD} eslint ${@}"
eval $CMD
