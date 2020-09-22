#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int usage() {
  printf("usage: spin <seconds>\n");
  return 1;
}

int main(int argc, char **argv) {
  if (argc < 2) {
    return usage();
  }

  int duration = atoi(argv[1]);
  if (duration < 0) {
    return usage();
  }

  time_t start = time(NULL);
  unsigned long ticks = 0, mega_ticks = 0;

  while (1) {
    for (int i = 0; i < 1000000; i++) {
      ticks++;
    }
    mega_ticks++;

    time_t now = time(NULL);
    if ((now - start) > duration) {
      break;
    }
  }

  printf("DONE %lu\n", mega_ticks);
  return 0;
}
