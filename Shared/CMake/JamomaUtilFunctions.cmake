cmake_minimum_required(VERSION 3.0)

### Core libraries ###
function(setupJamomaLibraryProperties LIBNAME)
	# Filename
	set_property(TARGET ${LIBNAME}
				 PROPERTY OUTPUT_NAME Jamoma${LIBNAME})

	if(BUILD_JAMOMAMAX)
    	if(APPLE)
        	set_property(TARGET ${PROJECT_NAME}
                     	PROPERTY INSTALL_RPATH "@loader_path/../../../../support;@loader_path")
    	else(NOT WIN32)
        	set_property(TARGET ${PROJECT_NAME}
                     	PROPERTY INSTALL_RPATH "\$ORIGIN/../support;\$ORIGIN")
    	endif()
	endif()

	if(BUILD_JAMOMAPD)
    	if(APPLE)
        	set_property(TARGET ${PROJECT_NAME}
                     	PROPERTY INSTALL_RPATH "@loader_path/support;@loader_path")
    	else(NOT WIN32)
        	set_property(TARGET ${PROJECT_NAME}
                     	PROPERTY INSTALL_RPATH "\$ORIGIN/support;\$ORIGIN")
    	endif()
	endif()

	# Version
	set_property(TARGET ${LIBNAME}
				 PROPERTY VERSION ${Jamoma_VERSION})
	set_property(TARGET ${LIBNAME}
				 PROPERTY SOVERSION ${Jamoma_SOVERSION})
	set_property(TARGET ${LIBNAME} APPEND
				 PROPERTY COMPATIBLE_INTERFACE_STRING Jamoma_MAJOR_VERSION)

	# TODO replace with target_include_directories
	if(APPLE)
		set_property(TARGET ${LIBNAME} APPEND
					 PROPERTY INTERFACE_INCLUDE_DIRECTORIES
						$<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/includes>
						$<INSTALL_INTERFACE:include>)
	else()
		set_property(TARGET ${LIBNAME} APPEND
					 PROPERTY INTERFACE_INCLUDE_DIRECTORIES
						$<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/includes>
						$<INSTALL_INTERFACE:include/jamoma>)
	endif()

	install(TARGETS ${LIBNAME}
			EXPORT ${LIBNAME}Targets
			LIBRARY DESTINATION lib
			ARCHIVE DESTINATION lib
			RUNTIME DESTINATION bin
			COMPONENT Devel)

	# TODO make a single variable for the include folder.
	if(APPLE)
		install(FILES ${PROJECT_HDRS} DESTINATION "include" COMPONENT Devel)
	else()
		install(FILES ${PROJECT_HDRS} DESTINATION "include/jamoma" COMPONENT Devel)
	endif()

	export(EXPORT ${LIBNAME}Targets
		   FILE "${CMAKE_CURRENT_BINARY_DIR}/Jamoma/Jamoma${LIBNAME}Targets.cmake"
		   NAMESPACE Jamoma::)

	install(EXPORT ${LIBNAME}Targets
			FILE Jamoma${LIBNAME}Targets.cmake
			NAMESPACE Jamoma::
			DESTINATION ${ConfigPackageLocation}
			COMPONENT Devel)
endFunction()


function(add_jamoma_library)
	# Dynamic
	add_library(${PROJECT_NAME}
				SHARED
				${PROJECT_SRCS} ${PROJECT_HDRS})

	setupJamomaLibraryProperties(${PROJECT_NAME})

	# Static
	if(APPLE AND STATIC_TESTING)
		# i386
		add_library(${PROJECT_NAME}-i386-static
					STATIC
					${PROJECT_SRCS} ${PROJECT_HDRS})
		set_property(TARGET ${PROJECT_NAME}-i386-static
					 PROPERTY OSX_ARCHITECTURES i386)
		setupJamomaLibraryProperties(${PROJECT_NAME}-i386-static)

		# x86_64
		add_library(${PROJECT_NAME}-x86_64-static
					STATIC
					${PROJECT_SRCS} ${PROJECT_HDRS})

		set_property(TARGET ${PROJECT_NAME}-x86_64-static
					 PROPERTY OSX_ARCHITECTURES x86_64)
		setupJamomaLibraryProperties(${PROJECT_NAME}-x86_64-static)
	endif()

	if(BUILD_JAMOMAMAX)
		install(TARGETS ${PROJECT_NAME}
				DESTINATION "${JAMOMAMAX_INSTALL_FOLDER}/Jamoma/support"
				COMPONENT JamomaMax)
                install(TARGETS ${PROJECT_NAME}
                                DESTINATION "${JAMOMAMAX_MODULAR_INSTALL_FOLDER}/Jamoma/support"
                                COMPONENT JamomaMaxModularOnly)
	endif()

	if(BUILD_JAMOMAPD)
		install(TARGETS ${PROJECT_NAME}
                DESTINATION "${JAMOMAPD_INSTALL_FOLDER}/Jamoma/support"
                COMPONENT JamomaPd)
	endif()
endFunction()



### Extensions ###
function(add_jamoma_extension)
	# TODO : static extensions
	add_library(${PROJECT_NAME}
				SHARED
				${PROJECT_SRCS} ${PROJECT_HDRS})

	target_link_libraries(${PROJECT_NAME} PUBLIC ${JAMOMA_CURRENT_LIBRARY_NAME})

	# Rpath
    if(APPLE)
        set_property(TARGET ${PROJECT_NAME}
                     PROPERTY INSTALL_RPATH "@loader_path")
    elseif(NOT WIN)
        set_property(TARGET ${PROJECT_NAME}
                     PROPERTY INSTALL_RPATH "\$ORIGIN")
    endif()

	# Install the extension
	if(APPLE)
		set(JAMOMA_EXTENSION_FOLDER "extensions")
	else()
		set(JAMOMA_EXTENSION_FOLDER "lib/jamoma")
	endif()

	# TODO 1 component per extension ? Maybe overkill...
	install(TARGETS ${PROJECT_NAME}
			EXPORT ${JAMOMA_CURRENT_LIBRARY_NAME}Targets
			DESTINATION "${JAMOMA_EXTENSION_FOLDER}"
			COMPONENT Extensions)

	# Set extension suffix according to platform conventions
	set_target_properties(${PROJECT_NAME} PROPERTIES PREFIX "")
	if(APPLE)
		set_target_properties(${PROJECT_NAME} PROPERTIES SUFFIX ".ttdylib")
	elseif(ANDROID)
		set_target_properties(${PROJECT_NAME} PROPERTIES PREFIX "lib")
		set_target_properties(${PROJECT_NAME} PROPERTIES SUFFIX ".so")
	elseif(UNIX)
		set_target_properties(${PROJECT_NAME} PROPERTIES SUFFIX ".ttso")
	elseif(WIN32)
		set_target_properties(${PROJECT_NAME} PROPERTIES SUFFIX ".ttdll")
	endif()

	### Tests ###
	addTestTarget()

	if(BUILD_JAMOMAMAX)
		install(TARGETS ${PROJECT_NAME}
				DESTINATION "${JAMOMAMAX_INSTALL_FOLDER}/Jamoma/support"
				COMPONENT JamomaMax)
	endif()

        if(BUILD_JAMOMAPD)
                install(TARGETS ${PROJECT_NAME}
                                DESTINATION "${JAMOMAPD_INSTALL_FOLDER}/Jamoma/support"
                                COMPONENT JamomaPd)
        endif()
endfunction()



## Add Apple frameworks ##

function(target_link_frameworks)
	set(oneValueArgs TARGET)
	set(multiValueArgs FRAMEWORKS)
	cmake_parse_arguments(target_link_frameworks "" "${oneValueArgs}" "${multiValueArgs}" ${ARGN} )

	if(APPLE)
	foreach(THE_FRAMEWORK ${target_link_frameworks_FRAMEWORKS})
		unset(THE_LIBRARY CACHE)
		find_library(THE_LIBRARY ${THE_FRAMEWORK})
		target_link_libraries(${target_link_frameworks_TARGET} ${THE_LIBRARY})
		message("Linking ${target_link_frameworks_TARGET} with ${THE_LIBRARY}")
	endforeach()
	endif()
endFunction()

## List subdirectories (for extensions) ##
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


## Add extensions recursively ##
function(addExtensions)
	SUBDIRLIST(SUBDIRS ${CMAKE_CURRENT_SOURCE_DIR})
	SET(IS_EXTENSION 1)
	FOREACH(subdir ${SUBDIRS})
	    ADD_SUBDIRECTORY(${subdir})
	ENDFOREACH()
endFunction()

## Function to create test targets ##
function(addTestTarget)
	if(NOT WIN32)
		if(EXISTS ${CMAKE_CURRENT_SOURCE_DIR}/test.cpp)

			if(APPLE AND NOT IS_EXTENSION AND STATIC_TESTING)
				# i386
				add_executable("test32_${PROJECT_NAME}" ${CMAKE_CURRENT_SOURCE_DIR}/test.cpp ${TEST_SRCS})
				set_property(TARGET "test32_${PROJECT_NAME}" PROPERTY OSX_ARCHITECTURES i386)
				target_link_libraries("test32_${PROJECT_NAME}" ${PROJECT_NAME}-i386-static)
				add_test("test32_${PROJECT_NAME}" "test32_${PROJECT_NAME}")

				# x86_64
				add_executable("test64_${PROJECT_NAME}" ${CMAKE_CURRENT_SOURCE_DIR}/test.cpp ${TEST_SRCS})
				set_property(TARGET "test64_${PROJECT_NAME}" PROPERTY OSX_ARCHITECTURES x86_64)
				target_link_libraries("test64_${PROJECT_NAME}" ${PROJECT_NAME}-x86_64-static)

				add_test("test64_${PROJECT_NAME}" "test64_${PROJECT_NAME}")
			else()
				add_executable("test_${PROJECT_NAME}" ${CMAKE_CURRENT_SOURCE_DIR}/test.cpp ${TEST_SRCS})
				target_link_libraries("test_${PROJECT_NAME}" ${PROJECT_NAME})

				add_test("test_${PROJECT_NAME}" "test_${PROJECT_NAME}")
			endif()
		endif()
	endif()
endFunction()

# This function checks the architectures of a given library on OS X
function(osx_check_architecture LIBNAME LIBFILE)
	if(APPLE)
		if("${CMAKE_OSX_ARCHITECTURES}" STREQUAL "")
			set(${LIBNAME}_DYLIB_ARCHS_MATCH_REQUIRED_ARCHS True PARENT_SCOPE)
			return()
		endif()
		message("Checking ${LIBFILE} architecture.")
		execute_process(COMMAND "/usr/bin/file" "${LIBFILE}"
						OUTPUT_VARIABLE DYLIB_ARCHS)

		set(${LIBNAME}_DYLIB_ARCHS_MATCH_REQUIRED_ARCHS False PARENT_SCOPE)

		if("${CMAKE_OSX_ARCHITECTURES}" MATCHES ".*x86_64.*")
			if("${CMAKE_OSX_ARCHITECTURES}" MATCHES ".*i386.*")
				if("${DYLIB_ARCHS}" MATCHES "i386" AND "${DYLIB_ARCHS}" MATCHES ".*x86_64.*")
					set(${LIBNAME}_DYLIB_ARCHS_MATCH_REQUIRED_ARCHS True PARENT_SCOPE)
				endif()
			else()
				if("${DYLIB_ARCHS}"  MATCHES ".*x86_64.*")
					set(${LIBNAME}_DYLIB_ARCHS_MATCH_REQUIRED_ARCHS True PARENT_SCOPE)
				endif()
			endif()
		elseif("${CMAKE_OSX_ARCHITECTURES}" MATCHES "i386")
			if("${DYLIB_ARCHS}" MATCHES "i386")
				set(${LIBNAME}_DYLIB_ARCHS_MATCH_REQUIRED_ARCHS True PARENT_SCOPE)
			endif()
		endif()
	else()
		set(${LIBNAME}_DYLIB_ARCHS_MATCH_REQUIRED_ARCHS True PARENT_SCOPE)
	endif()
endFunction()
