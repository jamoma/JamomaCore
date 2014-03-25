cmake_minimum_required(VERSION 2.6)
project(FunctionLib)

set(PROJECT_SRCS
${CMAKE_CURRENT_SOURCE_DIR}/TTFunctionLib.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTCosineFunction.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTCrossFadeInFunction.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTCrossFadeOutFunction.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTExpFunction.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTFreeHandFunction.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTFunction.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTLinearFunction.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTLogFunction.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTLowpassFunction.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTPowerFunction.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTSmoothPolynomialFunction.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTTanhFunction.cpp

${CMAKE_CURRENT_SOURCE_DIR}/tests/TTCosineFunction.test.cpp
${CMAKE_CURRENT_SOURCE_DIR}/tests/TTCrossFadeInFunction.test.cpp
${CMAKE_CURRENT_SOURCE_DIR}/tests/TTCrossFadeOutFunction.test.cpp
${CMAKE_CURRENT_SOURCE_DIR}/tests/TTExpFunction.test.cpp
${CMAKE_CURRENT_SOURCE_DIR}/tests/TTFreeHandFunction.test.cpp
${CMAKE_CURRENT_SOURCE_DIR}/tests/TTLinearFunction.test.cpp
${CMAKE_CURRENT_SOURCE_DIR}/tests/TTLogFunction.test.cpp
${CMAKE_CURRENT_SOURCE_DIR}/tests/TTPowerFunction.test.cpp
${CMAKE_CURRENT_SOURCE_DIR}/tests/TTSmoothPolynomialFunction.test.cpp
${CMAKE_CURRENT_SOURCE_DIR}/tests/TTTanhFunction.test.cpp
)

include_directories("${PROJECT_SOURCE_DIR}/includes")
include_directories("${PROJECT_SOURCE_DIR}/../../library/includes")
include_directories("${PROJECT_SOURCE_DIR}/../../../Foundation/library/includes")

add_library(${PROJECT_NAME} SHARED ${PROJECT_SRCS})

target_link_libraries(${PROJECT_NAME} JamomaFoundation)
target_link_libraries(${PROJECT_NAME} JamomaDSP)

setExtensionSuffix()
