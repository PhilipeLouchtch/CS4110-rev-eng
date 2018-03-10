#!/bin/bash
AFL_HARDEN=1 ./afl-2.52b/afl-clang-fast -O2 -o xmlc.o -c xml.c/src/xml.c
AFL_HARDEN=1 ./afl-2.52b/afl-clang-fast -O2 -o fuzz fuzz.c xmlc.o

# test the bin
./fuzz corpus/begin.xml