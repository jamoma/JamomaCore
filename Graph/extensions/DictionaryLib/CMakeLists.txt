cmake_minimum_required(VERSION 2.6)
project(DictionaryLib)

set(PROJECT_SRCS
${CMAKE_CURRENT_SOURCE_DIR}/DictionaryLib.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTDictionaryAppend.cpp
)

include_directories("${PROJECT_SOURCE_DIR}/includes")


add_library(${PROJECT_NAME} SHARED ${PROJECT_SRCS})

target_link_libraries(${PROJECT_NAME} Foundation)
target_link_libraries(${PROJECT_NAME} DSP)
target_link_libraries(${PROJECT_NAME} Graph)

### Output ###
setOutput()

### Tests ###
addTestTarget()
