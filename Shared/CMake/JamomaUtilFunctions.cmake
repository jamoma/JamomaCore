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

	target_link_libraries(${PROJECT_NAME} ${JAMOMA_CURRENT_LIBRARY_NAME})

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

## Function to add the Max/MSP includes ##
# TODO put this in a module file instead.
function(addMaxsupport)
	find_path(JAMOMAMAX_PATH "source/c74support/max-includes/commonsyms.h"
			  HINTS "${CMAKE_SOURCE_DIR}/../Implementations/Max"
			  		"${CMAKE_SOURCE_DIR}/Implementations/Max")
	set(MAXSDK_PATH "${JAMOMAMAX_PATH}/source/c74support/")

	include_directories("${MAXSDK_PATH}/max-includes")
	include_directories("${MAXSDK_PATH}/msp-includes")
	include_directories("${MAXSDK_PATH}/jit-includes")
	include_directories("${JAMOMAMAX_PATH}/library/includes")

	FIND_LIBRARY(MaxAPI_LIB 
				 NAMES MaxAPI
				 PATHS ${MAXSDK_PATH}/max-includes/)
	MARK_AS_ADVANCED (MaxAPI_LIB)
	SET(MaxAPI_LIB ${MaxAPI_LIB})
	
	if(WIN32)
		if(CMAKE_BUILD_TYPE STREQUAL "Release")
			add_definitions(-DMAXAPI_USE_MSCRT)
		endif()
		# FIND_LIBRARY(MaxCRT_LIB 
					 # NAMES maxcrt
					 # PATHS ${MAXSDK_PATH}/max-includes/)
		# MARK_AS_ADVANCED (MaxCRT_LIB)
		# SET(MaxCRT_LIB ${MaxCRT_LIB})
		# FIND_LIBRARY(MaxCRT_P_LIB 
					 # NAMES maxcrt_p
					 # PATHS ${MAXSDK_PATH}/max-includes/)
		# MARK_AS_ADVANCED (MaxCRT_P_LIB)
		# SET(MaxCRT_P_LIB ${MaxCRT_P_LIB})
	endif()
	
	FIND_LIBRARY(MaxAudio_LIB 
				 NAMES
				 	MaxAudio 
				 	MaxAudioAPI
				 PATHS
				 	${MAXSDK_PATH}/msp-includes
				 	${MAXSDK_PATH}/msp-includes/x64
	)
	MARK_AS_ADVANCED (MaxAudio_LIB)
	SET(MaxAudio_LIB ${MaxAudio_LIB})

	FIND_LIBRARY(Jitter_LIB 
				 NAMES
				 	jitlib 
				 	JitterAPI
				 PATHS
				 	${MAXSDK_PATH}/jit-includes
				 	${MAXSDK_PATH}/jit-includes/x64
	)
	MARK_AS_ADVANCED (Jitter_LIB)
	SET(Jitter_LIB ${Jitter_LIB})

if(NOT WIN32)
	set(C74_SYM_LINKER_FLAGS " -Wl,-U,_sysmem_newptr,-U,_sysmem_freeptr,-U,_sysmem_resizeptr,-U,_strncpy_zero,-U,_stdinletinfo,-U,_outlet_new,-U,_outlet_anything,-U,_object_getmethod,-U,_object_post,-U,_object_obex_store,-U,_object_obex_dumpout,-U,_object_method,-U,_object_error,-U,_object_alloc,-U,_hashtab_store,-U,_hashtab_new,-U,_hashtab_lookup,-U,_gensym,-U,_error,-U,_common_symbols_gettable,-U,_class_register,-U,_class_new,-U,_class_attr_addattr_parse,-U,_class_addmethod,-U,_class_addattr,-U,_attr_offset_new,-U,_attr_args_process,-U,_attr_args_offset,-U,_atom_setsym,-U,_atom_setlong,-U,_atom_setfloat,-U,_atom_gettype,-U,_atom_getsym,-U,_atom_getlong,-U,_atom_getfloat,-U,_z_dsp_setup,-U,_z_dsp_free,-U,_sys_getsr,-U,_dsp_addv,-U,_class_dspinit,-U,_jit_object_method,-U,_outlet_int,-U,_outlet_list,-U,_class_attr_get,-U,_dsp_add,-U,_fileusage_addfile,-U,_locatefile_extended,-U,_nameinpath,-U,_path_closefolder,-U,_path_foldernextfile,-U,_path_openfolder,-U,_defer_low,-U,_globalsymbol_reference,-U,_globalsymbol_dereference,-U,_bangout,-U,_freeobject,-U,_outlet_bang,-U,_outlet_float,-U,_proxy_getinlet,-U,_proxy_new,-U,_atom_arg_getlong,-U,_atom_arg_getsym,-U,_floatout,-U,_intout,-U,_post,-U,_sys_getblksize,-U,_sysmem_newptrclear,-U,_object_attr_setfloat,-U,_object_attr_setlong,-U,_atom_arg_getfloat,-U,_atom_getfloatarg,-U,_listout,-U,_attr_addfilter_clip,-U,_attr_dictionary_process,-U,_class_attr_addattr_format,-U,_jbox_free,-U,_jbox_get_rect_for_view,-U,_jbox_initclass,-U,_jbox_new,-U,_jbox_ready,-U,_jbox_redraw,-U,_jgraphics_fill,-U,_jgraphics_rectangle_rounded,-U,_jgraphics_set_source_jrgba,-U,_object_attach_byptr,-U,_object_attr_get_rect,-U,_object_attr_set_rect,-U,_object_detach_byptr,-U,_object_dictionaryarg,-U,_object_register,-U,_object_unregister,-U,_patcherview_get_jgraphics,-U,_symbol_unique,-U,_attr_offset_array_new,-U,_defer,-U,_object_free,-U,_object_method_typed,-U,_object_new_typed,-U,_path_copyfile,-U,_path_copyfolder,-U,_path_createfolder,-U,_path_frompathname,-U,_path_nameconform,-U,_clock_delay,-U,_clock_new,-U,_clock_unset,-U,_intin,-U,_addmess,-U,_newobject,-U,_setup,-U,_z_add_signalmethod,-U,_object_attr_setsym,-U,_open_dialog,-U,_path_addnamed,-U,_path_createsysfile,-U,_path_getfilemoddate,-U,_path_opensysfile,-U,_path_topotentialname,-U,_sysfile_close,-U,_sysfile_geteof,-U,_sysfile_read,-U,_sysfile_seteof,-U,_sysfile_write,-U,_systime_secondstodate,-U,_qelem_new,-U,_qelem_free,-U,_qelem_set,-U,_jit_class_addadornment,-U,_jit_class_addattr,-U,_jit_class_addmethod,-U,_jit_class_findbyname,-U,_jit_class_new,-U,_jit_class_register,-U,_jit_error_code,-U,_jit_object_alloc,-U,_jit_object_free,-U,_jit_object_new,-U,_jit_object_new_imp,-U,_max_addmethod_usurp_low,-U,_max_jit_attr_args,-U,_max_jit_classex_mop_wrap,-U,_max_jit_classex_setup,-U,_max_jit_classex_standard_wrap,-U,_max_jit_mop_assist,-U,_max_jit_mop_free,-U,_max_jit_mop_getoutputmode,-U,_max_jit_mop_outputmatrix,-U,_max_jit_mop_setup_simple,-U,_max_jit_obex_adornment_get,-U,_max_jit_obex_free,-U,_max_jit_obex_jitob_get,-U,_max_jit_obex_new,-U,_jbox_get_nextobject,-U,_jbox_get_object,-U,_jbox_get_varname,-U,_jpatcher_get_box,-U,_jpatcher_get_firstobject,-U,_object_attr_getnames,-U,_object_attr_getvalueof,-U,_object_new_imp,-U,_object_obex_lookup,-U,_jit_atom_setfloat,-U,_jit_error_sym,-U,_jit_matrix_info_default,-U,_jit_object_findregistered,-U,_jit_symbol_unique,-U,_max_jit_obex_dumpout,-U,_jit_object_detach,-U,_jit_object_attach,-U,_atom_setobj,-U,_gettime,-U,_critical_enter,-U,_critical_exit,-U,_object_attr_setchar,-U,_object_new,-U,_object_warn,-U,_outlet_atoms,-U,_atom_setparse,-U,_class_findbyname,-U,_maxversion,-U,_newinstance,-U,_object_attr_getobj,-U,_object_attr_getsym,-U,_object_classname,-U,_object_method_long,-U,_object_method_parse,-U,_path_topathname,-U,_qelem_unset,-U,_saveas_promptset,-U,_saveasdialog_extended,-U,_setclock_fdelay,-U,_sysmem_copyptr,-U,_systime_ms,-U,_zgetfn,-U,__jit_sym_char,-U,__jit_sym_getdata,-U,__jit_sym_jit_matrix,-U,__jit_sym_setinfo,-U,_jit_object_register,-U,_jit_object_unregister,-U,_class_dspinitjbox,-U,_jbox_notify,-U,_jgraphics_attr_setrgba,-U,_jgraphics_image_surface_create,-U,_jgraphics_image_surface_draw,-U,_jgraphics_image_surface_set_pixel,-U,_jgraphics_line_to,-U,_jgraphics_move_to,-U,_jgraphics_rectangle_fill_fast,-U,_jgraphics_set_line_width,-U,_jgraphics_stroke,-U,_jgraphics_surface_destroy,-U,_notify_free,-U,_sys_getdspstate,-U,_z_jbox_dsp_free,-U,_z_jbox_dsp_setup,-U,_classname_openhelp,-U,_classname_openrefpage,-U,_jbox_getoutlet,-U,_newobject_sprintf,-U,_object_attr_setvalueof,-U,_object_method_sym,-U,_filewatcher_new,-U,_filewatcher_start,-U,_filewatcher_stop,-U,_atom_alloc,-U,_attribute_new_parse,-U,_class_sticky,-U,_class_sticky_clear,-U,_dictionary_read,-U,_jbox_get_textfield,-U,_jbox_set_mousedragdelta,-U,_jdialog_showtext,-U,_jfont_create,-U,_jfont_destroy,-U,_jgraphics_arc,-U,_jgraphics_close_path,-U,_jgraphics_select_font_face,-U,_jgraphics_set_font_size,-U,_jgraphics_show_text,-U,_jpatcher_get_firstview,-U,_jpopupmenu_additem,-U,_jpopupmenu_addseperator,-U,_jpopupmenu_create,-U,_jpopupmenu_destroy,-U,_jpopupmenu_popup,-U,_jpopupmenu_setfont,-U,_linklist_append,-U,_linklist_clear,-U,_linklist_getindex,-U,_linklist_getsize,-U,_linklist_new,-U,_object_addattr_format,-U,_object_attach_byptr_register,-U,_object_attr_setcolor,-U,_object_attr_setobj,-U,_symobject_new,-U,_textfield_get_textmargins,-U,_textfield_set_editonclick,-U,_textfield_set_noactivate,-U,_textfield_set_readonly,-U,_textfield_set_textcolor,-U,_textfield_set_textmargins,-U,_textfield_set_useellipsis,-U,_textfield_set_wordwrap,-U,_jgraphics_line_draw_fast,-U,_jgraphics_rectangle,-U,_jmouse_setposition_view,-U,_atom_gettext,-U,_jgraphics_oval,-U,_jgraphics_set_source_rgb,-U,_jgraphics_set_source_rgba,-U,_jrgba_set,-U,_jpopupmenu_popup_nearbox,-U,_jtextlayout_create,-U,_jtextlayout_destroy,-U,_jtextlayout_draw,-U,_jtextlayout_set,-U,_jtextlayout_settextcolor,-U,__jit_sym_float32,-U,__jit_sym_getindex,-U,__jit_sym_jit_attr_offset,-U,__jit_sym_jit_mop,-U,__jit_sym_lock,-U,_jit_object_error,-U,__jit_sym_jit_attr_offset_array,-U,__jit_sym_long,-U,__jit_sym_symbol,-U,_table_get,-U,_jbox_get_maxclass,-U,_jpatchline_get_box1,-U,_jpatchline_get_box2,-U,_jpatchline_get_inletnum,-U,_jpatchline_get_outletnum,-U,_cpost,-U,_object_error_obtrusive,-U,_gensym_tr,-U,_str_tr,-U,_jit_object_method_imp,-U,_object_method_imp,-U,_buffer_getchannelcount,-U,_buffer_getframecount,-U,_buffer_locksamples,-U,_buffer_ref_getobject,-U,_buffer_ref_new,-U,_buffer_ref_notify,-U,_buffer_ref_set,-U,_buffer_setdirty,-U,_buffer_unlocksamples,-U,_buffer_view,-U,_dictionary_sprintf,-U,_dictionary_appendatoms,-U,_dictionary_new,-U,_dictionary_appenddictionary,-U,_jpatcher_get_parentpatcher,-U,_atom_getlong" )

	set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} ${C74_SYM_LINKER_FLAGS}" PARENT_SCOPE)
	set(CMAKE_SHARED_LINKER_FLAGS "${CMAKE_SHARED_LINKER_FLAGS} ${C74_SYM_LINKER_FLAGS}" PARENT_SCOPE)
	set(CMAKE_MODULE_LINKER_FLAGS "${CMAKE_SHARED_LINKER_FLAGS} ${C74_SYM_LINKER_FLAGS}" PARENT_SCOPE)
endif() # Todo : find something equivalent for windows
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
