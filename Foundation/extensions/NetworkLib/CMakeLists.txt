cmake_minimum_required(VERSION 2.6)
project(NetworkLib)

set(PROJECT_SRCS
${CMAKE_CURRENT_SOURCE_DIR}/NetworkLib.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTNetSend.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTOscReceive.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTOscSocket.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTNetReceive.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTNetSocket.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTOscSend.cpp

${CMAKE_CURRENT_SOURCE_DIR}/NetworkCommunication/ip/IpEndpointName.cpp
${CMAKE_CURRENT_SOURCE_DIR}/NetworkCommunication/osc/OscOutboundPacketStream.cpp
${CMAKE_CURRENT_SOURCE_DIR}/NetworkCommunication/osc/OscPrintReceivedElements.cpp
${CMAKE_CURRENT_SOURCE_DIR}/NetworkCommunication/osc/OscReceivedElements.cpp
${CMAKE_CURRENT_SOURCE_DIR}/NetworkCommunication/osc/OscTypes.cpp
)

if(NOT ANDROID)
	set(PROJECT_SRCS ${PROJECT_SRCS}
					${CMAKE_CURRENT_SOURCE_DIR}/source/TTWebSocket.cpp
					${CMAKE_CURRENT_SOURCE_DIR}/source/TTWebSend.cpp
					${CMAKE_CURRENT_SOURCE_DIR}/source/TTWebReceive.cpp
					 ${CMAKE_CURRENT_SOURCE_DIR}/NetworkCommunication/civetweb/source/civetweb.cpp)
endif()


if(NOT WIN32)
	set(PROJECT_SRCS ${PROJECT_SRCS}
	${CMAKE_CURRENT_SOURCE_DIR}/NetworkCommunication/ip/posix/NetworkingUtils.cpp
	${CMAKE_CURRENT_SOURCE_DIR}/NetworkCommunication/ip/posix/UdpSocket.cpp
	)
else()
	set(PROJECT_SRCS ${PROJECT_SRCS}
	${CMAKE_CURRENT_SOURCE_DIR}/NetworkCommunication/ip/win32/NetworkingUtils.cpp
	${CMAKE_CURRENT_SOURCE_DIR}/NetworkCommunication/ip/win32/UdpSocket.cpp
	)
endif()

include_directories("${PROJECT_SOURCE_DIR}")
include_directories("${PROJECT_SOURCE_DIR}/NetworkCommunication")
include_directories("${PROJECT_SOURCE_DIR}/NetworkCommunication/ip")
include_directories("${PROJECT_SOURCE_DIR}/NetworkCommunication/osc")
if(NOT ANDROID)
include_directories("${PROJECT_SOURCE_DIR}/NetworkCommunication/civetweb/includes")
endif()
include_directories("${PROJECT_SOURCE_DIR}/includes")
if(NOT WIN32)
	include_directories("${PROJECT_SOURCE_DIR}/NetworkCommunication/ip/posix")
else()
	include_directories("${PROJECT_SOURCE_DIR}/NetworkCommunication/ip/win32")
endif()

add_definitions(-DUSE_WEBSOCKET)

add_library(${PROJECT_NAME} SHARED ${PROJECT_SRCS})

target_link_libraries(${PROJECT_NAME} Foundation)
if(WIN32)
	target_link_libraries(${PROJECT_NAME} Ws2_32)
	target_link_libraries(${PROJECT_NAME} winmm)
endif()

### Output ###
setOutput()

### Tests ###
addTestTarget()
