cmake_minimum_required(VERSION 3.0)
project(Modular)

add_definitions(-DTTMODULAR_EXPORTS)

find_package(LibXml2 REQUIRED)
if(WIN32)
	find_package(Libiconv REQUIRED)
	include_directories(${LIBICONV_INCLUDE_DIR})
endif()

#### ProtocolLib ####
set(PROTOCOLLIB_SRCS 
	${CMAKE_CURRENT_SOURCE_DIR}/ProtocolLib/Protocol.cpp)
add_library(ProtocolLib OBJECT ${PROTOCOLLIB_SRCS})
target_include_directories(ProtocolLib PUBLIC "${PROJECT_SOURCE_DIR}/ProtocolLib")
target_include_directories(ProtocolLib PUBLIC $<TARGET_PROPERTY:Foundation,INTERFACE_INCLUDE_DIRECTORIES>)

#### SchedulerLib ####
set(SCHEDULERLIB_SRCS 
	${CMAKE_CURRENT_SOURCE_DIR}/SchedulerLib/Scheduler.cpp)
add_library(SchedulerLib OBJECT ${SCHEDULERLIB_SRCS})
target_include_directories(SchedulerLib PUBLIC "${PROJECT_SOURCE_DIR}/SchedulerLib")
target_include_directories(SchedulerLib PUBLIC $<TARGET_PROPERTY:Foundation,INTERFACE_INCLUDE_DIRECTORIES>)

#### PeerObject ####
set(PEEROBJECT_SRCS
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
${CMAKE_CURRENT_SOURCE_DIR}/PeerObject/TTXmlHandler.cpp)

add_library(PeerObject OBJECT ${PEEROBJECT_SRCS})
target_include_directories(PeerObject PUBLIC "${PROJECT_SOURCE_DIR}/PeerObject")
target_include_directories(PeerObject PUBLIC $<TARGET_PROPERTY:Foundation,INTERFACE_INCLUDE_DIRECTORIES>)
target_include_directories(PeerObject PUBLIC $<TARGET_PROPERTY:DSP,INTERFACE_INCLUDE_DIRECTORIES>)
target_include_directories(PeerObject PUBLIC $<TARGET_PROPERTY:ProtocolLib,INTERFACE_INCLUDE_DIRECTORIES>)
target_include_directories(PeerObject PUBLIC $<TARGET_PROPERTY:SchedulerLib,INTERFACE_INCLUDE_DIRECTORIES>)

#### Modular library ####
set(PROJECT_SRCS
${CMAKE_CURRENT_SOURCE_DIR}/source/TTModular.cpp
$<TARGET_OBJECTS:PeerObject>
$<TARGET_OBJECTS:ProtocolLib>
$<TARGET_OBJECTS:SchedulerLib>
${CMAKE_CURRENT_SOURCE_DIR}/tests/TTApplication.test.cpp
)

file(GLOB_RECURSE PROJECT_HDRS
	${CMAKE_CURRENT_SOURCE_DIR}/includes/*.h
	${CMAKE_CURRENT_SOURCE_DIR}/ProtocolLib/*.h
	${CMAKE_CURRENT_SOURCE_DIR}/SchedulerLib/*.h
	${CMAKE_CURRENT_SOURCE_DIR}/PeerObject/*.h
)

include_directories("${PROJECT_SOURCE_DIR}/includes")
include_directories(${LIBXML2_INCLUDE_DIR})

if(WIN32)
	include_directories(${LIBICONV_INCLUDE_DIR})
endif()
include_directories(
$<TARGET_PROPERTY:ProtocolLib,INTERFACE_INCLUDE_DIRECTORIES>
$<TARGET_PROPERTY:SchedulerLib,INTERFACE_INCLUDE_DIRECTORIES>
$<TARGET_PROPERTY:PeerObject,INTERFACE_INCLUDE_DIRECTORIES>)

add_jamoma_library()

target_link_libraries(${PROJECT_NAME} Foundation)
target_link_libraries(${PROJECT_NAME} DSP)
target_link_libraries(${PROJECT_NAME} ${LIBXML2_LIBRARIES})
if(WIN32)
	target_link_libraries(${PROJECT_NAME} ws2_32)
endif()

### Tests ###
addTestTarget()
