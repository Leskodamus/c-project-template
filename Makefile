CC=gcc
CFLAGS=
SRC=src
BIN=bin

SRCS=$(wildcard $(SRC)/*.c)
BINS=$(SRCS:$(SRC)/%.c=%)

all: $(BINS)

%: $(SRC)/%.c
	$(CC) $(CFLAGS) -o $(BIN)/$@ $<

clean:
	$(RM) $(BIN)/*
