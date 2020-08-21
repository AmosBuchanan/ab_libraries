BUILDDIR=build
BINDIR=bin
THIRDPARTYLIBDIR=lib
INCLUDEDIR=include
PREPROCDIR=preproc-src
PROJECT_NAME=mwp302
VERSION?=0.2.12

ENABLE_VOIP=1
ENABLE_ANALOG=1
TESTMODE?=0

SO_LIBRARY=$(PROJECT_NAME)-$(VERSION)
SO_TARGET=bin/lib$(SO_LIBRARY).a
EXE_TARGET=bin/nc-$(PROJECT_NAME)
EXE_PREPROCESSOR=mwp_302-preprocessor
LITE_TARGET=bin/lite-$(PROJECT_NAME)

WARNFLAGS=-Werror -Wno-unused-value -Wno-unused-but-set-variable -Wno-unused-variable -Wno-unused-result -Wno-unused-function -Wno-maybe-uninitialized
PREPROCFLAGS=-save-temps=obj -g -O2 -Wall -I/usr/include -I$(INCLUDEDIR) -Isrc -Ilibsrc $(OPTFLAGS) $(WARNFLAGS) -pthread -std=c++17
CFLAGS=-save-temps=obj -g -O2 -Wall -I${SDKTARGETSYSROOT}/usr/include -I$(INCLUDEDIR) -Isrc -Ilibsrc $(OPTFLAGS) $(WARNFLAGS) -pthread -std=c++17 -DENABLE_ANALOG=$(ENABLE_ANALOG) -DENABLE_VOIP=$(ENABLE_VOIP) -DTESTMODE=$(TESTMODE)
DEBUGFLAGS=-save-temps=obj -g -O0 -Wall -I${SDKTARGETSYSROOT}/usr/include -I$(INCLUDEDIR) -Isrc -Ilibsrc $(OPTFLAGS) $(WARNFLAGS) -pthread -std=c++17 -DDEBUG=1 -DENABLE_ANALOG=$(ENABLE_ANALOG) -DENABLE_VOIP=$(ENABLE_VOIP) -DTESTMODE=$(TESTMODE)
LDLIBS=-Llib/ubuntu -L$(BUILDDIR) -L$(BINDIR) -L$(THIRDPARTYLIBDIR) $(OPTLIBS) $(shell pkg-config --libs libpjproject)  -lpthread	-lm -lasound -lconfig -lfftw3
PREFIX?=/usr/local
#CC=gcc
#CXX=g++
#AR=gcc-ar



SOURCES=src/nc-app.cpp
OBJECTS=$(BUILDDIR)/nc-app.o

L_SOURCES=lite-src/lite-app.cpp
L_OBJECTS=$(BUILDDIR)/lite-app.o

LIBSOURCES=libsrc/mwp_302.cpp
LIBOBJECTS=build/mwp_302.o

PREPROCSOURCES=$(PREPROCDIR)/mwp_302-preprocessor.cpp
PREPROCOBJECTS=$(BUILDDIR)/mwp_302-preprocessor.o



TEST_SRC=$(wildcard tests/*_tests.cpp)
TEST_OBJ=$(patsubst %.cpp,%.o,$(TEST_SRC))
TESTS=$(patsubst %.cpp,%,$(TEST_SRC))

# The Target Build
all: build platform $(EXE_TARGET) $(LITE_TARGET)

dev: CFLAGS=$(DEBUGFLAGS)
dev: preproc all test

####
# Executables

$(EXE_TARGET): build $(SO_TARGET) $(OBJECTS)
	$(CXX) $(CFLAGS) $(OBJECTS)  -lncurses -lcdk -l$(SO_LIBRARY) $(LDLIBS) -o $@

$(OBJECTS): build/%.o: src/%.cpp
ifneq (,$(findstring armv7,$(CXX)))
	$(CXX) $(CFLAGS) $< -DPJ_IS_BIG_ENDIAN=0 -DPJ_IS_LITTLE_ENDIAN=1 -c -o $@
else
	$(CXX) $(CFLAGS) $< -c -o $@
endif

$(LITE_TARGET): build $(SO_TARGET) $(L_OBJECTS)
	$(CXX) $(CFLAGS) $(L_OBJECTS)  -lncurses -lcdk -l$(SO_LIBRARY) $(LDLIBS) -o $@

$(L_OBJECTS): build/%.o: lite-src/%.cpp
ifneq (,$(findstring armv7,$(CXX)))
	$(CXX) $(CFLAGS) $< -DPJ_IS_BIG_ENDIAN=0 -DPJ_IS_LITTLE_ENDIAN=1 -c -o $@
else
	$(CXX) $(CFLAGS) $< -c -o $@
endif

####
# Libraries.

$(SO_TARGET): $(LIBOBJECTS)
	$(AR) cr $@ $^ build/platform.o

$(LIBOBJECTS): build/%.o: libsrc/%.cpp
ifneq (,$(findstring armv7,$(CXX)))
	$(CXX) $(CFLAGS) $(LDLIBS) -lplatform $< -DPJ_IS_BIG_ENDIAN=0 -DPJ_IS_LITTLE_ENDIAN=1 -c -o $@
else
	$(CXX) $(CFLAGS) $(LDLIBS) -lplatform $< -c -o $@
endif

platform:
ifneq (,$(findstring armv7,$(CXX)))
	$(CXX) $(CFLAGS) $(LDLIBS) include/platform.cpp -DPJ_IS_BIG_ENDIAN=0 -DPJ_IS_LITTLE_ENDIAN=1 -c -o build/platform.o
else
	$(CXX) $(CFLAGS) $(LDLIBS) include/platform.cpp -c -o build/platform.o
endif
	$(AR) cr bin/libplatform.a build/platform.o


## Propressor

preproc: CFLAGS=-save-temps=obj -g -O2 -Wall -I/usr/include -I$(INCLUDEDIR) -Isrc -Ilibsrc $(OPTFLAGS) $(WARNFLAGS) -pthread -std=c++17
preproc: build $(EXE_PREPROCESSOR)
	$(BUILDDIR)/$(EXE_PREPROCESSOR)

$(EXE_PREPROCESSOR): build $(PREPROCOBJECTS)
	gcc $(CFLAGS) $(PREPROCOBJECTS) -o $(BUILDDIR)/$@

$(PREPROCOBJECTS): build/%.o: $(PREPROCDIR)/%.cpp
	gcc $(CFLAGS) $< -c -o $@

####

build:
	@mkdir -p build
	@mkdir -p bin

run: $(EXE_TARGET)
	@$@

####
#  Tests
.PHONY: test
test:
	$(MAKE) dev -C tests

###KENNY: I changed this to use make dev^^

valgrind:
       VALGRIND="valgrind --log-file=/tmp/valgrind-%p.log" $(MAKE)

# The Cleaner
clean:
	rm -rf $(BUILDDIR) $(BINDIR) $(OBJECTS) $(TESTS)
	rm -f tests/tests.log
	find . -name "*.gc*" -exec rm {} \;
	rm -rf `find . -name "*.dSYM" -print`
