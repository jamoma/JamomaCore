cmake_minimum_required(VERSION 2.6)

SET (CMAKE_C_COMPILER "clang")
SET (CMAKE_CXX_COMPILER "clang++")
SET (CMAKE_CXX_FLAGS "-std=c++11 -fPIC -Wno-unknown-pragmas -Wno-conversion")


if(APPLE)
	add_definitions(-DTT_PLATFORM_MAC)
elseif(UNIX)
	add_definitions(-DTT_PLATFORM_LINUX)
elseif(WIN32)
	add_definitions(-DTT_PLATFORM_WIN)
endif(APPLE)


function(setExtensionSuffix)
	if(APPLE)
		SET_TARGET_PROPERTIES(${PROJECT_NAME} PROPERTIES SUFFIX ".ttdylib")
	elseif(UNIX)
		SET_TARGET_PROPERTIES(${PROJECT_NAME} PROPERTIES SUFFIX ".ttso")
	elseif(WIN32)
		SET_TARGET_PROPERTIES(${PROJECT_NAME} PROPERTIES SUFFIX ".ttdll")
	endif(APPLE)
endFunction(setExtensionSuffix)

function(addAppleFramework FRAMEWORK_NAME)
IF(APPLE)
   INCLUDE_DIRECTORIES ( /Developer/Headers/FlatCarbon )
   FIND_LIBRARY(THE_LIBRARY ${FRAMEWORK_NAME})
   MARK_AS_ADVANCED (THE_LIBRARY)
   SET(EXTRA_LIBS ${EXTRA_LIBS} ${THE_LIBRARY})
ENDIF (APPLE)
endFunction(addAppleFramework)

MACRO(SUBDIRLIST result curdir)
  FILE(GLOB children RELATIVE ${curdir} ${curdir}/*)
  SET(dirlist "")
  FOREACH(child ${children})
    IF(IS_DIRECTORY ${curdir}/${child})
        SET(dirlist ${dirlist} ${child})
    ENDIF()
  ENDFOREACH()
  SET(${result} ${dirlist})
ENDMACRO()


set(LIBRARY_OUTPUT_PATH ${CMAKE_BINARY_DIR})

project (JamomaCore)

### Here are the Jamoma Submodules ###
add_subdirectory(Foundation)
add_subdirectory(DSP)
add_subdirectory(Graph)
add_subdirectory(AudioGraph)
add_subdirectory(Modular)
add_subdirectory(Score)

