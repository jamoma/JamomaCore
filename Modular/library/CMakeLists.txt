cmake_minimum_required(VERSION 3.0)
project(Modular)

# TODO Make proper libraries for these three
set(JAMOMA_MODULAR_PROTOCOLLIB_INCLUDE_DIR "${CMAKE_CURRENT_SOURCE_DIR}/ProtocolLib" 
	CACHE 
	STRING "ProtocolLib includes" FORCE)
set(JAMOMA_MODULAR_SCHEDULERLIB_INCLUDE_DIR "${CMAKE_CURRENT_SOURCE_DIR}/SchedulerLib" 
	CACHE 
	STRING "SchedulerLib includes" FORCE)
set(JAMOMA_MODULAR_PEEROBJECT_INCLUDE_DIR "${CMAKE_CURRENT_SOURCE_DIR}/PeerObject" 
	CACHE 
	STRING "PeerObject includes" FORCE)
	

add_definitions(-DTTMODULAR_EXPORTS)

find_package(LibXml2 REQUIRED)
if(NOT LIBXML2_FOUND)
  message(FATAL_ERROR "Package libxml2 required, but not found!")
endif()
# libiconv headers were included but not used: here is the proper way to include it (from installed packages)
#find_package(Libiconv REQUIRED)
#include_directories(${LIBICONV_INCLUDE_DIR})

set(PROJECT_SRCS
${CMAKE_CURRENT_SOURCE_DIR}/source/TTModular.cpp
${CMAKE_CURRENT_SOURCE_DIR}/PeerObject/TTApplication.cpp
${CMAKE_CURRENT_SOURCE_DIR}/PeerObject/TTApplicationManager.cpp
${CMAKE_CURRENT_SOURCE_DIR}/PeerObject/TTContainer.cpp
${CMAKE_CURRENT_SOURCE_DIR}/PeerObject/TTCue.cpp
${CMAKE_CURRENT_SOURCE_DIR}/PeerObject/TTCueManager.cpp
${CMAKE_CURRENT_SOURCE_DIR}/PeerObject/TTData.cpp
${CMAKE_CURRENT_SOURCE_DIR}/PeerObject/TTDataTypedMethods.cpp
${CMAKE_CURRENT_SOURCE_DIR}/PeerObject/TTExplorer.cpp
${CMAKE_CURRENT_SOURCE_DIR}/PeerObject/TTInput.cpp
${CMAKE_CURRENT_SOURCE_DIR}/PeerObject/TTInputAudio.cpp
${CMAKE_CURRENT_SOURCE_DIR}/PeerObject/TTMapper.cpp
${CMAKE_CURRENT_SOURCE_DIR}/PeerObject/TTMapperManager.cpp
${CMAKE_CURRENT_SOURCE_DIR}/PeerObject/TTMirror.cpp
${CMAKE_CURRENT_SOURCE_DIR}/PeerObject/TTNodeInfo.cpp
${CMAKE_CURRENT_SOURCE_DIR}/PeerObject/TTOutput.cpp
${CMAKE_CURRENT_SOURCE_DIR}/PeerObject/TTOutputAudio.cpp
${CMAKE_CURRENT_SOURCE_DIR}/PeerObject/TTPreset.cpp
${CMAKE_CURRENT_SOURCE_DIR}/PeerObject/TTPresetManager.cpp
${CMAKE_CURRENT_SOURCE_DIR}/PeerObject/TTRamp.cpp
${CMAKE_CURRENT_SOURCE_DIR}/PeerObject/TTReceiver.cpp
${CMAKE_CURRENT_SOURCE_DIR}/PeerObject/TTSender.cpp
${CMAKE_CURRENT_SOURCE_DIR}/PeerObject/TTScript.cpp
${CMAKE_CURRENT_SOURCE_DIR}/PeerObject/TTSubscriber.cpp
${CMAKE_CURRENT_SOURCE_DIR}/PeerObject/TTTextHandler.cpp
${CMAKE_CURRENT_SOURCE_DIR}/PeerObject/TTViewer.cpp
${CMAKE_CURRENT_SOURCE_DIR}/PeerObject/TTXmlHandler.cpp
${CMAKE_CURRENT_SOURCE_DIR}/ProtocolLib/Protocol.cpp
${CMAKE_CURRENT_SOURCE_DIR}/SchedulerLib/Scheduler.cpp

${CMAKE_CURRENT_SOURCE_DIR}/tests/TTApplication.test.cpp
)

file(GLOB_RECURSE PROJECT_HDRS
    ${CMAKE_CURRENT_SOURCE_DIR}/includes/*.h
    ${CMAKE_CURRENT_SOURCE_DIR}/PeerObject/*.h
    ${CMAKE_CURRENT_SOURCE_DIR}/ProtocolLib/*.h
    ${CMAKE_CURRENT_SOURCE_DIR}/SchedulerLib/*.h
)

include_directories("${PROJECT_SOURCE_DIR}/includes")
include_directories("${PROJECT_SOURCE_DIR}/PeerObject")
include_directories("${PROJECT_SOURCE_DIR}/ProtocolLib")
include_directories("${PROJECT_SOURCE_DIR}/SchedulerLib")
include_directories("${PROJECT_SOURCE_DIR}/../../Foundation/library/libiconv/include")
include_directories(${LIBXML2_INCLUDE_DIR})

addJamomaLibrary()

target_link_libraries(${PROJECT_NAME} Foundation)
target_link_libraries(${PROJECT_NAME} DSP)
target_link_libraries(${PROJECT_NAME} ${LIBXML2_LIBRARIES})

addAppleFramework(Carbon)

### Output ###
setOutput()

### Tests ###
addTestTarget()
