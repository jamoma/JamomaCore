cmake_minimum_required(VERSION 3.0)
project(AudioGraph)

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
include_directories("${PROJECT_SOURCE_DIR}/../../DSP/library/portaudio/include")

add_jamoma_library()

target_link_libraries(${PROJECT_NAME} Foundation)
target_link_libraries(${PROJECT_NAME} DSP)
target_link_libraries(${PROJECT_NAME} Graph)

### Tests ###
addTestTarget()
