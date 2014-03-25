cmake_minimum_required(VERSION 2.6)
project(JamomaModular)

add_definitions(-DTTMODULAR_EXPORTS)

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

include_directories("${PROJECT_SOURCE_DIR}/includes")
include_directories("${PROJECT_SOURCE_DIR}/PeerObject")
include_directories("${PROJECT_SOURCE_DIR}/ProtocolLib")
include_directories("${PROJECT_SOURCE_DIR}/SchedulerLib")
include_directories("${PROJECT_SOURCE_DIR}/../../Foundation/library/includes")
include_directories("${PROJECT_SOURCE_DIR}/../../Foundation/library/libiconv/include")
include_directories("${PROJECT_SOURCE_DIR}/../../Foundation/library/libxml2/win32/include")
include_directories("${PROJECT_SOURCE_DIR}/../../DSP/library/includes")
include_directories("/usr/include/libxml2")

add_library(${PROJECT_NAME} SHARED ${PROJECT_SRCS})

target_link_libraries(${PROJECT_NAME} JamomaFoundation)
target_link_libraries(${PROJECT_NAME} JamomaDSP)
target_link_libraries(${PROJECT_NAME} xml2)

addAppleFramework(Carbon)
