#!/bin/sh

if [ "x$ARCH" = "xrpi" ]; then
  echo "We can't run test on cross compiled binary for now."
  return 0
fi

cd build
make install
if [ "x$TRAVIS_OS_NAME" = "xlinux" ]; then
  export LD_LIBRARY_PATH=${PWD}/JamomaInstallation/jamoma/lib;${LD_LIBRARY_PATH}
else
  export DYLD_LIBRARY_PATH=${PWD}/JamomaInstallation/jamoma/lib
fi
make test
