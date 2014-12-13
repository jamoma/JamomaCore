# Build type configuration
if (NOT CMAKE_BUILD_TYPE)
	message(STATUS "No build type selected, default to Release.")
	set(CMAKE_BUILD_TYPE "Release" CACHE STRING "Choose the type of build, options are: None Debug Release RelWithDebInfo MinSizeRel." FORCE)
endif()


# General settings
set(LIBRARY_OUTPUT_PATH ${CMAKE_BINARY_DIR})
set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${PROJECT_SOURCE_DIR}/Shared/CMake/modules/")

# Jamoma configuration
set(Jamoma_VERSION 0.6)
set(Jamoma_SOVERSION 6)
set(Jamoma_MAJOR_VERSION 6)
