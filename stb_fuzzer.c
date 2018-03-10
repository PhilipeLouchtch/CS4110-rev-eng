#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

#include "./stb/stb_vorbis.c"

#ifndef __AFL_LOOP
    #define __AFL_LOOP(x) x
#endif

int main(int argc, char** argv)
{
    #ifdef __AFL_HAVE_MANUAL_CONTROL
        __AFL_INIT();
    #endif

    while(__AFL_LOOP(1000))
    {
        // pass NULL to use malloc according to stb_vorbis comments
        int* error = malloc(sizeof(int));
        stb_vorbis* result = stb_vorbis_open_filename(argv[1], error, NULL);

        printf("error code: %i,\t result: %i\n", *error, result);
    }
}