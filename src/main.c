//
// main.c
//

#include <stdlib.h>
#include <stdio.h>

int main(int argc, const char *argv[])
{
  int exit_code = argc > 1 ? atoi(argv[1]) : EXIT_SUCCESS;
  FILE *stream = exit_code == EXIT_SUCCESS ? stdout : stderr;
  if (argc > 2)
    fprintf(stream, "%s\n", argv[2]);
  return exit_code;
}
