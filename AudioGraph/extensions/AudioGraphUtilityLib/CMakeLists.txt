cmake_minimum_required(VERSION 3.0)
project(AudioGraphUtilityLib)

set(PROJECT_SRCS
${CMAKE_CURRENT_SOURCE_DIR}/AudioGraphUtilityLib.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTAudioGraphJoin.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTAudioGraphOffset.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTAudioGraphPick.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTAudioGraphSig.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTAudioGraphSplit.cpp
)

include_directories("${CMAKE_CURRENT_SOURCE_DIR}/includes")
include_directories("${PROJECT_SOURCE_DIR}/../../library/includes")

file(GLOB_RECURSE PROJECT_HDRS ${CMAKE_CURRENT_SOURCE_DIR}/includes/*.h)
add_jamoma_extension()