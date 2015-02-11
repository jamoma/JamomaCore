cmake_minimum_required(VERSION 2.6)
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

add_library(${PROJECT_NAME} SHARED ${PROJECT_SRCS})

target_link_libraries(${PROJECT_NAME} Foundation)
target_link_libraries(${PROJECT_NAME} DSP)

### Output ###
setOutput()

### Tests ###
addTestTarget()
