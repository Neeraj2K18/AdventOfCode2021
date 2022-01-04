# Copyright © 2021  Neeraj Singhal
# All rights reserved

#!/bin/bash
### START ###
cd ..
CMAKE_VERSION=$(cmake --version)
CLANG_VERSION=$(clang --version)
echo -e $CMAKE_VERSION
echo -e $CLANG_VERSION
mkdir -p build && cd build &&
    CXX=clang++ CC=clang cmake .. && make -j4
#clear
#echo "Test Results..."
#./tests
echo "Output..."
./AoC
### END ###
