cmake_minimum_required(VERSION 3.0)
project(Plugtastic)

set(PROJECT_SRCS
${CMAKE_CURRENT_SOURCE_DIR}/Plugtastic.cpp
${CMAKE_CURRENT_SOURCE_DIR}/PlugtasticInput.cpp
${CMAKE_CURRENT_SOURCE_DIR}/PlugtasticOutput.cpp
)

file(GLOB_RECURSE PROJECT_HDRS ${CMAKE_CURRENT_SOURCE_DIR}/includes/*.h)
add_jamoma_extension()