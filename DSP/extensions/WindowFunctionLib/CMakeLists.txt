cmake_minimum_required(VERSION 2.6)
project(WindowFunctionLib)

set(PROJECT_SRCS
${CMAKE_CURRENT_SOURCE_DIR}/TTWindowFunctionLib.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTBartlettWindow.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTBlackmanHarrisWindow.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTBlackmanWindow.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTExpodecWindow.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTGaussWindow.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTHammingWindow.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTHanningWindow.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTKaiserWindow.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTNuttallWindow.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTRectangularWindow.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTRosenbergGlottalPulseWindow.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTTrapezoidWindow.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTTukeyWindow.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTWelchWindow.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTWindowFunction.cpp
${CMAKE_CURRENT_SOURCE_DIR}/tests/TTGaussWindow.test.cpp
${CMAKE_CURRENT_SOURCE_DIR}/tests/TTHammingWindow.test.cpp
${CMAKE_CURRENT_SOURCE_DIR}/tests/TTKaiserWindow.test.cpp
${CMAKE_CURRENT_SOURCE_DIR}/tests/TTRectangularWindow.test.cpp
${CMAKE_CURRENT_SOURCE_DIR}/tests/TTRosenbergGlottalPulseWindow.test.cpp
${CMAKE_CURRENT_SOURCE_DIR}/tests/TTTukeyWindow.test.cpp
)

include_directories("${PROJECT_SOURCE_DIR}/includes")
include_directories("${PROJECT_SOURCE_DIR}/../../library/includes")
include_directories("${PROJECT_SOURCE_DIR}/../../../Foundation/library/includes")

add_library(${PROJECT_NAME} SHARED ${PROJECT_SRCS})

target_link_libraries(${PROJECT_NAME} JamomaFoundation)
target_link_libraries(${PROJECT_NAME} JamomaDSP)

setExtensionSuffix()

INSTALL(TARGETS ${PROJECT_NAME} DESTINATION "extensions")
