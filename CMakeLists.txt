cmake_minimum_required(VERSION 2.6)
project (JamomaCore)
### Configuration ###
include(${PROJECT_SOURCE_DIR}/Shared/CMake/JamomaConfiguration.txt NO_POLICY_SCOPE)
include(${PROJECT_SOURCE_DIR}/Shared/CMake/JamomaUtilFunctions.txt NO_POLICY_SCOPE)

### Platform-specific configuration ###
include(${PROJECT_SOURCE_DIR}/Shared/CMake/JamomaPlatformSpecific.txt NO_POLICY_SCOPE)

### Testing ###
include(${PROJECT_SOURCE_DIR}/Shared/CMake/JamomaTests.txt NO_POLICY_SCOPE)
include(${PROJECT_SOURCE_DIR}/Shared/CMake/JamomaDoxygen.txt NO_POLICY_SCOPE)

### Build of the Jamoma Submodules ###
add_subdirectory(Foundation)
add_subdirectory(DSP)
add_subdirectory(Graph)
add_subdirectory(AudioGraph)
add_subdirectory(Modular)

if(IS_DIRECTORY "${PROJECT_SOURCE_DIR}/Score")
	set(BUILD_SCORE_FROM_JAMOMACORE 1)
	add_subdirectory(Score)
endif()

### Creation of packages ###
include(${PROJECT_SOURCE_DIR}/Shared/CMake/JamomaPack.txt NO_POLICY_SCOPE)
