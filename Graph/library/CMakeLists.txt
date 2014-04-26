cmake_minimum_required(VERSION 2.6)
project(JamomaGraph)

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
include_directories("${PROJECT_SOURCE_DIR}/../../Foundation/library/includes")
include_directories("${PROJECT_SOURCE_DIR}/../../DSP/library/includes")


add_library(${PROJECT_NAME} SHARED ${PROJECT_SRCS})

target_link_libraries(${PROJECT_NAME} JamomaFoundation)
target_link_libraries(${PROJECT_NAME} JamomaDSP)

addAppleFramework(Carbon)

INSTALL(TARGETS ${PROJECT_NAME} DESTINATION "lib")
INSTALL(FILES ${PROJECT_HDRS} DESTINATION include)
