CC=clang
CFLAGS=-std=c11 -O2 -Os -Wno-missing-field-initializers -Wall -Wextra -Wpedantic -Werror -Wshadow -march=native
LIBS=
BIN_DIR=bin

SRC=$(wildcard */*.c)
BIN=$(patsubst %/,$(BIN_DIR)/%,$(dir $(SRC)))

all: $(BIN)

$(BIN):
	@mkdir -p $(BIN_DIR)
	@echo $@
	echo $(patsubst $(BIN_DIR)/%,%/*.c,$@)
	$(CC) -o $@ $(wildcard $(patsubst $(BIN_DIR)/%,%/*.c,$@)) $(CFLAGS) $(LIBS)

cfiles: $(SRC)
	@echo $^

bin:
	@echo $(BIN)

clean: $(BIN_DIR)
	rm -rf $(BIN_DIR)

rebuild : clean all

# $(CC) -o $(f:%/*.c=BIN_DIR/%) $(f) $(CFLAGS) $(LIBS)
