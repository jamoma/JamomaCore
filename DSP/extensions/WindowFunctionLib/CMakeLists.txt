cmake_minimum_required(VERSION 3.0)
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

file(GLOB_RECURSE PROJECT_HDRS ${CMAKE_CURRENT_SOURCE_DIR}/includes/*.h)
add_jamoma_extension()