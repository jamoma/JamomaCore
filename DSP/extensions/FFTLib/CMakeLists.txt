cmake_minimum_required(VERSION 3.0)
project(FFTLib)

set(PROJECT_SRCS
${CMAKE_CURRENT_SOURCE_DIR}/FFTLib.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTFFT.cpp
${CMAKE_CURRENT_SOURCE_DIR}/mayer/mayer_fft.cpp
${CMAKE_CURRENT_SOURCE_DIR}/fft/fftsg.cpp
)

include_directories("${PROJECT_SOURCE_DIR}/includes")
include_directories("${PROJECT_SOURCE_DIR}/mayer")
include_directories("${PROJECT_SOURCE_DIR}/fft")

file(GLOB_RECURSE PROJECT_HDRS ${CMAKE_CURRENT_SOURCE_DIR}/includes/*.h)
add_jamoma_extension()