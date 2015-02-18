cmake_minimum_required(VERSION 3.0)
project(MatrixProcessingLib)

set(PROJECT_SRCS
${CMAKE_CURRENT_SOURCE_DIR}/TTMatrixProcessingLib.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTMatrixStencil.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTMatrixGain.cpp

${CMAKE_CURRENT_SOURCE_DIR}/tests/TTMatrixGain.test.cpp
${CMAKE_CURRENT_SOURCE_DIR}/tests/TTMatrixStencil.test.cpp)

file(GLOB_RECURSE PROJECT_HDRS ${CMAKE_CURRENT_SOURCE_DIR}/includes/*.h)

include_directories("${PROJECT_SOURCE_DIR}")
include_directories("${PROJECT_SOURCE_DIR}/includes")


add_jamoma_extension()


