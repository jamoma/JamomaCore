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

# Use the libraries in the Jamoma tree
if(APPLE OR WIN32)
	find_path(PORTMIDI_INCLUDE_DIRS portmidi.h
			  PATHS
			  ${CMAKE_CURRENT_LIST_DIR}/../../../Graph/extensions/MidiLib/portmidi/pm_common)
	if(APPLE)
		find_library(PORTMIDI_LIBRARIES portmidi-jamoma
					 PATHS
					 ${CMAKE_CURRENT_LIST_DIR}/../../../Graph/extensions/MidiLib/portmidi/)
		set(PORTMIDI_LIBRARIES_DEBUG ${PORTMIDI_LIBRARIES})
		set(PORTMIDI_LIBRARIES_RELEASE ${PORTMIDI_LIBRARIES})
	elseif(WIN32)
		find_library(PORTMIDI_LIBRARIES_DEBUG libportmidi_s_jamoma portmidi_s_jamoma portmidi_s
					 PATHS
					 ${CMAKE_CURRENT_LIST_DIR}/../../../Graph/extensions/MidiLib/portmidi/pm_win_static_lib/Debug_)
		find_library(PORTMIDI_LIBRARIES_RELEASE libportmidi_s_jamoma portmidi_s_jamoma portmidi_s
					 PATHS
					 ${CMAKE_CURRENT_LIST_DIR}/../../../Graph/extensions/MidiLib/portmidi/pm_win_static_lib/Release_)
		set(PORTMIDI_LIBRARIES ${PORTMIDI_LIBRARIES_DEBUG} ${PORTMIDI_LIBRARIES_RELEASE})
	endif()

	include(FindPackageHandleStandardArgs)
	FIND_PACKAGE_HANDLE_STANDARD_ARGS(PORTMIDI DEFAULT_MSG PORTMIDI_LIBRARIES PORTMIDI_INCLUDE_DIRS)
	return()
endif()

include(FindPkgConfig)
pkg_check_modules(PORTMIDIPKG portmidi)

if(PORTMIDIPKG_FOUND)
	set(PORTMIDI_INCLUDE_DIR ${PORTMIDIPKG_INCLUDE_DIR})
	set(PORTMIDI_LIBRARY ${PORTMIDIPKG_LIBRARY})
else()
find_path(PORTMIDI_INCLUDE_DIR portmidi.h
  HINTS
  $ENV{PORTMIDI_DIR}
  PATHS
  ${JamomaCore_SOURCE_DIR}/Graph/extensions/MidiLib/portmidi/pm_common
  /usr/include
  /usr/local/include
  /opt/local/include
)

find_library(PORTMIDI_LIBRARY portmidi
  HINTS
  $ENV{PORTMIDI_DIR}
  PATHS
  ${JamomaCore_SOURCE_DIR}/Graph/extensions/MidiLib/portmidi/pm_win_dynamic_lib
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

if(PORTMIDI_LIBRARIES)
  osx_check_architecture(PORTMIDI ${PORTMIDI_LIBRARIES})
  if(NOT PORTMIDI_DYLIB_ARCHS_MATCH_REQUIRED_ARCHS)
    set(PORTMIDI_FOUND False)
  endif()
  set(PORTMIDI_LIBRARIES_DEBUG ${PORTMIDI_LIBRARIES})
  set(PORTMIDI_LIBRARIES_RELEASE ${PORTMIDI_LIBRARIES})
endif()

mark_as_advanced(PORTMIDI_LIBRARY PORTTIME_LIBRARY)
