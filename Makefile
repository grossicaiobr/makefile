CC = g++
CFLAGS = -std=c++11 -Wall

./build/main: ./build/Heroi.o ./build/Vilao.o ./build/Personagem.o ./build/main.o
	$(CC) $(CFLAGS) ./build/*.o -o ./build/main

 ./build/main.o : ./src/main.cpp ./include/Heroi.hpp ./include/Vilao.hpp ./include/Personagem.hpp
	$(CC) $(CFLAGS) -I ./include/ -c ./src/main.cpp -o ./build/main.o

 ./build/Heroi.o : ./src/entidades/Heroi.cpp ./include/Heroi.hpp
	$(CC) $(CFLAGS) -I ./include/ -c ./src/entidades/Heroi.cpp -o ./build/Heroi.o

 ./build/Vilao.o : ./src/entidades/Vilao.cpp ./include/Vilao.hpp
	$(CC) $(CFLAGS) -I ./include/ -c ./src/entidades/Vilao.cpp -o ./build/Vilao.o
	
 ./build/Personagem.o : ./src/entidades/Personagem.cpp ./include/Personagem.hpp
	$(CC) $(CFLAGS) -I ./include/ -c ./src/entidades/Personagem.cpp -o ./build/Personagem.o

clean:
	rm -f ./build/*.o