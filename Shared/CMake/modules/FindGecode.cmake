# From https://github.com/ggutierrez/cprel-packages/blob/master/cmake-support/FindGecode.cmake
#message(STATUS "Finding Gecode...")

# Works under the assumption than when gecode is installed at least
# the kernel component exists. This version of the module does not
# handle MacOS frameworks. So it will only detect a gecode built.

# After using this module, the following variables will be available:
#   GECODE_VERSION : The version of gecode found
#   GECODE_LIBRARIES : The gecode libraries that were found.
#   GECODE_INCLUDE_DIRS : path to the gecode headers.

# Look for the main header files of gecode.
include(FindPackageHandleStandardArgs)

# TODO version number
if(CMAKE_BUILD_TYPE STREQUAL "Debug")
	set(GECODE_WIN32_BUILD_TYPE "d")
else()
	set(GECODE_WIN32_BUILD_TYPE "r")
endif()

if(CMAKE_SIZEOF_VOID_P EQUAL 4)
	set(GECODE_WIN32_ARCH "x86")
else()
	set(GECODE_WIN32_ARCH "x64")
endif()

SET(GECODE_INCLUDE_WIN32_PATH "${WIN32_PROGRAMFILES}\\Gecode\\include" )
FILE(TO_CMAKE_PATH ${GECODE_INCLUDE_WIN32_PATH} GECODE_INCLUDE_WIN32_PATH_CMAKE)
SET(GECODE_LIB_WIN32_PATH "${WIN32_PROGRAMFILES}\\Gecode\\lib" )
FILE(TO_CMAKE_PATH ${GECODE_LIB_WIN32_PATH} GECODE_LIB_WIN32_PATH_CMAKE)

find_path(GECODE_INCLUDE_DIR NAMES gecode/kernel.hh
		  PATHS ${GECODE_INCLUDE_WIN32_PATH_CMAKE})
find_file(GECODE_CONFIG gecode/support/config.hpp)

## Extract the version
if(GECODE_CONFIG)
  file(STRINGS ${GECODE_CONFIG} GECODE_LINE_VERSION REGEX "^#define GECODE_VERSION .*")
  string(REGEX MATCH "[0-9].[0-9].[0-9]" GECODE_VERSION ${GECODE_LINE_VERSION})
endif()

message(STATUS "  version found ${GECODE_VERSION}")

# in this variable we will store all the libraries for the requested
# components
set(GECODE_LIBRARIES)

# Look for the library
find_library(GECODE_LIBRARY NAMES gecodekernel GecodeKernel-4-3-0-${GECODE_WIN32_BUILD_TYPE}-${GECODE_WIN32_ARCH}
			 PATHS ${GECODE_LIB_WIN32_PATH_CMAKE})
find_library(GECODE_SUPPORT_LIBRARY NAMES gecodesupport GecodeSupport-4-3-0-${GECODE_WIN32_BUILD_TYPE}-${GECODE_WIN32_ARCH}
			 PATHS ${GECODE_LIB_WIN32_PATH_CMAKE})

if(GECODE_LIBRARY AND GECODE_SUPPORT_LIBRARY)
  osx_check_architecture(GECODE ${GECODE_LIBRARY})
  if(NOT GECODE_DYLIB_ARCHS_MATCH_REQUIRED_ARCHS)
    set(GECODE_FOUND False)
    return()
  endif()

  list(APPEND GECODE_LIBRARIES ${GECODE_LIBRARY} ${GECODE_SUPPORT_LIBRARY})
else()
  message("Main libraries of Gecode were not found")
endif()

# First try to find the main headers
set(CMAKE_FIND_FRAMEWORK "NEVER")

foreach(COMPONENT ${Gecode_FIND_COMPONENTS})
 if(NOT COMPONENT STREQUAL "gist" AND NOT COMPONENT STREQUAL "driver" AND NOT COMPONENT STREQUAL "flatzinc")
   set(GECODE_${COMPONENT}__UNIX gecode${COMPONENT})
   set(GECODE_${COMPONENT}__WIN32 Gecode${COMPONENT}-4-3-0-${GECODE_WIN32_BUILD_TYPE}-${GECODE_WIN32_ARCH})
  # message(STATUS "${GECODE_${COMPONENT}__}")
   find_library(GECODE_${COMPONENT} NAMES ${GECODE_${COMPONENT}__UNIX} ${GECODE_${COMPONENT}__WIN32}
			  PATHS ${GECODE_LIB_WIN32_PATH_CMAKE})
   if (GECODE_${COMPONENT})
     message(STATUS "  ${COMPONENT}: ${GECODE_${COMPONENT}}")
     list(APPEND GECODE_LIBRARIES ${GECODE_${COMPONENT}})
   else()
       message(FATAL_ERROR "  ${COMPONENT} not found")
   endif()
  endif()
endforeach()

# Also float was missing
set(GECODE_float__UNIX gecodefloat)
set(GECODE_float__WIN32 GecodeFloat-4-3-0-${GECODE_WIN32_BUILD_TYPE}-${GECODE_WIN32_ARCH})
find_library(GECODE_float NAMES ${GECODE_float__UNIX} ${GECODE_float__WIN32}
			 PATHS ${GECODE_LIB_WIN32_PATH_CMAKE})
if (GECODE_float)
    message(STATUS "  float: ${GECODE_float}")
    list(APPEND GECODE_LIBRARIES ${GECODE_float})
else()
    message(STATUS "  float not found. We will try to build anyway.")
endif()

#message(STATUS "Gecode libraries: ${GECODE_LIBRARIES}")
find_file(GECODE_VIMP gecode/kernel/var-imp.hpp
		  PATHS ${GECODE_INCLUDE_WIN32_PATH_CMAKE})
## Detect if gecode has already support for CPRel. Sets variable GECODE_HAS_CPREL
## to Yes
set(GECODE_CPREL_CLASS "CPRelVarImpBase")
file(STRINGS ${GECODE_VIMP} GECODE_LINE_CPREL_CLASS
    REGEX "^.*class ${GECODE_CPREL_CLASS} .*")
message(STATUS "Gecode class: ${GECODE_LINE_CPREL_CLASS}")
list(LENGTH GECODE_LINE_CPREL_CLASS GECODE_CPREL_SUPPORT)


set(GECODE_INCLUDE_DIRS ${GECODE_INCLUDE_DIR})

find_package_handle_standard_args(Gecode
  REQUIRED_VARS GECODE_INCLUDE_DIRS GECODE_LIBRARIES)
