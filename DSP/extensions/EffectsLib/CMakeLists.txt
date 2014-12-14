cmake_minimum_required(VERSION 2.6)
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

add_library(${PROJECT_NAME} SHARED ${PROJECT_SRCS})

target_link_libraries(${PROJECT_NAME} Foundation)
target_link_libraries(${PROJECT_NAME} DSP)

### Output ###
setOutput()

### Tests ###
addTestTarget()
