# Build type configuration
if (NOT CMAKE_BUILD_TYPE)
	message(STATUS "No build type selected, default to Release.")
	set(CMAKE_BUILD_TYPE "Release" CACHE STRING "Choose the type of build, options are: None Debug Release RelWithDebInfo MinSizeRel." FORCE)
endif()

option(JAMOMA_STATIC_BUILD "Build static libraries instead of shared ones" OFF)
if(JAMOMA_STATIC_BUILD)
    set(BUILD_SHARED_LIBS OFF)
    add_definitions(-DTTSTATIC)
else()
    set(BUILD_SHARED_LIBS ON)
endif()
# General settings
set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_CURRENT_LIST_DIR}/modules/")
set(CMAKE_PREFIX_PATH ${CMAKE_PREFIX_PATH} "${CMAKE_CURRENT_LIST_DIR}/modules/")
set(ConfigPackageLocation share/cmake/Jamoma)
set(CMAKE_SKIP_BUILD_RPATH TRUE)

# Jamoma configuration
set(Jamoma_VERSION 6)
set(Jamoma_SOVERSION 6)
set(Jamoma_MAJOR_VERSION 6)

set(SUPPORT_FOLDER)
if(WIN32)
  if(WIN64)
    set(SUPPORT_FOLDER pc_x64)
  else()
    set(SUPPORT_FOLDER pc_win32)
  endif()
endif()

