cmake_minimum_required(VERSION 3.0)
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

add_definitions(-DTTDSP_EXPORTS)

set(PROJECT_SRCS
${CMAKE_CURRENT_SOURCE_DIR}/TTAudioEngine.cpp
)

include_directories("${PROJECT_SOURCE_DIR}/includes")
include_directories(${PORTAUDIO_INCLUDE_DIR})

file(GLOB_RECURSE PROJECT_HDRS ${CMAKE_CURRENT_SOURCE_DIR}/includes/*.h)
add_jamoma_extension()

target_link_libraries(${PROJECT_NAME} ${PORTAUDIO_LIBRARIES})

addAppleFramework(Carbon)
addAppleFramework(CoreAudio)
addAppleFramework(AudioUnit)
addAppleFramework(AudioToolbox)
