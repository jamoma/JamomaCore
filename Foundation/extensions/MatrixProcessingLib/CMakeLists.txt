cmake_minimum_required(VERSION 2.6)
project(MatrixProcessingLib)

set(PROJECT_SRCS
${CMAKE_CURRENT_SOURCE_DIR}/TTMatrixProcessingLib.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTMatrixStencil.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTMatrixGain.cpp

${CMAKE_CURRENT_SOURCE_DIR}/tests/TTMatrixGain.test.cpp
${CMAKE_CURRENT_SOURCE_DIR}/tests/TTMatrixStencil.test.cpp

)

include_directories("${PROJECT_SOURCE_DIR}")
include_directories("${PROJECT_SOURCE_DIR}/includes")

add_library(${PROJECT_NAME} SHARED ${PROJECT_SRCS})

target_link_libraries(${PROJECT_NAME} Foundation)

### Output ###
setOutput()

### Tests ###
addTestTarget()
