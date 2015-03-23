cmake_minimum_required(VERSION 3.0)
project (JamomaCore)

# If we're directly building this folder without umbrella.
if(NOT JAMOMA_UMBRELLA)
	### Configuration ###
	include(${PROJECT_SOURCE_DIR}/Shared/CMake/JamomaConfiguration.cmake NO_POLICY_SCOPE)
	include(${PROJECT_SOURCE_DIR}/Shared/CMake/JamomaUtilFunctions.cmake NO_POLICY_SCOPE)
	
	### Platform-specific configuration ###
	include(${PROJECT_SOURCE_DIR}/Shared/CMake/JamomaPlatformSpecific.cmake NO_POLICY_SCOPE)
	
	### Testing ###
	include(${PROJECT_SOURCE_DIR}/Shared/CMake/JamomaTests.cmake NO_POLICY_SCOPE)
	include(${PROJECT_SOURCE_DIR}/Shared/CMake/JamomaDoxygen.cmake NO_POLICY_SCOPE)
endif()

### Build of the Jamoma Submodules ###
add_subdirectory(Foundation)
add_subdirectory(DSP)
add_subdirectory(Graph)
add_subdirectory(AudioGraph)
add_subdirectory(Modular)

if(NOT IOS)
	add_subdirectory(Score)
endif()

if(NOT JAMOMA_UMBRELLA)
	### Creation of packages ###
	include(${PROJECT_SOURCE_DIR}/Shared/CMake/JamomaPack.cmake NO_POLICY_SCOPE)
	include(${PROJECT_SOURCE_DIR}/Shared/CMake/JamomaExports.cmake NO_POLICY_SCOPE)
endif()
