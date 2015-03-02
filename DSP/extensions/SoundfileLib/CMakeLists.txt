cmake_minimum_required(VERSION 3.0)
find_package(Sndfile)

if(SNDFILE_FOUND)
project(SoundfileLib)

include_directories(${SNDFILE_INCLUDE_DIR})
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

file(GLOB_RECURSE PROJECT_HDRS ${CMAKE_CURRENT_SOURCE_DIR}/includes/*.h)
add_jamoma_extension()

target_link_libraries(${PROJECT_NAME} ${SNDFILE_LIBRARIES})

file(COPY ding_b2.aiff geese_clip.aif
	 DESTINATION .)

endif(SNDFILE_FOUND)
