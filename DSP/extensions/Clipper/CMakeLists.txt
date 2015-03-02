cmake_minimum_required(VERSION 3.0)
project(Clipper)

set(PROJECT_SRCS
${CMAKE_CURRENT_SOURCE_DIR}/TTClipper.cpp
)

file(GLOB_RECURSE PROJECT_HDRS ${CMAKE_CURRENT_SOURCE_DIR}/includes/*.h)
add_jamoma_extension()