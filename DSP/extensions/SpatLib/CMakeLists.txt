cmake_minimum_required(VERSION 3.0)
project(SpatLib)

set(PROJECT_SRCS
${CMAKE_CURRENT_SOURCE_DIR}/TTSpatLib.cpp
${CMAKE_CURRENT_SOURCE_DIR}/TTSpat.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTSpatBase.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTSpatBaseRenderer.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTSpatEntity.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTSpatDBAP.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTSpatDBAPRenderer.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTSpatDBAPSource.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTSpatSnap.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTSpatSnapRenderer.cpp
${CMAKE_CURRENT_SOURCE_DIR}/tests/TTSpatDBAP.test.cpp
${CMAKE_CURRENT_SOURCE_DIR}/tests/TTSpatSnap.test.cpp
)

include_directories("${PROJECT_SOURCE_DIR}/")
include_directories("${PROJECT_SOURCE_DIR}/includes")

file(GLOB_RECURSE PROJECT_HDRS ${CMAKE_CURRENT_SOURCE_DIR}/includes/*.h)
add_jamoma_extension()

