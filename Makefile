.PHONY: all
all: format test build

.PHONY: format
format:
	clang-format src/* include/* -i

.PHONY: build
build:
	mkdir -p build
	cd build && \
	cmake wx-config --libs wx-config --cxxflags .. && \
	make

.PHONY: debug
debug:	
	mkdir -p build
	cd build && \
	cmake -DCMAKE_BUILD_TYPE=debug wx-config --libs wx-config --cxxflags  .. && \
	make

.PHONY: clean
clean:
	rm -rf build
