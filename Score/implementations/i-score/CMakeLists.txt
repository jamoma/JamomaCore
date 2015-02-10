cmake_minimum_required(VERSION 2.6)

set(CMAKE_INSTALL_PREFIX /usr/local) # won't work on windows
set(CMAKE_PREFIX_PATH /usr/share/cmake/Jamoma;/usr/local/jamoma/share/cmake/Jamoma;)
project (iscoreCommandLine)

find_package(Jamoma 0.6 REQUIRED)

set(CMAKE_CXX_FLAGS "-std=c++11")
set(CMAKE_INSTALL_RPATH_USE_LINK_PATH True)

add_executable(i-score-nogui "${CMAKE_CURRENT_SOURCE_DIR}/main.cpp")
target_link_libraries(i-score-nogui Jamoma::Foundation Jamoma::Modular Jamoma::Score pthread)

install(TARGETS i-score-nogui
		RUNTIME DESTINATION bin)
