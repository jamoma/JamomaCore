cmake_minimum_required(VERSION 2.6)
project(JamomaAudioGraph)

set(JAMOMA_AUDIOGRAPH_INCLUDE_DIR "${CMAKE_CURRENT_SOURCE_DIR}/includes" 
	CACHE 
	STRING "${PROJECT_NAME} includes" FORCE)

add_definitions(-DTTAUDIOGRAPH_EXPORTS)

set(PROJECT_SRCS
${CMAKE_CURRENT_SOURCE_DIR}/source/TTAudioGraph.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTAudioGraphDescription.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTAudioGraphSource.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTAudioGraphObject.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTAudioGraphGenerator.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTAudioGraphInput.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTAudioGraphOutput.cpp
)
file(GLOB_RECURSE PROJECT_HDRS ${CMAKE_CURRENT_SOURCE_DIR}/includes/*.h)
include_directories("${PROJECT_SOURCE_DIR}/includes")
include_directories("${PROJECT_SOURCE_DIR}/../../Foundation/library/includes")
include_directories("${PROJECT_SOURCE_DIR}/../../DSP/library/includes")
include_directories("${PROJECT_SOURCE_DIR}/../../Graph/library/includes")
include_directories("${PROJECT_SOURCE_DIR}/../../DSP/library/portaudio/include")


add_library(${PROJECT_NAME} SHARED ${PROJECT_SRCS})

target_link_libraries(${PROJECT_NAME} JamomaFoundation)
target_link_libraries(${PROJECT_NAME} JamomaDSP)
target_link_libraries(${PROJECT_NAME} JamomaGraph)

addAppleFramework(Carbon)

### Output ###
setOutput()

### Tests ###
addTestTarget()
