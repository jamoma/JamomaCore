# - Try to find Portaudio
# Once done this will define
#
#  PORTAUDIO_FOUND - system has Portaudio
#  PORTAUDIO_INCLUDE_DIRS - the Portaudio include directory
#  PORTAUDIO_LIBRARIES - Link these to use Portaudio
#  PORTAUDIO_DEFINITIONS - Compiler switches required for using Portaudio
#  PORTAUDIO_VERSION - Portaudio version
#
#  Copyright (c) 2006 Andreas Schneider <mail@cynapses.org>
#
# Redistribution and use is allowed according to the terms of the New BSD license.
# For details see the accompanying COPYING-CMAKE-SCRIPTS file.
#

# Use the libraries in the Jamoma tree
if(APPLE OR WIN32)
	find_path(PORTAUDIO_INCLUDE_DIRS portaudio.h
			  PATHS
			  ${CMAKE_CURRENT_LIST_DIR}/../../../DSP/extensions/AudioEngine/portaudio/include)
	if(APPLE)
		find_library(PORTAUDIO_LIBRARIES portaudio-jamoma
					 PATHS
					 ${CMAKE_CURRENT_LIST_DIR}/../../../DSP/extensions/AudioEngine/portaudio/)
		set(PORTAUDIO_LIBRARIES_DEBUG ${PORTAUDIO_LIBRARIES})
		set(PORTAUDIO_LIBRARIES_RELEASE ${PORTAUDIO_LIBRARIES})
	elseif(WIN32)
		find_library(PORTAUDIO_LIBRARIES_DEBUG PortAudio
					 PATHS
					 ${CMAKE_CURRENT_LIST_DIR}/../../../DSP/extensions/AudioEngine/portaudio/Debug)
		find_library(PORTAUDIO_LIBRARIES_RELEASE PortAudio
					 PATHS
					 ${CMAKE_CURRENT_LIST_DIR}/../../../DSP/extensions/AudioEngine/portaudio/Release)
		set(PORTAUDIO_LIBRARIES ${PORTAUDIO_LIBRARIES_DEBUG} ${PORTAUDIO_LIBRARIES_RELEASE})
	endif()

	include(FindPackageHandleStandardArgs)
	FIND_PACKAGE_HANDLE_STANDARD_ARGS(PORTAUDIO DEFAULT_MSG PORTAUDIO_LIBRARIES PORTAUDIO_INCLUDE_DIRS)
	return()
endif()

# Linux case
include(FindPkgConfig)
find_library(ASOUND_Library NAMES asound)
if("${ASOUND_Library}" STREQUAL "")
    message("Checking for Portaudio : libasound not found.")
    return()
endif()

pkg_check_modules(PORTAUDIO2 portaudio-2.0)
if(PORTAUDIO2_FOUND)
    set(PORTAUDIO_INCLUDE_DIRS ${PORTAUDIO2_INCLUDEDIR})
    set(PORTAUDIO_LIBRARIES ${PORTAUDIO2_LIBRARIES})
    set(PORTAUDIO_VERSION 19)
    set(PORTAUDIO_FOUND TRUE)
else ()
    find_path(PORTAUDIO_INCLUDE_DIR
      NAMES
        portaudio.h
      PATHS
        /usr/include
        /usr/local/include
        /opt/local/include
        /sw/include
    )

    find_library(PORTAUDIO_LIBRARY
      NAMES
        portaudio
      PATHS
        /usr/lib
        /usr/local/lib
        /opt/local/lib
        /sw/lib
    )

    find_path(PORTAUDIO_LIBRARY_DIR
      NAMES
        portaudio
      PATHS
        /usr/lib
        /usr/local/lib
        /opt/local/lib
        /sw/lib
    )

    set(PORTAUDIO_INCLUDE_DIRS
      ${PORTAUDIO_INCLUDE_DIR}
    )
    set(PORTAUDIO_LIBRARIES
      ${PORTAUDIO_LIBRARY}
    )

    set(PORTAUDIO_LIBRARY_DIRS
      ${PORTAUDIO_LIBRARY_DIR}
    )

    set(PORTAUDIO_VERSION
      19
    )
  endif()


# show the PORTAUDIO_INCLUDE_DIRS and PORTAUDIO_LIBRARIES variables only in the advanced view
mark_as_advanced(PORTAUDIO_INCLUDE_DIRS PORTAUDIO_LIBRARIES)

set(PORTAUDIO_LIBRARIES_DEBUG ${PORTAUDIO_LIBRARIES})
set(PORTAUDIO_LIBRARIES_RELEASE ${PORTAUDIO_LIBRARIES})

include(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(PORTAUDIO DEFAULT_MSG PORTAUDIO_LIBRARIES PORTAUDIO_INCLUDE_DIRS)
