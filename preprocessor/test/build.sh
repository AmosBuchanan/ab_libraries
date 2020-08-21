#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
pushd $DIR/.. > /dev/null
bin/preprocessor $DIR Generated_Test
popd > /dev/null

pushd $DIR > /dev/null

BINDIR=bin
THIRDPARTYLIBDIR=lib
INCLUDEDIR=$DIR/../../include

mkdir -p bin
mkdir -p obj

WARNFLAGS="-Werror -Wno-unused-value -Wno-unused-but-set-variable -Wno-unused-variable -Wno-unused-result -Wno-unused-function -Wno-maybe-uninitialized"
CFLAGS="-save-temps=obj -g -ggdb -Og -O0  -Wall -I/usr/include -I$INCLUDEDIR -DLINUX=1 $OPTFLAGS $WARNFLAGS -pthread -std=c++17"

gcc $CFLAGS $DIR/PreprocTest.cpp -o $DIR/../bin/test && ../bin/test

popd > /dev/null