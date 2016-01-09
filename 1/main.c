#include <stdio.h>
#include <stdint.h>

int
main(uint32_t argc, char** argv) {
  uint64_t sum = 0;
  for (auto i = 0; i < 1000; i++) {
    if (i % 3 == 0 || i % 5 == 0) {
      sum += i;
    }
  }
  printf("%s", sum);
}
