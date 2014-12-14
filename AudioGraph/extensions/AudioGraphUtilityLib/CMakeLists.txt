cmake_minimum_required(VERSION 2.6)
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

add_library(${PROJECT_NAME} SHARED ${PROJECT_SRCS})

target_link_libraries(${PROJECT_NAME} Foundation)
target_link_libraries(${PROJECT_NAME} DSP)

### Output ###
setOutput()

### Tests ###
addTestTarget()
