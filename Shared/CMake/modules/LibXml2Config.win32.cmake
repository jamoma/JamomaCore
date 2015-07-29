if(NOT TARGET xml2)
add_library(xml2 SHARED IMPORTED)
endif()

set(WIN32_LIBXML2_FOLDER "${CMAKE_CURRENT_LIST_DIR}//..//..//..//Foundation//library//libxml2//win32")
# Headers are the same
find_path(LIBXML2_INCLUDE_DIR NAMES libxml/xpath.h
	PATHS 
	"${WIN32_LIBXML2_FOLDER}//include"
	PATH_SUFFIXES libxml2)
message("LIBXML2_INCLUDE_DIR : ${LIBXML2_INCLUDE_DIR}")
# Find the correct .lib / .dll.
set(CMAKE_FIND_LIBRARY_SUFFIXES ".lib")
if(MINGW)
   find_library(LIBXML2_LIBRARIES NAMES libxml2
                PATHS "${WIN32_LIBXML2_FOLDER}//libmingw")
	set(LIBXML2_DLL "${WIN32_LIBXML2_FOLDER}//libmingw//libxml2.dll")
elseif(WIN64)
		message("looking for 64bit XML library")
	if(CMAKE_BUILD_TYPE STREQUAL "Debug")
	    find_library(LIBXML2_LIBRARIES NAMES libxml2
					 PATHS "${WIN32_LIBXML2_FOLDER}//lib64//debug")
		set(LIBXML2_DLL "${WIN32_LIBXML2_FOLDER}//lib64//debug//libxml2.dll")
	else()
	    find_library(LIBXML2_LIBRARIES NAMES libxml2
					 PATHS "${WIN32_LIBXML2_FOLDER}//lib64//release")
		set(LIBXML2_DLL "${WIN32_LIBXML2_FOLDER}//lib64//release//libxml2.dll")
	endif()
	
elseif(WIN32)
	message("looking for 32bit XML library")
	message("LIBXML2_LIBRARIES ${LIBXML2_LIBRARIES}")
   find_library(LIBXML2_LIBRARIES_DEBUG_STATIC NAMES libxml2_s
		PATHS 
		"${WIN32_LIBXML2_FOLDER}//lib//debug")
   message("LIBXML2_LIBRARIES_DEBUG_STATIC ${LIBXML2_LIBRARIES_DEBUG_STATIC}")
	find_library(LIBXML2_LIBRARIES_RELEASE_STATIC NAMES libxml2_s
		PATHS 
		"${WIN32_LIBXML2_FOLDER}//lib//release")
   message("LIBXML2_LIBRARIES_RELEASE_STATIC ${LIBXML2_LIBRARIES_RELEASE_STATIC}")
   find_library(LIBXML2_LIBRARIES_DEBUG_DYNAMIC NAMES libxml2
		PATHS 
		"${WIN32_LIBXML2_FOLDER}//lib//debug")
   message("LIBXML2_LIBRARIES_DEBUG_DYNAMIC ${LIBXML2_LIBRARIES_DEBUG_DYNAMIC}")
	find_library(LIBXML2_LIBRARIES_RELEASE_DYNAMIC NAMES libxml2
		PATHS 
		"${WIN32_LIBXML2_FOLDER}//lib//release")
   message("LIBXML2_LIBRARIES_RELEASE_DYNAMIC ${LIBXML2_LIBRARIES_RELEASE_DYNAMIC}")
	if(CMAKE_BUILD_TYPE STREQUAL "Debug")
		set(LIBXML2_LIBRARIES ${LIBXML2_LIBRARIES_DEBUG_STATIC})
		set(LIBXML2_DLL "${WIN32_LIBXML2_FOLDER}//lib//debug//libxml2.dll")
	else()
		set(LIBXML2_LIBRARIES ${LIBXML2_LIBRARIES_RELEASE_STATIC})
		set(LIBXML2_DLL "${WIN32_LIBXML2_FOLDER}//lib//release//libxml2.dll")
	endif()

	
	message("after search : LIBXML2_LIBRARIES ${LIBXML2_LIBRARIES}")
	
endif()

set_target_properties(xml2 PROPERTIES
					  IMPORTED_IMPLIB "${LIBXML2_LIBRARIES}" 
					  IMPORTED_LOCATION "${LIBXML2_DLL}"
					  JAMOMA_IMPORTED_LIBRARY_TAG True)


include(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(LibXml2
								  REQUIRED_VARS
									LIBXML2_LIBRARIES
									LIBXML2_INCLUDE_DIR)