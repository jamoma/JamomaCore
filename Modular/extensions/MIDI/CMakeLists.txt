cmake_minimum_required(VERSION 2.6)
project(MIDI)

if(CMAKE_SYSTEM_PROCESSOR MATCHES "arm*" OR ANDROID)
  message(STATUS "We can't build this for Android / ARM for now due to lack of PortMidi.")
  return()
endif()

find_package(PortMidi)
if(NOT PORTMIDI_FOUND)
  message(STATUS "Package portmidi required, but not found! Won't build MidiLib extension.")
  return()
endif()

set(PROJECT_SRCS
${CMAKE_CURRENT_SOURCE_DIR}/../../library/ProtocolLib/Protocol.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/MIDI.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/MIDIInput.cpp
)

include_directories("${PROJECT_SOURCE_DIR}/")
include_directories("${PROJECT_SOURCE_DIR}/includes")
include_directories("${PROJECT_SOURCE_DIR}/../../library/ProtocolLib")
include_directories("${PROJECT_SOURCE_DIR}/../../../Foundation/library/includes")


add_library(${PROJECT_NAME} SHARED ${PROJECT_SRCS})

target_link_libraries(${PROJECT_NAME} JamomaFoundation)
target_link_libraries(${PROJECT_NAME} ${PORTMIDI_LIBRARIES})

if(WIN32)
	target_link_libraries(${PROJECT_NAME} winmm)
endif()

addAppleFramework(CoreMIDI)
addAppleFramework(CoreFoundation)
addAppleFramework(CoreAudio)
addAppleFramework(Carbon)

### Output ###
setOutput()

### Tests ###
addTestTarget()
