cmake_minimum_required(VERSION 2.6)

SET (CMAKE_C_COMPILER "clang")
SET (CMAKE_CXX_COMPILER "clang++")
SET (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -stdlib=libc++ -std=c++11 -fPIC -Wno-unknown-pragmas -Wno-deprecated-register -Wno-conversion")

function(setExtensionSuffix)
	if(APPLE)
        SET_TARGET_PROPERTIES(${PROJECT_NAME} PROPERTIES PREFIX "")
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


project (JamomaCore)
set(LIBRARY_OUTPUT_PATH ${CMAKE_BINARY_DIR})
set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${PROJECT_SOURCE_DIR}/Shared/toolchains/modules/")


if(APPLE)
	add_definitions(-DTT_PLATFORM_MAC)
	set(CMAKE_LIBRARY_PATH ${CMAKE_LIBRARY_PATH} /usr/local/lib)
    set(CMAKE_INSTALL_PREFIX "/usr/local/jamoma/")

# Independent shared libraries
    set(CMAKE_MACOSX_RPATH 1)

# CPack
    SET(CPACK_GENERATOR "Bundle")
	SET(CPACK_BUNDLE_NAME "Jamoma")
	SET(CPACK_BUNDLE_ICON "${CMAKE_CURRENT_SOURCE_DIR}/Shared/toolchains/icone.icns")
	SET(CPACK_BUNDLE_PLIST "${CMAKE_CURRENT_SOURCE_DIR}/Shared/toolchains/jamoma-Info.plist")

elseif(UNIX)
	add_definitions(-DTT_PLATFORM_LINUX)
	SET(CPACK_GENERATOR "DEB")
	SET(CPACK_DEBIAN_PACKAGE_MAINTAINER "Jean-Michaël Celerier")
	SET(CPACK_SET_DESTDIR true)
	SET(CPACK_INSTALL_PREFIX "/usr/local/lib/jamoma/")

elseif(WIN32)
	add_definitions(-DTT_PLATFORM_WIN)
	SET(CPACK_GENERATOR "NSIS")

endif()


### Here are the Jamoma Submodules ###
add_subdirectory(Foundation)
add_subdirectory(DSP)
add_subdirectory(Graph)
add_subdirectory(AudioGraph)
add_subdirectory(Modular)

if(IS_DIRECTORY "${PROJECT_SOURCE_DIR}/Score")
	add_subdirectory(Score)
endif()


### Creation of packages ###
SET(CPACK_PACKAGE_NAME "Jamoma")
SET(CPACK_PACKAGE_VENDOR "Jamoma")

SET(CPACK_PACKAGE_DESCRIPTION_SUMMARY "Jamoma is a community-based project, dedicated to the development of several toolsets and frameworks for artistic creation through digital means. ")
SET(CPACK_PACKAGE_VERSION "0.6-dev")
SET(CPACK_PACKAGE_VERSION_MAJOR "0")
SET(CPACK_PACKAGE_VERSION_MINOR "6")

SET(CPACK_SOURCE_GENERATOR TGZ)
SET(CPACK_SOURCE_PACKAGE_FILE_NAME "Jamoma-0.6-dev")
INCLUDE(CPack)

