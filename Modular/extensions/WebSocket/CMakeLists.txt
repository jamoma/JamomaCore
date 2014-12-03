cmake_minimum_required(VERSION 2.6)
project(WebSocket)

if(WIN32 AND CMAKE_SIZEOF_VOID_P EQUAL 8)
	message("Does not work yet on Win64")
	return()
endif()

set(PROJECT_SRCS
${CMAKE_CURRENT_SOURCE_DIR}/../../library/ProtocolLib/Protocol.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/WebSocket.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/WebSocketAnswer.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/WebSocketAnswerManager.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/WebSocketSenderManager.cpp
${CMAKE_CURRENT_SOURCE_DIR}/libjson/_internal/Source/internalJSONNode.cpp
${CMAKE_CURRENT_SOURCE_DIR}/libjson/_internal/Source/JSONAllocator.cpp
${CMAKE_CURRENT_SOURCE_DIR}/libjson/_internal/Source/JSONChildren.cpp
${CMAKE_CURRENT_SOURCE_DIR}/libjson/_internal/Source/JSONDebug.cpp
${CMAKE_CURRENT_SOURCE_DIR}/libjson/_internal/Source/JSONIterators.cpp
${CMAKE_CURRENT_SOURCE_DIR}/libjson/_internal/Source/JSONMemory.cpp
${CMAKE_CURRENT_SOURCE_DIR}/libjson/_internal/Source/JSONNode_Mutex.cpp
${CMAKE_CURRENT_SOURCE_DIR}/libjson/_internal/Source/JSONNode.cpp
${CMAKE_CURRENT_SOURCE_DIR}/libjson/_internal/Source/JSONPreparse.cpp
${CMAKE_CURRENT_SOURCE_DIR}/libjson/_internal/Source/JSONStream.cpp
${CMAKE_CURRENT_SOURCE_DIR}/libjson/_internal/Source/JSONValidator.cpp
${CMAKE_CURRENT_SOURCE_DIR}/libjson/_internal/Source/JSONWorker.cpp
${CMAKE_CURRENT_SOURCE_DIR}/libjson/_internal/Source/JSONWriter.cpp
${CMAKE_CURRENT_SOURCE_DIR}/libjson/_internal/Source/libjson.cpp
)

include_directories("${PROJECT_SOURCE_DIR}/")
include_directories("${PROJECT_SOURCE_DIR}/includes")
include_directories("${PROJECT_SOURCE_DIR}/../../library/ProtocolLib")
include_directories("${PROJECT_SOURCE_DIR}/../../../Foundation/library/includes")
include_directories("${PROJECT_SOURCE_DIR}/libjson")

if(CMAKE_BUILD_TYPE STREQUAL "Debug")
	add_definitions(-DTT_PROTOCOL_DEBUG)
	add_definitions(-DJAMOMA_WEBSOCKET_JSON_DEBUG)
endif()

add_library(${PROJECT_NAME} SHARED ${PROJECT_SRCS})

target_link_libraries(${PROJECT_NAME} JamomaFoundation)
if(WIN32)
	target_link_libraries(${PROJECT_NAME} winmm)
endif()

### Output ###
setOutput()

### Tests ###
addTestTarget()
