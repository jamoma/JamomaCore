cmake_minimum_required(VERSION 3.0)
project(EffectsLib)

set(PROJECT_SRCS
${CMAKE_CURRENT_SOURCE_DIR}/EffectsLib.cpp
${CMAKE_CURRENT_SOURCE_DIR}/sources/TTBalance.cpp
${CMAKE_CURRENT_SOURCE_DIR}/sources/TTDegrade.cpp
${CMAKE_CURRENT_SOURCE_DIR}/sources/TTGain.cpp
${CMAKE_CURRENT_SOURCE_DIR}/sources/TTLimiter.cpp
${CMAKE_CURRENT_SOURCE_DIR}/sources/TTOverdrive.cpp
${CMAKE_CURRENT_SOURCE_DIR}/sources/TTPanorama.cpp
${CMAKE_CURRENT_SOURCE_DIR}/sources/TTMuteSolo.cpp
${CMAKE_CURRENT_SOURCE_DIR}/sources/TTThru.cpp
${CMAKE_CURRENT_SOURCE_DIR}/sources/TTWaveshaper.cpp
${CMAKE_CURRENT_SOURCE_DIR}/tests/TTGain.test.cpp
${CMAKE_CURRENT_SOURCE_DIR}/tests/TTMuteSolo.test.cpp
${CMAKE_CURRENT_SOURCE_DIR}/tests/TTThru.test.cpp
)
add_definitions(-DTT_EFFECTS_LIB)

include_directories("${PROJECT_SOURCE_DIR}/includes")

file(GLOB_RECURSE PROJECT_HDRS ${CMAKE_CURRENT_SOURCE_DIR}/includes/*.h)
add_jamoma_extension()

### Tests ###
# TODO find out why this one does not work ??
#if(NOT IOS)
#	addTestTarget()
#endif()
