# - Try to find PortMidi
# Once done, this will define
#
#  PortMidi_FOUND - system has PortMidi
#  PortMidi_INCLUDE_DIRS - the PortMidi include directories
#  PortMidi_LIBRARIES - link these to use PortMidi
#  PortMidi_VERSION - detected version of PortMidi
#
# See documentation on how to write CMake scripts at
# http://www.cmake.org/Wiki/CMake:How_To_Find_Libraries

SET(PORTMIDI_INCLUDE_WIN32_PATH "${WIN32_PROGRAMFILES}\\Portmidi\\include" )
SET(PORTMIDI_LIB_WIN32_PATH "${WIN32_PROGRAMFILES}\\Portmidi\\lib" )

include(FindPkgConfig)
pkg_check_modules(PORTMIDIPKG portmidi)

if(PORTMIDIPKG_FOUND)
	set(PORTMIDI_INCLUDE_DIR ${PORTMIDIPKG_INCLUDE_DIR})
	set(PORTMIDI_LIBRARY ${PORTMIDIPKG_LIBRARY})
else()
find_path(PORTMIDI_INCLUDE_DIR portmidi.h
  HINTS
  $ENV{PORTMIDI_DIR}
  ${PORTMIDI_INCLUDE_WIN32_PATH}
  PATHS
  ${JamomaCore_SOURCE_DIR}/Graph/extensions/MidiLib/portmidi/pm_common
  /usr/include
  /usr/local/include
  /opt/local/include
)

find_library(PORTMIDI_LIBRARY portmidi
  HINTS
  $ENV{PORTMIDI_DIR}
  ${PORTMIDI_LIB_WIN32_PATH}
  PATHS
  /usr/lib
  /usr/local/lib
  /opt/local/lib
)

endif()

# Porttime library is merged to Portmidi in new versions, so
# we work around problems by adding it only if it's present

set(PORTMIDI_LIBRARIES ${PORTMIDI_LIBRARY})
set(PORTMIDI_INCLUDE_DIRS ${PORTMIDI_INCLUDE_DIR})

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(PortMidi
  REQUIRED_VARS PORTMIDI_INCLUDE_DIRS PORTMIDI_LIBRARIES)

mark_as_advanced(PORTMIDI_LIBRARY PORTTIME_LIBRARY)
