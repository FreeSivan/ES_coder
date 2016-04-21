CC=g++
OBJ=galois8bit.o coder.o matrix.o

escoder : ${OBJ}
	${CC} $^ -o $@

${OBJ} : %.o : %.cpp
	${CC} -c $< -o $@

clean:
	@rm -f *.o escoder

