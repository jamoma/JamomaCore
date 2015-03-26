cmake_minimum_required(VERSION 3.0)
project(Score)
set(JAMOMA_CURRENT_LIBRARY_NAME "Score")


find_package(LibXml2 REQUIRED)
include_directories(${LIBXML2_INCLUDE_DIR})

if(WIN32)
	find_package(Libiconv REQUIRED)
	include_directories(${LIBICONV_INCLUDE_DIR})
endif()

add_library(TimePluginLib OBJECT "${CMAKE_CURRENT_SOURCE_DIR}/extensions/TimePluginLib.cpp")
target_include_directories(TimePluginLib PUBLIC "${PROJECT_SOURCE_DIR}/extensions")
target_include_directories(TimePluginLib PUBLIC "${PROJECT_SOURCE_DIR}/library/includes")
target_include_directories(TimePluginLib PUBLIC $<TARGET_PROPERTY:Foundation,INTERFACE_INCLUDE_DIRECTORIES>)
target_include_directories(TimePluginLib PUBLIC $<TARGET_PROPERTY:Modular,INTERFACE_INCLUDE_DIRECTORIES>)

add_subdirectory(library)
add_subdirectory(extensions)
