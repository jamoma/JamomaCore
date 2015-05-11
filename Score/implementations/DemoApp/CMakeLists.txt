cmake_minimum_required(VERSION 3.0)

set(CMAKE_PREFIX_PATH /usr/share/cmake/Jamoma;/usr/local/jamoma/share/cmake/Jamoma;)
project (ScoreDemoApp)

find_package(Jamoma 0.6 REQUIRED)

set(CMAKE_CXX_FLAGS "-std=c++11")
set(CMAKE_INSTALL_RPATH_USE_LINK_PATH True)

add_executable(DemoApp "${CMAKE_CURRENT_SOURCE_DIR}/main.cpp")
target_link_libraries(DemoApp Jamoma::Foundation Jamoma::Modular Jamoma::Score)
