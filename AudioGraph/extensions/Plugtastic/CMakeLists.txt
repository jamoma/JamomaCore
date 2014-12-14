cmake_minimum_required(VERSION 2.6)
project(Plugtastic)

set(PROJECT_SRCS
${CMAKE_CURRENT_SOURCE_DIR}/Plugtastic.cpp
${CMAKE_CURRENT_SOURCE_DIR}/PlugtasticInput.cpp
${CMAKE_CURRENT_SOURCE_DIR}/PlugtasticOutput.cpp
)

add_library(${PROJECT_NAME} SHARED ${PROJECT_SRCS})

target_link_libraries(${PROJECT_NAME} Foundation)
target_link_libraries(${PROJECT_NAME} DSP)
target_link_libraries(${PROJECT_NAME} Graph)
target_link_libraries(${PROJECT_NAME} AudioGraph)

### Output ###
setOutput()

### Tests ###
addTestTarget()
