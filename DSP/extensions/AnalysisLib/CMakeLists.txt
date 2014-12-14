cmake_minimum_required(VERSION 2.6)
project(AnalysisLib)

set(PROJECT_SRCS
${CMAKE_CURRENT_SOURCE_DIR}/AnalysisLib.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTAverage.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTZerocross.cpp
${CMAKE_CURRENT_SOURCE_DIR}/tests/TTAverage.test.cpp
)

include_directories("${PROJECT_SOURCE_DIR}/includes")

add_library(${PROJECT_NAME} SHARED ${PROJECT_SRCS})

target_link_libraries(${PROJECT_NAME} Foundation)
target_link_libraries(${PROJECT_NAME} DSP)

### Output ###
setOutput()

### Tests ###
addTestTarget()
