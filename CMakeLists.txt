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

option(JAMOMA_USE_COTIRE "Will use cotire to boost build speed" OFF)
if(JAMOMA_USE_COTIRE)
	include(cotire)
endif()
	
### Build of the Jamoma Submodules ###
if(COMMAND cotire)
	include_directories(
		"${PROJECT_SOURCE_DIR}/Foundation/library/includes"
		"${PROJECT_SOURCE_DIR}/DSP/library/includes"
	)
endif()
add_subdirectory(Foundation)
add_subdirectory(DSP)

# Split in half because both modular and DSP have TTRamp.h.
if(COMMAND cotire)
	include_directories(
		"${PROJECT_SOURCE_DIR}/Graph/library/includes"
		"${PROJECT_SOURCE_DIR}/AudioGraph/library/includes"
		"${PROJECT_SOURCE_DIR}/Modular/library/includes"
		"${PROJECT_SOURCE_DIR}/Score/library/includes"
		)
endif()

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
