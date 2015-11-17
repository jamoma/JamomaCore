cmake_minimum_required(VERSION 3.0)
project(DemoApp)

# use, i.e. don't skip the full RPATH for the build tree
SET(CMAKE_SKIP_BUILD_RPATH  FALSE)

# when building, don't use the install RPATH already
# (but later on when installing)
SET(CMAKE_BUILD_WITH_INSTALL_RPATH FALSE)

SET(CMAKE_INSTALL_RPATH "/usr/local/jamoma/lib")

# add the automatically determined parts of the RPATH
# which point to directories outside the build tree to the install RPATH
SET(CMAKE_INSTALL_RPATH_USE_LINK_PATH TRUE)

# the RPATH to be used when installing, but only if it's not a system directory
LIST(FIND CMAKE_PLATFORM_IMPLICIT_LINK_DIRECTORIES "${CMAKE_INSTALL_PREFIX}/lib" isSystemDir)
IF("${isSystemDir}" STREQUAL "-1")
   SET(CMAKE_INSTALL_RPATH "/usr/local/jamoma/lib")
ENDIF("${isSystemDir}" STREQUAL "-1")

add_executable (${PROJECT_NAME} main.cpp)

target_link_libraries (${PROJECT_NAME} Foundation Modular)

SET(MODULAR_DEMOAPP_INSTALL_FOLDER "." CACHE STRING "DemoApp destination folder")

INSTALL(TARGETS DemoApp
		RUNTIME DESTINATION ${MODULAR_DEMOAPP_INSTALL_FOLDER})
