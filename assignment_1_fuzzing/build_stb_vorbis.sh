#!/bin/bash
afl-2.52b/afl-clang-fast stb_vorbis_fuzzer.c -O2 -lm -o stb_vorbis_fuzzer