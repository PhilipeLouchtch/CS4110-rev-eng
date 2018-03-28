#!/bin/bash

# usage: $:./run.sh <path to binary> <dictionary> <corpus>
AFL_PRELOAD=/usr/local/lib/afl/libdislocator.so afl-2.52b/afl-fuzz -T ${1} -x ${2} -i ${3} -o results -- ${1} @@
