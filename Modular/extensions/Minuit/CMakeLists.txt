cmake_minimum_required(VERSION 3.0)
project(Minuit)

set(PROJECT_SRCS
$<TARGET_OBJECTS:ProtocolLib>
${CMAKE_CURRENT_SOURCE_DIR}/source/Minuit.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/MinuitAnswer.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/MinuitAnswerManager.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/MinuitSenderManager.cpp
)

include_directories("${PROJECT_SOURCE_DIR}/")
include_directories("${PROJECT_SOURCE_DIR}/includes")
include_directories($<TARGET_PROPERTY:ProtocolLib,INTERFACE_INCLUDE_DIRECTORIES>)


file(GLOB_RECURSE PROJECT_HDRS ${CMAKE_CURRENT_SOURCE_DIR}/includes/*.h)
add_jamoma_extension()

target_link_libraries(${PROJECT_NAME} Foundation)
if(WIN32)
	target_link_libraries(${PROJECT_NAME} winmm)
endif()

