#include <stdio.h>
#include <stdint.h>

int
main() {
  const uint64_t
    max = 50;
  uint64_t
    i,
    result = 0;

  uint64_t fibs [max];

  fibs[0] = 1;
  fibs[1] = 2;

  // manually add fibs[1] since it's even
  result += fibs[1];

  for (i = 2; i < max; i++) {
    fibs[i] = fibs[i - 1] + fibs[i - 2];
    if (fibs[i] > 4000000) break;
    if (fibs[i] % 2 == 0) result += fibs[i];
  }

  printf("%lu\n", result);
  return 0;
}
