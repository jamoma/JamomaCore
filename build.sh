#!/bin/bash

mkdir -p build
cd build
rm -rf *
cmake -DCMAKE_INSTALL_PREFIX=${PWD}/JamomaInstallation -DCMAKE_OSX_ARCHITECTURES="x86_64;i386" .. # change installation directory, enable FAT Binary
make -j 2 # "-j 2" to use 2 threads to build
make install
export DYLD_LIBRARY_PATH=${PWD}/JamomaInstallation/jamoma/lib
make test
