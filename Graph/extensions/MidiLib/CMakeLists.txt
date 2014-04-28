cmake_minimum_required(VERSION 2.6)
project(MidiLib)

if(CMAKE_SYSTEM_PROCESSOR MATCHES "arm*" OR ANDROID)
  message(STATUS "We can't build this for Android / ARM for now.")
  return()
endif()

find_package(PortMidi)
if(NOT PORTMIDI_FOUND)
  message(STATUS "Package portmidi required, but not found! Won't build MidiLib extension.")
  return()
endif()

set(PROJECT_SRCS
${CMAKE_CURRENT_SOURCE_DIR}/MidiLib.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTMidiFilter.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTMidiFormat.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTMidiInput.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTMidiOutput.cpp
)

include_directories("${PROJECT_SOURCE_DIR}/includes")
include_directories("${PROJECT_SOURCE_DIR}/../../library/includes")
include_directories("${PROJECT_SOURCE_DIR}/../../../Foundation/library/includes")
include_directories("${PROJECT_SOURCE_DIR}/../../../DSP/library/includes")
include_directories(${PORTMIDI_INCLUDE_DIR})

add_library(${PROJECT_NAME} SHARED ${PROJECT_SRCS})

target_link_libraries(${PROJECT_NAME} JamomaFoundation)
target_link_libraries(${PROJECT_NAME} JamomaDSP)
target_link_libraries(${PROJECT_NAME} JamomaGraph)
target_link_libraries(${PROJECT_NAME} ${PORTMIDI_LIBRARIES})

addAppleFramework(CoreMIDI)
addAppleFramework(CoreFoundation)
addAppleFramework(CoreAudio)
addAppleFramework(Carbon)

### Output ###
setOutput()

### Tests ###
addTestTarget()
