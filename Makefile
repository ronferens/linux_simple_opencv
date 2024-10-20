CC = g++
PROJECT = new_output
SRC = opencv_test.cpp
LIBS = `pkg-config --cflags --libs opencv4`
$(PROJECT) : $(SRC)
	$(CC) $(SRC) $(LIBS) -o $(PROJECT)