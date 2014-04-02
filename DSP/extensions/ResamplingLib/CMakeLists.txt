cmake_minimum_required(VERSION 2.6)
project(ResamplingLib)

set(PROJECT_SRCS
${CMAKE_CURRENT_SOURCE_DIR}/ResamplingLib.cpp
${CMAKE_CURRENT_SOURCE_DIR}/TTResample.cpp
${CMAKE_CURRENT_SOURCE_DIR}/TTStaircase.cpp
)

include_directories("${PROJECT_SOURCE_DIR}/includes")
include_directories("${PROJECT_SOURCE_DIR}/../../library/includes")
include_directories("${PROJECT_SOURCE_DIR}/../../../Foundation/library/includes")

add_library(${PROJECT_NAME} SHARED ${PROJECT_SRCS})

target_link_libraries(${PROJECT_NAME} JamomaFoundation)
target_link_libraries(${PROJECT_NAME} JamomaDSP)

setExtensionSuffix()

INSTALL(TARGETS ${PROJECT_NAME} DESTINATION "extensions")
