# To build: 
#   cmake -G Xcode

project(Clipper)

cmake_minimum_required(VERSION 2.6.0 FATAL_ERROR)



add_library(Clipper Clipper.cpp)



set (Clipper_VERSION_MAJOR 0)
set (Clipper_VERSION_MINOR 6)


# configure a header file to pass some of the CMake settings to the source code
#configure_file (
#  "${PROJECT_SOURCE_DIR}/TutorialConfig.h.in"
#  "${PROJECT_BINARY_DIR}/TutorialConfig.h"
#  )



include_directories(
    "${PROJECT_BINARY_DIR}/../../library/includes"
    "${PROJECT_BINARY_DIR}/../../../Foundation/library/includes"
)


target_link_libraries(Clipper JamomaFoundation)
target_link_libraries(Clipper JamomaDSP)


