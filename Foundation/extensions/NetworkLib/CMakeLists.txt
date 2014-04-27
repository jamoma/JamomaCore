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
${CMAKE_CURRENT_SOURCE_DIR}/NetworkCommunication/ip/NetworkingUtils.cpp
${CMAKE_CURRENT_SOURCE_DIR}/NetworkCommunication/ip/UdpSocket.cpp
${CMAKE_CURRENT_SOURCE_DIR}/NetworkCommunication/osc/OscOutboundPacketStream.cpp
${CMAKE_CURRENT_SOURCE_DIR}/NetworkCommunication/osc/OscPrintReceivedElements.cpp
${CMAKE_CURRENT_SOURCE_DIR}/NetworkCommunication/osc/OscReceivedElements.cpp
${CMAKE_CURRENT_SOURCE_DIR}/NetworkCommunication/osc/OscTypes.cpp
)

include_directories("${PROJECT_SOURCE_DIR}")
include_directories("${PROJECT_SOURCE_DIR}/NetworkCommunication/ip")
include_directories("${PROJECT_SOURCE_DIR}/NetworkCommunication/osc")
include_directories("${PROJECT_SOURCE_DIR}/includes")
include_directories("${PROJECT_SOURCE_DIR}/../../../Foundation/library/includes")

add_library(${PROJECT_NAME} SHARED ${PROJECT_SRCS})

target_link_libraries(${PROJECT_NAME} JamomaFoundation)

### Output ###
setOutput()

### Tests ###
addTestTarget()
