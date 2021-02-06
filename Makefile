CXX=g++
CXX_FLAGS=-O3 -Wall -shared -std=c++11
PYBIND11:=$(conda activate pybind_env && python3 -m pybind11 --includes)

all: module.o

module.o: src/module.cpp
	${CXX} ${CXX_FLAGS} -fPIC ${PYBIND11} src/module.cpp -o example

