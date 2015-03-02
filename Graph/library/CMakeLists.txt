cmake_minimum_required(VERSION 3.0)
project(Graph)

add_definitions(-DTTGRAPH_EXPORTS)

set(PROJECT_SRCS
${CMAKE_CURRENT_SOURCE_DIR}/source/TTGraph.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTGraphDescription.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTGraphInlet.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTGraphObjectBase.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTGraphSource.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTGraphDestination.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTGraphInput.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTGraphOutput.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTParameter.cpp
)

file(GLOB_RECURSE PROJECT_HDRS ${CMAKE_CURRENT_SOURCE_DIR}/includes/*.h)
include_directories("${PROJECT_SOURCE_DIR}/includes")

add_jamoma_library()

target_link_libraries(${PROJECT_NAME} Foundation)
target_link_libraries(${PROJECT_NAME} DSP)

### Tests ###
addTestTarget()
