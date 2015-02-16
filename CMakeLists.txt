cmake_minimum_required(VERSION 2.6)
project (JamomaCore)
### Configuration ###
include(${PROJECT_SOURCE_DIR}/Shared/CMake/JamomaConfiguration.cmake NO_POLICY_SCOPE)
include(${PROJECT_SOURCE_DIR}/Shared/CMake/JamomaUtilFunctions.cmake NO_POLICY_SCOPE)

### Platform-specific configuration ###
include(${PROJECT_SOURCE_DIR}/Shared/CMake/JamomaPlatformSpecific.cmake NO_POLICY_SCOPE)

### Testing ###
include(${PROJECT_SOURCE_DIR}/Shared/CMake/JamomaTests.cmake NO_POLICY_SCOPE)
include(${PROJECT_SOURCE_DIR}/Shared/CMake/JamomaDoxygen.cmake NO_POLICY_SCOPE)

### Build of the Jamoma Submodules ###
add_subdirectory(Foundation)
add_subdirectory(DSP)
add_subdirectory(Graph)
add_subdirectory(AudioGraph)
add_subdirectory(Modular)

if(IS_DIRECTORY "${CMAKE_CURRENT_SOURCE_DIR}/Score" AND NOT IOS)
	add_subdirectory(Score)
endif()

if(IS_DIRECTORY "${PROJECT_SOURCE_DIR}/../Implementations/Max" AND BUILD_JAMOMAMAX AND NOT IOS)
	add_subdirectory(../Implementations/Max ../build/Max)
endif()

### Creation of packages ###
include(${PROJECT_SOURCE_DIR}/Shared/CMake/JamomaPack.cmake NO_POLICY_SCOPE)
include(${PROJECT_SOURCE_DIR}/Shared/CMake/JamomaExports.cmake NO_POLICY_SCOPE)

