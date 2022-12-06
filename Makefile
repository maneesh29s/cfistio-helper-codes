CXXFLAGS=-std=c++14 -Wall -Wextra -pedantic -O3 `pkg-config --libs cfitsio`

CFLAGS=-std=c99 -Wall -Wextra -pedantic -O3 `pkg-config --libs cfitsio`

DEBUGFLAGS=-fsanitize=address -g

CXX=g++

CC=gcc

%.out: src/%.c
	$(CC) -o $@ $< $(CFLAGS) $(OPT)

clean:
	rm -rf build/*

dir:
	mkdir -p build

.PHONY: all clean dir

