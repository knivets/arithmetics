CC=gcc
CFLAGS=-g -I.

c:
	$(CC) $(CFLAGS) main.c lexer.c parser.c -o main 
debug:
	gdb main
