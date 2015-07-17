if(NOT TARGET xml2)
add_library(xml2 SHARED IMPORTED)
endif()

set(WIN32_LIBXML2_FOLDER "${CMAKE_CURRENT_LIST_DIR}//..//..//..//Foundation//library//libxml2//win32//")
# Headers are the same
find_path(LIBXML2_INCLUDE_DIR NAMES libxml/xpath.h
	PATHS 
	"${WIN32_LIBXML2_FOLDER}//include"
	PATH_SUFFIXES libxml2)

# Find the correct .lib / .dll.
if(MINGW)
	find_library(LIBXML2_LIBRARIES NAMES libxml2 xml2
		PATHS 
		"${WIN32_LIBXML2_FOLDER}//libmingw")

	set(LIBXML2_DLL "${WIN32_LIBXML2_FOLDER}//libmingw//libxml2.dll")
elseif(WIN64)
	find_library(LIBXML2_LIBRARIES_DEBUG_DYNAMIC NAMES libxml2 xml2
		PATHS 
		"${WIN32_LIBXML2_FOLDER}//lib64//debug")
	find_library(LIBXML2_LIBRARIES_RELEASE_DYNAMIC NAMES libxml2 xml2
		PATHS 
		"${WIN32_LIBXML2_FOLDER}//lib64//release")
   
	if(CMAKE_BUILD_TYPE STREQUAL "Debug")
		set(LIBXML2_LIBRARIES ${LIBXML2_LIBRARIES_DEBUG_DYNAMIC})
		set(LIBXML2_DLL "${WIN32_LIBXML2_FOLDER}//lib64//debug//libxml2.dll")
	else()
		set(LIBXML2_LIBRARIES ${LIBXML2_LIBRARIES_RELEASE_DYNAMIC})
		set(LIBXML2_DLL "${WIN32_LIBXML2_FOLDER}//lib64//release//libxml2.dll")
	endif()
	
elseif(WIN32)
   find_library(LIBXML2_LIBRARIES_DEBUG_STATIC NAMES libxml2_s xml2_s
		PATHS 
		"${WIN32_LIBXML2_FOLDER}//lib//debug")
	find_library(LIBXML2_LIBRARIES_RELEASE_STATIC NAMES libxml2_s xml2_s
		PATHS 
		"${WIN32_LIBXML2_FOLDER}//lib//release")
   find_library(LIBXML2_LIBRARIES_DEBUG_DYNAMIC NAMES libxml2 xml2
		PATHS 
		"${WIN32_LIBXML2_FOLDER}//lib//debug")
	find_library(LIBXML2_LIBRARIES_RELEASE_DYNAMIC NAMES libxml2 xml2
		PATHS 
		"${WIN32_LIBXML2_FOLDER}//lib//release")
	if(CMAKE_BUILD_TYPE STREQUAL "Debug")
		set(LIBXML2_LIBRARIES ${LIBXML2_LIBRARIES_DEBUG_DYNAMIC})
		set(LIBXML2_DLL "${WIN32_LIBXML2_FOLDER}//lib//debug//libxml2.dll")
	else()
		set(LIBXML2_LIBRARIES ${LIBXML2_LIBRARIES_RELEASE_DYNAMIC})
		set(LIBXML2_DLL "${WIN32_LIBXML2_FOLDER}//lib//release//libxml2.dll")
	endif()
	
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