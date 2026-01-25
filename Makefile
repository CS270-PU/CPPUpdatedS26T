CPP_COMPILER = g++
CXXFLAGS = -g -O0 -Wall -fno-omit-frame-pointer
CPP_VERSION = c++17

INCLUDES = -Iinclude
VALGRIND_FLAGS = --leak-check=full --show-leak-kinds=all --track-origins=yes

BUILD_DIR = build
OBJ_DIR = $(BUILD_DIR)/obj

SRC = $(wildcard src/*.cpp)
OBJ = $(patsubst src/%.cpp,$(OBJ_DIR)/%.o,$(SRC))

.PHONY: all runMe clean valgrind runTests

all: bin bin/main.exe

bin:
	mkdir -p bin

$(OBJ_DIR):
	mkdir -p $(OBJ_DIR)

# Compile each .cpp to a .o (rebuilds only what changed)
$(OBJ_DIR)/%.o: src/%.cpp | $(OBJ_DIR)
	$(CPP_COMPILER) $(CXXFLAGS) $(INCLUDES) -std=$(CPP_VERSION) -c $< -o $@

# Link all objects into the program
bin/main.exe: bin $(OBJ)
	$(CPP_COMPILER) $(CXXFLAGS) -std=$(CPP_VERSION) -o $@ $(OBJ)

runMe: bin/main.exe
	./bin/main.exe

valgrind: all
	valgrind $(VALGRIND_FLAGS) ./bin/main.exe

# One command to configure/build/run ALL unit tests
runTests:
	rm -rf $(BUILD_DIR)
	cmake -S . -B $(BUILD_DIR) -DCMAKE_BUILD_TYPE=Debug -DCMAKE_CXX_COMPILER=/usr/bin/g++
	cmake --build $(BUILD_DIR)
	cd $(BUILD_DIR) && ctest -V

clean:
	rm -rf bin/main.exe bin/*.o bin/main.dSYM $(BUILD_DIR) pdfs/*.pdf Testing DartConfiguration.tcl CTestTestfile.cmake
