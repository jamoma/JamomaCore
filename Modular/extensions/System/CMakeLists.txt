cmake_minimum_required(VERSION 3.0)
project(System)

set(PROJECT_SRCS
${CMAKE_CURRENT_SOURCE_DIR}/../../library/SchedulerLib/Scheduler.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/System.cpp
)

include_directories("${PROJECT_SOURCE_DIR}/")
include_directories("${PROJECT_SOURCE_DIR}/includes")
include_directories("${PROJECT_SOURCE_DIR}/../../library/SchedulerLib")

file(GLOB_RECURSE PROJECT_HDRS ${CMAKE_CURRENT_SOURCE_DIR}/includes/*.h)
add_jamoma_extension()

target_link_libraries(${PROJECT_NAME} Foundation)
if(WIN32)
	target_link_libraries(${PROJECT_NAME} winmm)
endif()
