#!/bin/bash

# mkdir bin
# gcc include/ab_file.h -o bin/file_test

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
pushd $DIR

BINDIR=bin
THIRDPARTYLIBDIR=lib
INCLUDEDIR=include

mkdir -p bin
mkdir -p obj

WARNFLAGS="-Werror -Wno-unused-value -Wno-unused-but-set-variable -Wno-unused-variable -Wno-unused-result -Wno-unused-function -Wno-maybe-uninitialized"
CFLAGS="-save-temps=obj -g -ggdb -Og  -Wall -I/usr/include -I$INCLUDEDIR -DLINUX=1 -DAMOS_FILE_SRC=1 -DAB_LIBRARY_TEST=1 $OPTFLAGS $WARNFLAGS -pthread -std=c++17"



popd