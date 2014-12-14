cmake_minimum_required(VERSION 2.6)
project(Crossfade)

set(PROJECT_SRCS
${CMAKE_CURRENT_SOURCE_DIR}/Crossfade.cpp
)

add_library(${PROJECT_NAME} SHARED ${PROJECT_SRCS})

target_link_libraries(${PROJECT_NAME} Foundation)
target_link_libraries(${PROJECT_NAME} DSP)

### Output ###
setOutput()

### Tests ###
addTestTarget()
