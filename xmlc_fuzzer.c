#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "./xml.c/src/xml.h"

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
    FILE *f = fopen(argv[1], "rb");
    // fseek(f, 0, SEEK_END);
    // size_t fsize = ftell(f);
    // rewind(f);

    struct xml_document *document = xml_open_document(f);
    if (document) {
      xml_document_free(document, true);
    }
    else {
      return 1;
    }

    // uint8_t* string = malloc(fsize+1);
    // memset(string, 0, fsize+1);
    // (void)fread(string, fsize, 1, f);
    // fclose(f);

    // xml_document* doc = xml_parse_document(string, fsize);
    // document_free(doc);
  }
  
  return 0;
}