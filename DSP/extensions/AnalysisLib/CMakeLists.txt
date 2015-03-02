cmake_minimum_required(VERSION 3.0)
project(AnalysisLib)

set(PROJECT_SRCS
${CMAKE_CURRENT_SOURCE_DIR}/AnalysisLib.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTAverage.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTZerocross.cpp

${CMAKE_CURRENT_SOURCE_DIR}/tests/TTAverage.test.cpp
)

include_directories("${PROJECT_SOURCE_DIR}/includes")

file(GLOB_RECURSE PROJECT_HDRS ${CMAKE_CURRENT_SOURCE_DIR}/includes/*.h)
add_jamoma_extension()