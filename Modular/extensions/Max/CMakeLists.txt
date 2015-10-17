cmake_minimum_required(VERSION 3.0)
project(Max)
### TODO REVIEW ME
if(NOT BUILD_JAMOMAMAX)
	return()
endif()

if(IOS OR (NOT APPLE AND NOT WIN32))
	message("Max extension requires OS X or Windows.")
	return()
endif()

if(WIN64)
	message("Does not work yet on Win64")
	return()
endif()

if(WIN32 AND CMAKE_BUILD_TYPE STREQUAL "Release")
	add_definitions(-DMAXAPI_USE_MSCRT)
endif()

set(PROJECT_SRCS
	$<TARGET_OBJECTS:TTClock>
${CMAKE_CURRENT_SOURCE_DIR}/source/Max.cpp
${JAMOMAMAX_PATH}/source/c74support/max-includes/common/commonsyms.cpp
)

include_directories("${PROJECT_SOURCE_DIR}/")
include_directories("${PROJECT_SOURCE_DIR}/includes")

if(APPLE)
	set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -include'${JAMOMAMAX_PATH}'/source/c74support/max-includes/macho-prefix.pch")
endif()

file(GLOB_RECURSE PROJECT_HDRS ${CMAKE_CURRENT_SOURCE_DIR}/includes/*.h)
add_jamoma_extension()

# TODO generalize this in a max module file.
if(WIN32)
	target_link_libraries(${PROJECT_NAME} PRIVATE "${MaxAPI_LIB}")
endif()
