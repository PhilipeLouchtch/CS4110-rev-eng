#!/bin/bash

# usage: $:./run.sh <path to binary>
AFL_PRELOAD=/usr/local/lib/afl/libdislocator.so afl-2.52b/afl-fuzz -T stb_vorbis -i corpus/ogg -o results_stb_vorbis -- ./stb_vorbis_fuzzer @@
