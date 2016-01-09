CC=clang
CFLAGS=-std=c11 -O2 -Os -Wno-missing-field-initializers -Wall -Wextra -Wpedantic -Werror -Wshadow -march=native
LIBS=

SRC=$(wildcard */*.c)
OBJ=$(SRCS:.c=.o)

build: $(SRC)
	$(CC) -o $@ $^ $(CFLAGS) $(LIBS)
