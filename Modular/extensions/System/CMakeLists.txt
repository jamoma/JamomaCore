cmake_minimum_required(VERSION 2.6)
project(System)

set(PROJECT_SRCS
${CMAKE_CURRENT_SOURCE_DIR}/../../library/SchedulerLib/Scheduler.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/System.cpp
)

include_directories("${PROJECT_SOURCE_DIR}/")
include_directories("${PROJECT_SOURCE_DIR}/includes")
include_directories("${PROJECT_SOURCE_DIR}/../../library/SchedulerLib")


add_library(${PROJECT_NAME} SHARED ${PROJECT_SRCS})

target_link_libraries(${PROJECT_NAME} Foundation)
if(WIN32)
	target_link_libraries(${PROJECT_NAME} winmm)
endif()

### Output ###
setOutput()

### Tests ###
addTestTarget()
