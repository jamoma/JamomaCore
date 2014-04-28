cmake_minimum_required(VERSION 2.6)

find_package(Sndfile)

if(SNDFILE_FOUND)
include_directories(${SNDFILE_INCLUDE_DIR})

project(SoundfileLib)

set(PROJECT_SRCS
${CMAKE_CURRENT_SOURCE_DIR}/SoundfileLib.cpp
${CMAKE_CURRENT_SOURCE_DIR}/sources/TTSoundfile.cpp
${CMAKE_CURRENT_SOURCE_DIR}/sources/TTSoundfileLoader.cpp
${CMAKE_CURRENT_SOURCE_DIR}/sources/TTSoundfilePlayer.cpp
${CMAKE_CURRENT_SOURCE_DIR}/sources/TTSoundfileRecorder.cpp
${CMAKE_CURRENT_SOURCE_DIR}/tests/TTSoundfile.test.cpp
${CMAKE_CURRENT_SOURCE_DIR}/tests/TTSoundfileLoader.test.cpp
)

include_directories("${PROJECT_SOURCE_DIR}/includes")
include_directories("${PROJECT_SOURCE_DIR}/../../library/includes")
include_directories("${PROJECT_SOURCE_DIR}/../../../Foundation/library/includes")

add_library(${PROJECT_NAME} SHARED ${PROJECT_SRCS})

target_link_libraries(${PROJECT_NAME} JamomaFoundation)
target_link_libraries(${PROJECT_NAME} JamomaDSP)
target_link_libraries(${PROJECT_NAME} ${SNDFILE_LIBRARIES})

addAppleFramework(Carbon)
addAppleFramework(AudioUnit)

### Output ###
setOutput()

### Tests ###
addTestTarget()

endif(SNDFILE_FOUND)
