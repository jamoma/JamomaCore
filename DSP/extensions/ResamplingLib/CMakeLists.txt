cmake_minimum_required(VERSION 3.0)
project(ResamplingLib)

set(PROJECT_SRCS
${CMAKE_CURRENT_SOURCE_DIR}/ResamplingLib.cpp
${CMAKE_CURRENT_SOURCE_DIR}/TTResample.cpp
${CMAKE_CURRENT_SOURCE_DIR}/TTStaircase.cpp
)

include_directories("${PROJECT_SOURCE_DIR}/includes")

file(GLOB PROJECT_HDRS ${CMAKE_CURRENT_SOURCE_DIR}/*.h)
add_jamoma_extension()