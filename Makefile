# Adapted from lab03 Makefile and w03/unit-test Makefile

# Configure compiler settings
CXX=clang++
CXXFLAGS=-gdwarf-4 -std=c++11 -Werror -D_GLIBCXX_DEBUG

# The object files for the sorting programs.
OFILES = \
	bogoSort.o bubbleSort.o insertionSort.o mergeSort.o pancakeSort.o \
	quickSort.o selectionSort.o slowSort.o
HFILES = \
	bogoSort.h bubbleSort.h insertionSort.h mergeSort.h pancakeSort.h \
	quickSort.h selectionSort.h slowSort.h
# UnitTest++ library needed for linking.
UNITTEST_LIB = -lUnitTest++

# This target builds everything. It is the default.
all: main tests

# This target builds your main program.
main: $(OFILES) $(HFILES) main.o
	$(CXX) $(CXXFLAGS) $(OFILES) main.o -o main

# This target describes how to compile a .o file from a .cpp file.
%.o: %.cpp $(HFILES) 
	$(CXX) $(CXXFLAGS) -c -o $@ $<

# This target builds your manual tests.
manualTests: $(OFILES) $(HFILES) tests.cpp
	$(CXX) $(CXXFLAGS) $(OFILES) tests.cpp -o tests

# This target deletes the temporary files we have built.
.PHONY: clean
clean:
	rm -f $(OFILES)
	rm -f main.o
	rm -f ./main
	rm -f ./tests
