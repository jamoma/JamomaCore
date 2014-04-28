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
find_path(GECODE_INCLUDE_DIR NAMES gecode/kernel.hh)
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
find_library(GECODE_LIBRARY NAMES gecodekernel)
find_library(GECODE_SUPPORT_LIBRARY NAMES gecodesupport)

if(GECODE_LIBRARY AND GECODE_SUPPORT_LIBRARY)
  list(APPEND GECODE_LIBRARIES ${GECODE_LIBRARY} ${GECODE_SUPPORT_LIBRARY})
else()
  message("Main libraries of Gecode were not found")
endif()

# First try to find the main headers
set(CMAKE_FIND_FRAMEWORK "NEVER")

foreach(COMPONENT ${Gecode_FIND_COMPONENTS})
 set(GECODE_${COMPONENT}__ gecode${COMPONENT})
# message(STATUS "${GECODE_${COMPONENT}__}")
 find_library(GECODE_${COMPONENT} ${GECODE_${COMPONENT}__})
 if (GECODE_${COMPONENT})
     message(STATUS "  ${COMPONENT}: ${GECODE_${COMPONENT}}")
     list(APPEND GECODE_LIBRARIES ${GECODE_${COMPONENT}})
 else()
     message(FATAL_ERROR "  ${COMPONENT} not found")
 endif()
endforeach()

#message(STATUS "Gecode libraries: ${GECODE_LIBRARIES}")
find_file(GECODE_VIMP gecode/kernel/var-imp.hpp)
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
