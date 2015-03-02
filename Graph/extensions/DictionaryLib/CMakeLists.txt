cmake_minimum_required(VERSION 3.0)
project(DictionaryLib)

set(PROJECT_SRCS
${CMAKE_CURRENT_SOURCE_DIR}/DictionaryLib.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTDictionaryAppend.cpp
)

file(GLOB_RECURSE PROJECT_HDRS ${CMAKE_CURRENT_SOURCE_DIR}/includes/*.h)

include_directories("${PROJECT_SOURCE_DIR}/includes")

add_jamoma_extension()