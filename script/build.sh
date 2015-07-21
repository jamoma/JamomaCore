#!/bin/sh

mkdir -p build
cd build
if [ "x$TRAVIS_OS_NAME" = "xlinux" ]; then
  export CC=gcc-4.9
  export CXX=g++-4.9
fi

if [ "x$ARCH" = "xrpi" ]; then
  /tmp/cmake/bin/cmake -DCMAKE_TOOLCHAIN_FILE=../Shared/CMake/toolchains/arm-linux-gnueabihf.cmake -DCROSS_COMPILER_PATH=${PWD}/../tools/arm-bcm2708/gcc-linaro-arm-linux-gnueabihf-raspbian-x64/ ..
	make
else
	/tmp/cmake/bin/cmake ..
	make
fi
