main: main.o lib.o
	g++ main.o lib.o -o main

lib.o: lib.c lib.h
	gcc -c lib.c

main.o: main.cpp lib.h
	g++ -c main.cpp

clean:
	rm lib.o main.o main
