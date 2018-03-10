#!/bin/bash

# usage: $:./run.sh <path to binary> <dictionary> <corpus>
AFL_PRELOAD=/usr/local/lib/afl/libdislocator.so afl-2.52b/afl-fuzz -T 8cc -x c.dict -i corpus_ccode -o results -- 8cc/8cc -c @@ -o /dev/null
