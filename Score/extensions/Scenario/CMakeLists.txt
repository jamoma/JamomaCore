cmake_minimum_required(VERSION 2.6)
project(Scenario)

find_package(LibXml2)
if(NOT LIBXML2_FOUND)
  message(STATUS "Package libxml2 required, but not found! Won't build extension Scenario.")
  return()
endif()

set(PROJECT_SRCS
${CMAKE_CURRENT_SOURCE_DIR}/source/Scenario.cpp
${CMAKE_CURRENT_SOURCE_DIR}/../TimePluginLib.cpp
)

file(GLOB_RECURSE PROJECT_HDRS
    ${CMAKE_CURRENT_SOURCE_DIR}/includes/*.h
)

include_directories("${PROJECT_SOURCE_DIR}/")
include_directories("${PROJECT_SOURCE_DIR}/..")
include_directories("${PROJECT_SOURCE_DIR}/includes")
include_directories("${PROJECT_SOURCE_DIR}/../../library/tests")

include_directories("${JAMOMA_MODULAR_PROTOCOLLIB_INCLUDE_DIR}")
include_directories("${JAMOMA_MODULAR_SCHEDULERLIB_INCLUDE_DIR}")
include_directories("${JAMOMA_MODULAR_PEEROBJECT_INCLUDE_DIR}")

include_directories("${JAMOMA_ICONV_INCLUDE_DIR}")



# TODO make FindPthreadWin32.cmake
if(WIN32)
	SET(PTHREAD_WIN32_PATH "C:\\Program Files (x86)\\pthread-win32" )
	FILE(TO_CMAKE_PATH ${PTHREAD_WIN32_PATH} PTHREAD_WIN32_PATH_CMAKE)
	include_directories("${PTHREAD_WIN32_PATH_CMAKE}/include")
endif()

include_directories(${LIBXML2_INCLUDE_DIR})
if(ANDROID)
include_directories("${CMAKE_FIND_ROOT_PATH}/include")
endif()

if(WIN32)
	add_definitions("/DNOMINMAX")
endif()

add_library(${PROJECT_NAME} SHARED ${PROJECT_SRCS} ${PROJECT_HDRS})

target_link_libraries(${PROJECT_NAME} Foundation)
target_link_libraries(${PROJECT_NAME} DSP)
target_link_libraries(${PROJECT_NAME} Modular)
target_link_libraries(${PROJECT_NAME} Score)
target_link_libraries(${PROJECT_NAME} ${LIBXML2_LIBRARIES})

# TODO make FindPthreadWin32.cmake
if(WIN32)
	target_link_libraries(${PROJECT_NAME} "${PTHREAD_WIN32_PATH_CMAKE}/lib/x86/pthreadVC2.lib")
endif()

### Output ###
setOutput()

### Tests ###
addTestTarget()
