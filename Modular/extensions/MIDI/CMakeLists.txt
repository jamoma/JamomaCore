cmake_minimum_required(VERSION 3.0)
project(MIDI)

if(CMAKE_SYSTEM_PROCESSOR MATCHES "arm*" OR ANDROID)
  message(STATUS "We can't build this for Android / ARM for now due to lack of PortMidi.")
  return()
endif()

if(WIN32 AND CMAKE_SIZEOF_VOID_P EQUAL 8)
	message("Does not work yet on Win64")
	return()
endif()

find_package(PortMidi)
if(NOT PORTMIDI_FOUND)
  message(STATUS "Package portmidi required, but not found! Won't build MidiLib extension.")
  return()
endif()

if(WIN32)
	message("We can't build ${PROJECT_NAME} on Windows Release yet")
	message("TODO : Rebuild PortMidi with /MD")
	return()
endif()

set(PROJECT_SRCS
$<TARGET_OBJECTS:ProtocolLib>
${CMAKE_CURRENT_SOURCE_DIR}/source/MIDI.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/MIDIDestination.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/MIDIInput.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/MIDIOutput.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/MIDIParserFrom.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/MIDIParserTo.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/MIDISource.cpp
)

include_directories("${PROJECT_SOURCE_DIR}/")
include_directories("${PROJECT_SOURCE_DIR}/includes")
include_directories($<TARGET_PROPERTY:ProtocolLib,INTERFACE_INCLUDE_DIRECTORIES>)
include_directories("${PORTMIDI_INCLUDE_DIRS}")

file(GLOB_RECURSE PROJECT_HDRS ${CMAKE_CURRENT_SOURCE_DIR}/includes/*.h)
add_jamoma_extension()


target_link_libraries(${PROJECT_NAME}
					  debug ${PORTMIDI_LIBRARIES_DEBUG}
					  optimized ${PORTMIDI_LIBRARIES_DEBUG})

target_link_frameworks(TARGET ${PROJECT_NAME}
					   FRAMEWORKS Carbon CoreAudio CoreMIDI CoreFoundation)

if(WIN32)
	target_link_libraries(${PROJECT_NAME} winmm)
endif()
