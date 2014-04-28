cmake_minimum_required(VERSION 2.6)
project(AudioEngine)

# Doesn't yet work on ARM
if(CMAKE_SYSTEM_PROCESSOR MATCHES "arm*" OR ANDROID)
  message(STATUS "We can't build this for Android / ARM for now.")
  return()
endif()

find_package(Portaudio)
if(NOT PORTAUDIO_FOUND)
  message(STATUS "Package portaudio required, but not found! Won't build AudioEngine extension.")
  return()
endif()


set(PROJECT_SRCS
${CMAKE_CURRENT_SOURCE_DIR}/TTAudioEngine.cpp
)

include_directories("${PROJECT_SOURCE_DIR}/includes")
include_directories("${PROJECT_SOURCE_DIR}/../../library/includes")
include_directories("${PROJECT_SOURCE_DIR}/../../../Foundation/library/includes")
include_directories(${PORTAUDIO_INCLUDE_DIR})

add_library(${PROJECT_NAME} SHARED ${PROJECT_SRCS})

target_link_libraries(${PROJECT_NAME} JamomaFoundation)
target_link_libraries(${PROJECT_NAME} JamomaDSP)
target_link_libraries(${PROJECT_NAME} ${PORTAUDIO_LIBRARIES})

addAppleFramework(Carbon)
addAppleFramework(CoreAudio)
addAppleFramework(AudioUnit)
addAppleFramework(AudioToolbox)

### Output ###
setOutput()

### Tests ###
addTestTarget()
