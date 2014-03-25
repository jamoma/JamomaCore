cmake_minimum_required(VERSION 2.6)
project(Clipper)

set(PROJECT_SRCS
${CMAKE_CURRENT_SOURCE_DIR}/TTClipper.cpp
)

include_directories("${PROJECT_SOURCE_DIR}/../../library/includes")
include_directories("${PROJECT_SOURCE_DIR}/../../../Foundation/library/includes")

add_library(${PROJECT_NAME} SHARED ${PROJECT_SRCS})

target_link_libraries(${PROJECT_NAME} JamomaFoundation)
target_link_libraries(${PROJECT_NAME} JamomaDSP)

setExtensionSuffix()
