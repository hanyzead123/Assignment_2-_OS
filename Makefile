CC = gcc
CFLAGS = -Wall -Wextra -std=c11

all: fork output_program simple_p

fork: fork.c
        $(CC) $(CFLAGS) fork.c -o fork

output_program: file1.c file2.c
        $(CC) $(CFLAGS) file1.c file2.c -o output_program

simple_p: simple_p.c
        $(CC) $(CFLAGS) simple_p.c -o simple_p

clean:
        rm -f fork output_program simple_p


