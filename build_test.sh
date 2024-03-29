#!/bin/bash

# mkdir bin
# gcc include/ab_file.h -o bin/file_test

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
pushd $DIR

BINDIR=bin
THIRDPARTYLIBDIR=lib
INCLUDEDIR=$DIR/include

mkdir -p bin
mkdir -p obj

WARNFLAGS="-Werror -Wno-unused-value -Wno-unused-but-set-variable -Wno-unused-variable -Wno-unused-result -Wno-unused-function -Wno-maybe-uninitialized"
CFLAGS="-save-temps=obj -g -ggdb -Og  -Wall -I/usr/include -I$INCLUDEDIR -D_LINUX=1 -DAMOS_FILE_SRC=1 -DAB_LIBRARY_TEST=1 $OPTFLAGS $WARNFLAGS -pthread -std=c++17"


# g++ $CFLAGS -DAB_LOGGER_SRC -DAB_LOGGER_TEST include/ab_logger.h -o bin/ab_logger
g++ $CFLAGS -Iinclude $DIR/test/test_logger.cpp -lczmq  -o bin/test_logger
g++ $CFLAGS -Iinclude $DIR/test/test_loggerclient.cpp -lczmq  -o bin/test_loggerclient
g++ $CFLAGS -Iinclude $DIR/test/test_loggerclient.cpp -lczmq  -o bin/test_loggerclient


popd