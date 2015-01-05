cmake_minimum_required(VERSION 2.6)
project(DSP)

add_definitions(-DTTDSP_EXPORTS)

set(PROJECT_SRCS
${CMAKE_CURRENT_SOURCE_DIR}/source/TTAudioObjectBase.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTAudioObjectArray.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTAudioSignal.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTAudioSignalArray.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTBuffer.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTSampleMatrix.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTDCBlock.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTDelay.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTMixer.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTMultiMixer.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTOperator.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTDSP.cpp

${CMAKE_CURRENT_SOURCE_DIR}/tests/TTAudioObjectArray.test.cpp
${CMAKE_CURRENT_SOURCE_DIR}/tests/TTBuffer.test.cpp
${CMAKE_CURRENT_SOURCE_DIR}/tests/TTDelay.test.cpp
${CMAKE_CURRENT_SOURCE_DIR}/tests/TTSampleMatrix.test.cpp
)

file(GLOB_RECURSE PROJECT_HDRS ${CMAKE_CURRENT_SOURCE_DIR}/includes/*.h)
include_directories("${PROJECT_SOURCE_DIR}/includes")

addJamomaLibrary()

target_link_libraries(${PROJECT_NAME} Foundation)

### Output ###
setOutput()

### Tests ###
addTestTarget()
