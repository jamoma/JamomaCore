cmake_minimum_required(VERSION 3.0)
project(Scenario)

set(PROJECT_SRCS
${CMAKE_CURRENT_SOURCE_DIR}/source/Scenario.cpp
$<TARGET_OBJECTS:TimePluginLib>
)

file(GLOB_RECURSE PROJECT_HDRS
    ${CMAKE_CURRENT_SOURCE_DIR}/includes/*.h
	${CMAKE_CURRENT_SOURCE_DIR}/../extensions/TimePluginLib.h
)

include_directories("${PROJECT_SOURCE_DIR}/")
include_directories("${PROJECT_SOURCE_DIR}/..")
include_directories("${PROJECT_SOURCE_DIR}/includes")
include_directories("${PROJECT_SOURCE_DIR}/../../library/tests")

include_directories($<TARGET_PROPERTY:TimePluginLib,INTERFACE_INCLUDE_DIRECTORIES>)

if(ANDROID)
include_directories("${CMAKE_FIND_ROOT_PATH}/include")
endif()

if(WIN32)
	add_definitions("/DNOMINMAX")
endif()

add_jamoma_extension()
