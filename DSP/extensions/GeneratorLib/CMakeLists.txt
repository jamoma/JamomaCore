cmake_minimum_required(VERSION 2.6)
project(GeneratorLib)

set(PROJECT_SRCS
${CMAKE_CURRENT_SOURCE_DIR}/GeneratorLib.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTAdsr.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTCount.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTNoise.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTPhasor.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTPulseSub.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTRamp.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTWavetable.cpp
${CMAKE_CURRENT_SOURCE_DIR}/tests/TTPhasor.test.cpp
${CMAKE_CURRENT_SOURCE_DIR}/tests/TTRamp.test.cpp
)

include_directories("${PROJECT_SOURCE_DIR}/includes")
include_directories("${PROJECT_SOURCE_DIR}/../../library/includes")
include_directories("${PROJECT_SOURCE_DIR}/../../../Foundation/library/includes")
include_directories("${PROJECT_SOURCE_DIR}/../../../Foundation/library/Mersenne-1.1")

add_library(${PROJECT_NAME} SHARED ${PROJECT_SRCS})

target_link_libraries(${PROJECT_NAME} JamomaFoundation)
target_link_libraries(${PROJECT_NAME} JamomaDSP)

### Output ###
setOutput()

### Tests ###
addTestTarget()
