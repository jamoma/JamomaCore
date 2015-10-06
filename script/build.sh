#!/bin/sh


## coverity does a double build: 1x for coverity, 1x the ordinary build
## let's suppress the 2nd one
if [ "x${COVERITY_SCAN_BRANCH}" = "x1" ]; then
  echo "looks like we are running a coverity-scan build: stopping"
  exit 0
fi

mkdir -p build
cd build
if [ "x$TRAVIS_OS_NAME" = "xlinux" ]; then
  export CC=gcc-4.9
  export CXX=g++-4.9
fi

if [ "x$ARCH" = "xrpi" ]; then
  /tmp/cmake/bin/cmake -DCMAKE_INSTALL_PREFIX=${PWD}/JamomaInstallation -DCMAKE_TOOLCHAIN_FILE=../Shared/CMake/toolchains/arm-linux-gnueabihf.cmake -DCROSS_COMPILER_PATH=${PWD}/../tools/arm-bcm2708/gcc-linaro-arm-linux-gnueabihf-raspbian-x64/ ..
else
	/tmp/cmake/bin/cmake -DCMAKE_INSTALL_PREFIX=${PWD}/JamomaInstallation  ..
fi
make
