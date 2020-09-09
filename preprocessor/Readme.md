# Code Preprocessor

[TOC]

# Introduction

A simple preprocessor preprocessor I generally use. It creates boilerplate functions based on tags.

* Author: Amos Buchanan
* email: amos@amosbuchanan.net
* License: MIT, https://opensource.org/licenses/MIT

# Other Useful Libraries
Some links to other libraries I use and find useful.

* Sean T Barrett Single File Libraries: https://github.com/nothings/stb
* JSMN JSON Parser: https://github.com/zserge/jsmn

# General Usage

The preprocessor reads in the source files of a given directory and outputs a generated file with various useful functions. It's mostly based on a TAG() pre-define with the various add-ons desired. See the preprocessor file for usage.

Example:

```c

TAG(Strings);
enum class enColours
{
	Red,
	Green,
	Blue
};

```

The trailing semicolon is optional. 

Before compiling, run the preprocessor:

```
$ preprocessor src/ Generated
```

This reads all the files in the `src/` directory, and creates a single file `src/Generated.h`. This file may be checked into source control, so even if you lose the preprocessor the existing functions aren't lost.

See @ref PreprocessorUsage.md for details on how to mark-up code and using the preprocessor.

# MIT License

https://opensource.org/licenses/MIT

Copyright 2020 Amos Buchanan

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
