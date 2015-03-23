cmake_minimum_required(VERSION 3.0)
project(Score)

add_definitions(-DTTSCORE_EXPORTS)

find_package(LibXml2 REQUIRED)

set(PROJECT_SRCS
$<TARGET_OBJECTS:TimePluginLib>
${CMAKE_CURRENT_SOURCE_DIR}/source/TTScore.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTCurve.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/Expression.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTTimeCondition.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTTimeContainer.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTTimeEvent.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTTimeProcess.cpp

${CMAKE_CURRENT_SOURCE_DIR}/tests/TTScore.test.cpp
)
file(GLOB_RECURSE PROJECT_HDRS
	${CMAKE_CURRENT_SOURCE_DIR}/../extensions/TimePluginLib.h
	${CMAKE_CURRENT_SOURCE_DIR}/includes/*.h
	${CMAKE_CURRENT_SOURCE_DIR}/tests/*.h
)

include_directories($<TARGET_PROPERTY:TimePluginLib,INTERFACE_INCLUDE_DIRECTORIES>)

include_directories("${PROJECT_SOURCE_DIR}/tests")
include_directories("${PROJECT_SOURCE_DIR}/includes")
include_directories(${LIBXML2_INCLUDE_DIR})

if(ANDROID)
include_directories("${CMAKE_FIND_ROOT_PATH}/include")
endif()

add_jamoma_library()

target_link_libraries(${PROJECT_NAME} Foundation)
target_link_libraries(${PROJECT_NAME} DSP)
target_link_libraries(${PROJECT_NAME} Modular)
target_link_libraries(${PROJECT_NAME} ${LIBXML2_LIBRARIES})

### Tests ###
addTestTarget()
