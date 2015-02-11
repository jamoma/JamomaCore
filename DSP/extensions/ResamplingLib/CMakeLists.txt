cmake_minimum_required(VERSION 2.6)
project(ResamplingLib)

set(PROJECT_SRCS
${CMAKE_CURRENT_SOURCE_DIR}/ResamplingLib.cpp
${CMAKE_CURRENT_SOURCE_DIR}/TTResample.cpp
${CMAKE_CURRENT_SOURCE_DIR}/TTStaircase.cpp
)

include_directories("${PROJECT_SOURCE_DIR}/includes")

add_library(${PROJECT_NAME} SHARED ${PROJECT_SRCS})

target_link_libraries(${PROJECT_NAME} Foundation)
target_link_libraries(${PROJECT_NAME} DSP)

### Output ###
setOutput()

### Tests ###
addTestTarget()
