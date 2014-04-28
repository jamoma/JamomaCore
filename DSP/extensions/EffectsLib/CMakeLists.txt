cmake_minimum_required(VERSION 2.6)
project(EffectsLib)

set(PROJECT_SRCS
${CMAKE_CURRENT_SOURCE_DIR}/EffectsLib.cpp
${CMAKE_CURRENT_SOURCE_DIR}/sources/TTBalance.cpp
${CMAKE_CURRENT_SOURCE_DIR}/sources/TTDegrade.cpp
${CMAKE_CURRENT_SOURCE_DIR}/sources/TTGain.cpp
${CMAKE_CURRENT_SOURCE_DIR}/sources/TTLimiter.cpp
${CMAKE_CURRENT_SOURCE_DIR}/sources/TTOverdrive.cpp
${CMAKE_CURRENT_SOURCE_DIR}/sources/TTPanorama.cpp
${CMAKE_CURRENT_SOURCE_DIR}/sources/TTThru.cpp
${CMAKE_CURRENT_SOURCE_DIR}/sources/TTWaveshaper.cpp
${CMAKE_CURRENT_SOURCE_DIR}/tests/TTGain.test.cpp
${CMAKE_CURRENT_SOURCE_DIR}/tests/TTThru.test.cpp
)

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
