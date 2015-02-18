cmake_minimum_required(VERSION 3.0)
project(OSC)

set(PROJECT_SRCS
${CMAKE_CURRENT_SOURCE_DIR}/../../library/ProtocolLib/Protocol.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/OSC.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/OSCSenderManager.cpp
)

include_directories("${PROJECT_SOURCE_DIR}/")
include_directories("${PROJECT_SOURCE_DIR}/includes")
include_directories("${PROJECT_SOURCE_DIR}/../../library/ProtocolLib")

file(GLOB_RECURSE PROJECT_HDRS ${CMAKE_CURRENT_SOURCE_DIR}/includes/*.h)
add_jamoma_extension()