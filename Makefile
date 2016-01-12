CC=clang
CFLAGS=-std=c11 -O2 -Os -Wno-missing-field-initializers -Wall -Wextra -Wpedantic -Werror -Wshadow -march=native
LIBS=
BIN_DIR=bin

SRC=$(wildcard src/*/*.c)
BIN=$(patsubst src/%/,$(BIN_DIR)/%,$(dir $(SRC)))

all: $(BIN)

$(BIN):
	@mkdir -p $(BIN_DIR)
	@echo $@
	$(CC) -o $@ $(wildcard $(patsubst $(BIN_DIR)/%,src/%/*.c,$@)) $(CFLAGS) $(LIBS)

cfiles: $(SRC)
	@echo $^

bin:
	@echo $(BIN)

clean: $(BIN_DIR)
	rm -rf $(BIN_DIR)

rebuild : clean all
