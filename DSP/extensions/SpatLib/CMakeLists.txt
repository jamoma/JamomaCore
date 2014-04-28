cmake_minimum_required(VERSION 2.6)
project(SpatLib)

set(PROJECT_SRCS
${CMAKE_CURRENT_SOURCE_DIR}/TTSpatLib.cpp
${CMAKE_CURRENT_SOURCE_DIR}/TTSpat.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTSpatBase.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTSpatBaseRenderer.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTSpatEntity.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTSpatDBAP.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTSpatDBAPRenderer.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTSpatDBAPSource.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTSpatSnap.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTSpatSnapRenderer.cpp
${CMAKE_CURRENT_SOURCE_DIR}/tests/TTSpatDBAP.test.cpp
${CMAKE_CURRENT_SOURCE_DIR}/tests/TTSpatSnap.test.cpp
)

include_directories("${PROJECT_SOURCE_DIR}/")
include_directories("${PROJECT_SOURCE_DIR}/includes")
include_directories("${PROJECT_SOURCE_DIR}/../../library/includes")
include_directories("${PROJECT_SOURCE_DIR}/../../../Foundation/library/includes")

add_library(${PROJECT_NAME} SHARED ${PROJECT_SRCS})

target_link_libraries(${PROJECT_NAME} JamomaFoundation)
target_link_libraries(${PROJECT_NAME} JamomaDSP)

### Output ###
setOutput()

### Tests ###
addTestTarget()
