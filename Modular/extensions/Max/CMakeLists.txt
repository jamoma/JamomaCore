cmake_minimum_required(VERSION 2.6)
project(Max)

if(NOT APPLE AND NOT WIN32)
	message("Max extension requires OS X or Windows.")
	return() 
endif()

if(WIN32 AND CMAKE_SIZEOF_VOID_P EQUAL 8)
	message("Does not work yet on Win64")
	return()
endif()

set(PROJECT_SRCS
${CMAKE_CURRENT_SOURCE_DIR}/../../library/SchedulerLib/Scheduler.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/Max.cpp
${CMAKE_CURRENT_SOURCE_DIR}/../../../../Implementations/Max/source/c74support/max-includes/common/commonsyms.cpp
)

include_directories("${PROJECT_SOURCE_DIR}/")
include_directories("${PROJECT_SOURCE_DIR}/includes")
include_directories("${PROJECT_SOURCE_DIR}/../../library/SchedulerLib")

addMaxsupport()

if(APPLE)
	set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -include../../../../Implementations/Max/source/c74support/max-includes/macho-prefix.pch")
endif()

add_library(${PROJECT_NAME} SHARED ${PROJECT_SRCS})

target_link_libraries(${PROJECT_NAME} Foundation)

if(WIN32)
	target_link_libraries(${PROJECT_NAME} "${PROJECT_SOURCE_DIR}/../../../../Implementations/Max/source/c74support/max-includes/MaxAPI.lib")
	if(CMAKE_BUILD_TYPE STREQUAL "Release")
		add_definitions(-DMAXAPI_USE_MSCRT)
		
		target_link_libraries(${PROJECT_NAME} "${PROJECT_SOURCE_DIR}/../../../../Implementations/Max/source/c74support/max-includes/maxcrt.lib")
		target_link_libraries(${PROJECT_NAME} "${PROJECT_SOURCE_DIR}/../../../../Implementations/Max/source/c74support/max-includes/maxcrt_p.lib")
	endif()
endif()

### Output ###
setOutput()

### Tests ###
addTestTarget()
