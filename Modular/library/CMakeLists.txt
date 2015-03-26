cmake_minimum_required(VERSION 3.0)
project(Modular)

add_definitions(-DTTMODULAR_EXPORTS)

find_package(LibXml2 REQUIRED)
if(WIN32)
	find_package(Libiconv REQUIRED)
	include_directories(${LIBICONV_INCLUDE_DIR})
endif()

#### Protocol ####
add_library(TTProtocol OBJECT "${CMAKE_CURRENT_SOURCE_DIR}/source/TTProtocol.cpp")
target_include_directories(TTProtocol PUBLIC "${CMAKE_CURRENT_SOURCE_DIR}/includes")
target_include_directories(TTProtocol PUBLIC $<TARGET_PROPERTY:Foundation,INTERFACE_INCLUDE_DIRECTORIES>)

#### Clock ####
add_library(TTClock OBJECT "${CMAKE_CURRENT_SOURCE_DIR}/source/TTClock.cpp")
target_include_directories(TTClock PUBLIC "${CMAKE_CURRENT_SOURCE_DIR}/includes")
target_include_directories(TTClock PUBLIC $<TARGET_PROPERTY:Foundation,INTERFACE_INCLUDE_DIRECTORIES>)


#### Modular library ####
set(PROJECT_SRCS 
	$<TARGET_OBJECTS:TTProtocol>
	$<TARGET_OBJECTS:TTClock>
	"${CMAKE_CURRENT_SOURCE_DIR}/source/TTModular.cpp"
	"${CMAKE_CURRENT_SOURCE_DIR}/source/TTApplication.cpp"
	"${CMAKE_CURRENT_SOURCE_DIR}/source/TTApplicationManager.cpp"
	"${CMAKE_CURRENT_SOURCE_DIR}/source/TTContainer.cpp"
	"${CMAKE_CURRENT_SOURCE_DIR}/source/TTCue.cpp"
	"${CMAKE_CURRENT_SOURCE_DIR}/source/TTCueManager.cpp"
	"${CMAKE_CURRENT_SOURCE_DIR}/source/TTData.cpp"
	"${CMAKE_CURRENT_SOURCE_DIR}/source/TTDataTypedMethods.cpp"
	"${CMAKE_CURRENT_SOURCE_DIR}/source/TTExplorer.cpp"
	"${CMAKE_CURRENT_SOURCE_DIR}/source/TTInput.cpp"
	"${CMAKE_CURRENT_SOURCE_DIR}/source/TTInputAudio.cpp"
	"${CMAKE_CURRENT_SOURCE_DIR}/source/TTMapper.cpp"
	"${CMAKE_CURRENT_SOURCE_DIR}/source/TTMapperManager.cpp"
	"${CMAKE_CURRENT_SOURCE_DIR}/source/TTMirror.cpp"
	"${CMAKE_CURRENT_SOURCE_DIR}/source/TTNodeInfo.cpp"
	"${CMAKE_CURRENT_SOURCE_DIR}/source/TTOutput.cpp"
	"${CMAKE_CURRENT_SOURCE_DIR}/source/TTOutputAudio.cpp"
	"${CMAKE_CURRENT_SOURCE_DIR}/source/TTPreset.cpp"
	"${CMAKE_CURRENT_SOURCE_DIR}/source/TTPresetManager.cpp"
	"${CMAKE_CURRENT_SOURCE_DIR}/source/TTRamp.cpp"
	"${CMAKE_CURRENT_SOURCE_DIR}/source/TTReceiver.cpp"
	"${CMAKE_CURRENT_SOURCE_DIR}/source/TTSender.cpp"
	"${CMAKE_CURRENT_SOURCE_DIR}/source/TTScript.cpp"
	"${CMAKE_CURRENT_SOURCE_DIR}/source/TTSubscriber.cpp"
	"${CMAKE_CURRENT_SOURCE_DIR}/source/TTTextHandler.cpp"
	"${CMAKE_CURRENT_SOURCE_DIR}/source/TTViewer.cpp"
	"${CMAKE_CURRENT_SOURCE_DIR}/source/TTXmlHandler.cpp"

	"${CMAKE_CURRENT_SOURCE_DIR}/tests/TTApplication.test.cpp"
)

file(GLOB_RECURSE PROJECT_HDRS
	"${CMAKE_CURRENT_SOURCE_DIR}/includes/*.h")

include_directories("${PROJECT_SOURCE_DIR}/includes")
include_directories(${LIBXML2_INCLUDE_DIR})

if(WIN32)
	include_directories(${LIBICONV_INCLUDE_DIR})
endif()

add_jamoma_library()

target_link_libraries(${PROJECT_NAME} Foundation)
target_link_libraries(${PROJECT_NAME} DSP)
target_link_libraries(${PROJECT_NAME} ${LIBXML2_LIBRARIES})
if(WIN32)
	target_link_libraries(${PROJECT_NAME} ws2_32)
endif()

### Tests ###
addTestTarget()
