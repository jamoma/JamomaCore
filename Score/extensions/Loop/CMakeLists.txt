cmake_minimum_required(VERSION 3.0)
project(Loop)

set(PROJECT_SRCS
$<TARGET_OBJECTS:TimePluginLib>
${CMAKE_CURRENT_SOURCE_DIR}/source/Loop.cpp
)
file(GLOB_RECURSE PROJECT_HDRS ${CMAKE_CURRENT_SOURCE_DIR}/includes/*.h)

include_directories("${PROJECT_SOURCE_DIR}/")
include_directories("${PROJECT_SOURCE_DIR}/..")
include_directories("${PROJECT_SOURCE_DIR}/includes")
include_directories("${PROJECT_SOURCE_DIR}/../../library/tests")

include_directories($<TARGET_PROPERTY:TimePluginLib,INTERFACE_INCLUDE_DIRECTORIES>)

if(ANDROID)
include_directories("${CMAKE_FIND_ROOT_PATH}/include")
endif()

add_jamoma_extension()

