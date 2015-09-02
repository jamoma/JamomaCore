cmake_minimum_required(VERSION 3.0)
project(System)

set(PROJECT_SRCS
	$<TARGET_OBJECTS:TTClock>
${CMAKE_CURRENT_SOURCE_DIR}/source/System.cpp
)

include_directories("${PROJECT_SOURCE_DIR}/")
include_directories("${PROJECT_SOURCE_DIR}/includes")

file(GLOB_RECURSE PROJECT_HDRS ${CMAKE_CURRENT_SOURCE_DIR}/includes/*.h)
add_jamoma_extension()

target_link_libraries(${PROJECT_NAME} PUBLIC Foundation) # todo why?
if(WIN32)
	target_link_libraries(${PROJECT_NAME} PUBLIC winmm)
endif()

if(BUILD_JAMOMAPD)
        install(TARGETS ${PROJECT_NAME}
                        DESTINATION "${JAMOMAPD_INSTALL_FOLDER}/Jamoma/support"
                        COMPONENT JamomaPd)
endif()
