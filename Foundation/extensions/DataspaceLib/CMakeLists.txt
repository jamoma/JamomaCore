cmake_minimum_required(VERSION 3.0)
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

${CMAKE_CURRENT_SOURCE_DIR}/tests/AngleDataspace.test.cpp
${CMAKE_CURRENT_SOURCE_DIR}/tests/ColorDataspace.test.cpp
${CMAKE_CURRENT_SOURCE_DIR}/tests/DistanceDataspace.test.cpp
${CMAKE_CURRENT_SOURCE_DIR}/tests/GainDataspace.test.cpp
${CMAKE_CURRENT_SOURCE_DIR}/tests/OrientationDataspace.test.cpp
${CMAKE_CURRENT_SOURCE_DIR}/tests/PositionDataspace.test.cpp
${CMAKE_CURRENT_SOURCE_DIR}/tests/SpeedDataspace.test.cpp
${CMAKE_CURRENT_SOURCE_DIR}/tests/TemperatureDataspace.test.cpp
${CMAKE_CURRENT_SOURCE_DIR}/tests/TimeDataspace.test.cpp
)

file(GLOB_RECURSE PROJECT_HDRS ${CMAKE_CURRENT_SOURCE_DIR}/includes/*.h)

include_directories("${PROJECT_SOURCE_DIR}")
include_directories("${PROJECT_SOURCE_DIR}/includes")

add_jamoma_extension()
