#!/bin/bash

mkdir bin
cd bin

# Use optimization for current CPU architecture
export CFLAGS="-march=native"
export CXXFLAGS="-march=native"

# Use GNU C Library malloc instead of Microsoft mimalloc
cmake -DMEMORY_ALLOCATOR=standard ..

# Confirm & compile
printf "\nPress [Enter] to compile or [Ctrl+C] to cancel > "; read && \
make -j$(nproc)
