#!/bin/bash

pushd /workspace/OpenCV

mkdir -p build && rm -rf build # just make sure old build is removed
cmake -S example -B build -DCMAKE_BUILD_TYPE=Release -DCMAKE_PREFIX_PATH=$OPENCV_INSTALL_DIR
cmake --build build --config Release
./build/main

# popd