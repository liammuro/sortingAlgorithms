# Configure compiler settings
CXX=clang++
CXXFLAGS=-gdwarf-4 -std=c++11 -Werror -D_GLIBCXX_DEBUG

# # This target builds your program.
# firstVowel: firstVowelLib.o firstVowel.o
# 	$(CXX) $(CXXFLAGS) -o $@ $^

# # This target describes how to compile a .o file from a .cpp file.
# %.o: %.cpp
# 	$(CXX) $(CXXFLAGS) -c -o $@ $<

# # This target builds the automated tests.
# tests: firstVowelLib.o tests.o
# 	$(CXX) $(CXXFLAGS) -lUnitTest++ -o $@ $^

# # This target deletes the temporary files we have built.
# .PHONY: clean
# clean:
# 	rm -f *.o firstVowel tests
