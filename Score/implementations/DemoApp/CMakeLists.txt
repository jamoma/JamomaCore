cmake_minimum_required(VERSION 2.6)
project (ScoreDemoApp)

include_directories("/usr/include/jamoma")
set(CMAKE_CXX_FLAGS "-std=c++11")
add_executable(DemoApp "${CMAKE_CURRENT_SOURCE_DIR}/main.cpp")
target_link_libraries(DemoApp JamomaFoundation JamomaModular JamomaScore pthread)
