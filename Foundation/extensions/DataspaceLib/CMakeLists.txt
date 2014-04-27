cmake_minimum_required(VERSION 2.6)
project(DataspaceLib)

set(PROJECT_SRCS
${CMAKE_CURRENT_SOURCE_DIR}/TTDataspaceLib.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/AngleDataspace.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/ColorDataspace.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/DistanceDataspace.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/GainDataspace.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/NoneDataspace.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/OrientationDataspace.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/PositionDataspace.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/SpeedDataspace.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TemperatureDataspace.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TimeDataspace.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTDataspace.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTDataspaceConverter.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTDataspaceUnit.cpp
)

include_directories("${PROJECT_SOURCE_DIR}")
include_directories("${PROJECT_SOURCE_DIR}/includes")
include_directories("${PROJECT_SOURCE_DIR}/../../../Foundation/library/includes")

add_library(${PROJECT_NAME} SHARED ${PROJECT_SRCS})

target_link_libraries(${PROJECT_NAME} JamomaFoundation)

### Output ###
setOutput()

### Tests ###
addTestTarget()
