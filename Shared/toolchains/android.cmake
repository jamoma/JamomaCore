set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_VERSION 1)
set(CMAKE_SYSTEM_PROCESSOR arm)

set(FLOAT_ABI_SUFFIX "")

set(CMAKE_C_COMPILER "/opt/android-toolchain/bin/arm-linux-androideabi-clang")
set(CMAKE_CXX_COMPILER "/opt/android-toolchain/bin/arm-linux-androideabi-clang++")
#set(CMAKE_CXX_FLAGS "-target armv7a-linux-androideabi --sysroot=/opt/arm-linux-androideabi-4.8")

# where is the target environment
SET(CMAKE_FIND_ROOT_PATH  /opt/android-toolchain)
# search for programs in the build host directories
SET(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM ONLY)
# for libraries and headers in the target directories
SET(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
SET(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)


set(CMAKE_LIBRARY_PATH ${CMAKE_LIBRARY_PATH} /opt/android-toolchain/arm-linux-androideabi/lib)
set(CMAKE_INCLUDE_PATH ${CMAKE_INCLUDE_PATH} /opt/android-toolchain/arm-linux-androideabi/include)

SET(ANDROID TRUE)

