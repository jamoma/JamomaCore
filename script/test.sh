#!/bin/sh

if [ "x$ARCH" = "xrpi" ]; then
  echo "We can't run test on cross compiled binary for now."
  return 0
fi

cd build
make install
LD_LIBRARY_PATH=${PWD}/JamomaInstallation/jamoma/lib DYLD_LIBRARY_PATH=${PWD}/JamomaInstallation/jamoma/lib make test
