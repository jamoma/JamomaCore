cmake_minimum_required(VERSION 2.6)
project(Clipper)

set(PROJECT_SRCS
${CMAKE_CURRENT_SOURCE_DIR}/TTClipper.cpp
)

add_library(${PROJECT_NAME} SHARED ${PROJECT_SRCS})

target_link_libraries(${PROJECT_NAME} Foundation)
target_link_libraries(${PROJECT_NAME} DSP)

### Output ###
setOutput()

### Tests ###
addTestTarget()
