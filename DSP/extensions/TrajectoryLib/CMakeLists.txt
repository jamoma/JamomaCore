cmake_minimum_required(VERSION 2.6)
project(TrajectoryLib)

set(PROJECT_SRCS
${CMAKE_CURRENT_SOURCE_DIR}/TrajectoryLib.cpp
${CMAKE_CURRENT_SOURCE_DIR}/TTTrajectory.cpp
${CMAKE_CURRENT_SOURCE_DIR}/sources/Bean2D.cpp
${CMAKE_CURRENT_SOURCE_DIR}/sources/Hypocycloid2D.cpp
${CMAKE_CURRENT_SOURCE_DIR}/sources/Bspline2D.cpp
${CMAKE_CURRENT_SOURCE_DIR}/sources/Limacon2D.cpp
${CMAKE_CURRENT_SOURCE_DIR}/sources/Scarabaeus2D.cpp
${CMAKE_CURRENT_SOURCE_DIR}/sources/Butterfly2D.cpp
${CMAKE_CURRENT_SOURCE_DIR}/sources/Linear2D.cpp
${CMAKE_CURRENT_SOURCE_DIR}/sources/Slinky3D.cpp
${CMAKE_CURRENT_SOURCE_DIR}/sources/Linear3D.cpp
${CMAKE_CURRENT_SOURCE_DIR}/sources/Spiral3D.cpp
${CMAKE_CURRENT_SOURCE_DIR}/sources/Circular2D.cpp
${CMAKE_CURRENT_SOURCE_DIR}/sources/Lissajous2D.cpp
${CMAKE_CURRENT_SOURCE_DIR}/sources/Torus3D.cpp
${CMAKE_CURRENT_SOURCE_DIR}/sources/CircularHelix3D.cpp
${CMAKE_CURRENT_SOURCE_DIR}/sources/Lissajous3D.cpp
${CMAKE_CURRENT_SOURCE_DIR}/sources/Viviani3D.cpp
${CMAKE_CURRENT_SOURCE_DIR}/sources/Epitrochoid2D.cpp
${CMAKE_CURRENT_SOURCE_DIR}/sources/LogSpiral2D.cpp
${CMAKE_CURRENT_SOURCE_DIR}/sources/Gear2D.cpp
${CMAKE_CURRENT_SOURCE_DIR}/sources/Rose2D.cpp
)

include_directories("${PROJECT_SOURCE_DIR}/")
include_directories("${PROJECT_SOURCE_DIR}/includes")
include_directories("${PROJECT_SOURCE_DIR}/../../library/includes")
include_directories("${PROJECT_SOURCE_DIR}/../../../Foundation/library/includes")

add_library(${PROJECT_NAME} SHARED ${PROJECT_SRCS})

target_link_libraries(${PROJECT_NAME} JamomaFoundation)
target_link_libraries(${PROJECT_NAME} JamomaDSP)

### Output ###
setOutput()

### Tests ###
addTestTarget()
