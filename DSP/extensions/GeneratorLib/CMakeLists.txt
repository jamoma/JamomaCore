cmake_minimum_required(VERSION 3.0)
project(GeneratorLib)

set(PROJECT_SRCS
${CMAKE_CURRENT_SOURCE_DIR}/GeneratorLib.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTAdsr.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTCount.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTNoise.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTPhasor.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTPulseSub.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTRamp.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTWavetable.cpp
${CMAKE_CURRENT_SOURCE_DIR}/tests/TTPhasor.test.cpp
${CMAKE_CURRENT_SOURCE_DIR}/tests/TTRamp.test.cpp
)

include_directories("${PROJECT_SOURCE_DIR}/includes")
include_directories("${PROJECT_SOURCE_DIR}/../../../Foundation/library/Mersenne-1.1")

file(GLOB_RECURSE PROJECT_HDRS ${CMAKE_CURRENT_SOURCE_DIR}/includes/*.h)
add_jamoma_extension()