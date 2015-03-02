# Creation of the required export files.
include(CMakePackageConfigHelpers)
write_basic_package_version_file(
  "${CMAKE_CURRENT_BINARY_DIR}/Jamoma/JamomaConfigVersion.cmake"
  VERSION ${Jamoma_VERSION}
  COMPATIBILITY AnyNewerVersion
)

configure_file(${CMAKE_CURRENT_LIST_DIR}/config/JamomaConfig.cmake
			  "${CMAKE_CURRENT_BINARY_DIR}/Jamoma/JamomaConfig.cmake"
			   COPYONLY)

install(FILES 
			${CMAKE_CURRENT_LIST_DIR}/config/JamomaConfig.cmake
		   "${CMAKE_CURRENT_BINARY_DIR}/Jamoma/JamomaConfigVersion.cmake"
		DESTINATION ${ConfigPackageLocation}
		COMPONENT Devel)
