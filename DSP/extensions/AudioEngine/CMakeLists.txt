if(NOT ANDROID)

cmake_minimum_required(VERSION 2.6)
project(AudioEngine)

find_package(Portaudio)
if(NOT PORTAUDIO_FOUND)
  message(FATAL_ERROR "Package portaudio required, but not found!")
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

setExtensionSuffix()

INSTALL(TARGETS ${PROJECT_NAME} DESTINATION "extensions")

addAppleFramework(Carbon)
addAppleFramework(CoreAudio)
addAppleFramework(AudioUnit)
addAppleFramework(AudioToolbox)

endif()
