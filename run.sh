#!/bin/bash
AFL_PRELOAD=/usr/local/lib/afl/libdislocator.so afl-2.52b/afl-fuzz -T xml.c -x afl-2.52b/dictionaries/xml.dict -i corpus -o results -- ./fuzz @@
