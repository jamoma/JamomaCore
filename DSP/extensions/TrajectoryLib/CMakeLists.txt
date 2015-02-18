cmake_minimum_required(VERSION 3.0)
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

file(GLOB_RECURSE PROJECT_HDRS ${CMAKE_CURRENT_SOURCE_DIR}/includes/*.h)
set(PROJECT_HDRS ${PROJECT_HDRS} ${CMAKE_CURRENT_SOURCE_DIR}/TTTrajectory.h)
add_jamoma_extension()