if(NOT ANDROID)

cmake_minimum_required(VERSION 2.6)
project(AudioEngine)

set(PROJECT_SRCS
${CMAKE_CURRENT_SOURCE_DIR}/TTAudioEngine.cpp
)

include_directories("${PROJECT_SOURCE_DIR}/portaudio/include")
include_directories("${PROJECT_SOURCE_DIR}/includes")
include_directories("${PROJECT_SOURCE_DIR}/../../library/includes")
include_directories("${PROJECT_SOURCE_DIR}/../../../Foundation/library/includes")

add_library(${PROJECT_NAME} SHARED ${PROJECT_SRCS})

target_link_libraries(${PROJECT_NAME} JamomaFoundation)
target_link_libraries(${PROJECT_NAME} JamomaDSP)
target_link_libraries(${PROJECT_NAME} portaudio)

setExtensionSuffix()

addAppleFramework(Carbon)
addAppleFramework(CoreAudio)
addAppleFramework(AudioUnit)
addAppleFramework(AudioToolbox)
endif()
