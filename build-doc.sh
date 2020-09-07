#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
pushd $DIR

doxygen doc/doxygen.cfg

pushd preprocessor
doxygen doc/doxygen.cfg
popd

popd