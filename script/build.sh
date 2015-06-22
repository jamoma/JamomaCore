#!/bin/sh

mkdir -p build
cd build
if [ "x$ARCH" = "xrpi" ]; then
	if [ "$TRAVIS_OS_NAME" != "osx" ]; then
		/tmp/cmake/bin/cmake -DCMAKE_TOOLCHAIN_FILE=../Shared/CMake/toolchains/arm-linux-gnueabihf.cmake -DCROSS_COMPILER_PATH=${PWD}/../tools/arm-bcm2708/gcc-linaro-arm-linux-gnueabihf-raspbian-x64/ ..
		make
	fi
else
	/tmp/cmake/bin/cmake ..
	make
fi
