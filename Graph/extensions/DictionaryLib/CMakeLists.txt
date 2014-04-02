cmake_minimum_required(VERSION 2.6)
project(DictionaryLib)

set(PROJECT_SRCS
${CMAKE_CURRENT_SOURCE_DIR}/DictionaryLib.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTDictionaryAppend.cpp
)

include_directories("${PROJECT_SOURCE_DIR}/includes")
include_directories("${PROJECT_SOURCE_DIR}/../../library/includes")
include_directories("${PROJECT_SOURCE_DIR}/../../../Foundation/library/includes")
include_directories("${PROJECT_SOURCE_DIR}/../../../DSP/library/includes")


add_library(${PROJECT_NAME} SHARED ${PROJECT_SRCS})

target_link_libraries(${PROJECT_NAME} JamomaFoundation)
target_link_libraries(${PROJECT_NAME} JamomaDSP)
target_link_libraries(${PROJECT_NAME} JamomaGraph)

setExtensionSuffix()

INSTALL(TARGETS ${PROJECT_NAME} DESTINATION "extensions")
