cmake_minimum_required(VERSION 2.6)
project(JamomaDSP)

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

include_directories("${PROJECT_SOURCE_DIR}/includes")
include_directories("${PROJECT_SOURCE_DIR}/../../Foundation/library/includes")


add_library(${PROJECT_NAME} SHARED ${PROJECT_SRCS})

target_link_libraries(${PROJECT_NAME} JamomaFoundation)

INSTALL(TARGETS ${PROJECT_NAME} DESTINATION "lib")
