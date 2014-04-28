cmake_minimum_required(VERSION 2.6)
project(Minuit)

set(PROJECT_SRCS
${CMAKE_CURRENT_SOURCE_DIR}/../../library/ProtocolLib/Protocol.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/Minuit.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/MinuitAnswer.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/MinuitAnswerManager.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/MinuitSenderManager.cpp
)

include_directories("${PROJECT_SOURCE_DIR}/")
include_directories("${PROJECT_SOURCE_DIR}/includes")
include_directories("${PROJECT_SOURCE_DIR}/../../library/ProtocolLib")
include_directories("${PROJECT_SOURCE_DIR}/../../../Foundation/library/includes")


add_library(${PROJECT_NAME} SHARED ${PROJECT_SRCS})

target_link_libraries(${PROJECT_NAME} JamomaFoundation)

### Output ###
setOutput()

### Tests ###
addTestTarget()
