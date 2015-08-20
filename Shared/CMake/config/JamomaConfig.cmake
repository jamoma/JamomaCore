include("${CMAKE_CURRENT_LIST_DIR}/JamomaFoundationTargets.cmake")
include("${CMAKE_CURRENT_LIST_DIR}/JamomaDSPTargets.cmake")
include("${CMAKE_CURRENT_LIST_DIR}/JamomaGraphTargets.cmake")
include("${CMAKE_CURRENT_LIST_DIR}/JamomaAudioGraphTargets.cmake")
include("${CMAKE_CURRENT_LIST_DIR}/JamomaModularTargets.cmake")
include("${CMAKE_CURRENT_LIST_DIR}/JamomaScoreTargets.cmake")

# Windows deployment
function(copy_in_folder_jamoma theFolder theLibs thePlugins)

    foreach(library ${theLibs})
        install(FILES $<TARGET_FILE:Jamoma::${library}>
                DESTINATION "${theFolder}")
    endforeach()

    foreach(plugin ${thePlugins})
        install(FILES $<TARGET_FILE:Jamoma::${plugin}>
                DESTINATION "${theFolder}/extensions")
    endforeach()

    # Also copy the required DLLs
	get_property(JAMOMA_FOUNDATION_LIB TARGET Jamoma::Foundation PROPERTY LOCATION)
	get_filename_component(JAMOMA_LIBFOLDER "${JAMOMA_FOUNDATION_LIB}" DIRECTORY)
    install(FILES "${JAMOMA_LIBFOLDER}/../support/libxml2.dll"
            DESTINATION ${theFolder})
endfunction()

# OS X deployment
function(copy_in_bundle_jamoma theTarget theBundle theLibs thePlugins)
# TODO use OSX bundle name property?
	# Jamoma setup
	    add_custom_command(TARGET ${theTarget} POST_BUILD
					  COMMAND mkdir -p ${theBundle}/Contents/Frameworks/jamoma/extensions)

	foreach(library ${theLibs})
		message("${library}")
		add_custom_command(TARGET ${theTarget} POST_BUILD
						   COMMAND ${CMAKE_COMMAND} -E copy $<TARGET_FILE:Jamoma::${library}> ${theBundle}/Contents/Frameworks/jamoma)
	endforeach()
	foreach(plugin ${thePlugins})

		message("${plugin}")
		add_custom_command(TARGET ${theTarget} POST_BUILD
						   COMMAND ${CMAKE_COMMAND} -E copy $<TARGET_FILE:Jamoma::${plugin}> ${theBundle}/Contents/Frameworks/jamoma/extensions)
	endforeach()

endfunction()


function(fixup_bundle_jamoma theBundle theExecutable theLibs)
	install(CODE "EXECUTE_PROCESS(COMMAND install_name_tool -add_rpath @executable_path/../Frameworks/jamoma ${theBundle}/Contents/MacOS/${theExecutable})" )

	foreach(library ${theLibs})
		install(CODE "EXECUTE_PROCESS(COMMAND install_name_tool -change @executable_path/../MacOS/libJamoma${library}.6.dylib @executable_path/../Frameworks/jamoma/libJamoma${library}.6.dylib ${theBundle}/Contents/MacOS/${theExecutable})" )
	endforeach()
endfunction()
