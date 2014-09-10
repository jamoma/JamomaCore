cmake_minimum_required(VERSION 2.6)
project(Max)

if(NOT APPLE)
	message("Max extension requires OS X. TODO Windows.")
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
include_directories("${PROJECT_SOURCE_DIR}/../../../Foundation/library/includes")

addMaxsupport()

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -include../../../../Implementations/Max/source/c74support/max-includes/macho-prefix.pch")

add_library(${PROJECT_NAME} SHARED ${PROJECT_SRCS})

target_link_libraries(${PROJECT_NAME} JamomaFoundation)

### Output ###
setOutput()

### Tests ###
addTestTarget()
