cmake_minimum_required(VERSION 2.6)
project(JamomaFoundation)

find_package(Boost REQUIRED COMPONENTS filesystem regex)
include_directories(${Boost_INCLUDE_DIRS})

find_package(Threads REQUIRED) #for phtread
find_package(DL REQUIRED)

add_definitions(-DTTFOUNDATION_EXPORTS)
#add_definitions(-DBOOST_REGEX) #fails on OSX 10.9
add_definitions(-DBOOST_REGEX_USE_C_LOCALE)

set(PROJECT_SRCS
${CMAKE_CURRENT_SOURCE_DIR}/source/TTFoundation.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTCallback.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTClass.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTEnvironment.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTMutex.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTPath.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTQueue.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTThread.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTUnitTest.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTAttribute.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTDataObjectBase.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTBase.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTMessage.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTObjectBase.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTDictionary.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTDictionaryBase.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTHash.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTList.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTMatrix.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTMatrixMath.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTMatrixArray.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTValue.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTString.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTSymbolBase.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTSymbolCache.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTSymbolTable.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTRegex.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTNodeLib.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTNode.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTAddress.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTAddressBase.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTAddressTable.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTAddressCache.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTAddressItem.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTNodeDirectory.cpp

${CMAKE_CURRENT_SOURCE_DIR}/tests/TTDictionary.test.cpp
${CMAKE_CURRENT_SOURCE_DIR}/tests/TTMatrix.test.cpp
${CMAKE_CURRENT_SOURCE_DIR}/tests/TTString.test.cpp
${CMAKE_CURRENT_SOURCE_DIR}/tests/TTSymbol.test.cpp
${CMAKE_CURRENT_SOURCE_DIR}/tests/TTValue.test.cpp
${CMAKE_CURRENT_SOURCE_DIR}/tests/TTNodeLib.test.cpp
${CMAKE_CURRENT_SOURCE_DIR}/tests/TTInterpolate.test.cpp
)


file(GLOB_RECURSE PROJECT_HDRS ${CMAKE_CURRENT_SOURCE_DIR}/includes/*.h)
include_directories("${PROJECT_SOURCE_DIR}/includes")
include_directories("${PROJECT_SOURCE_DIR}/tests")
include_directories("${PROJECT_SOURCE_DIR}/Mersenne-1.1")

add_library(${PROJECT_NAME} SHARED ${PROJECT_SRCS} ${PROJECT_HDRS})

target_link_libraries(${PROJECT_NAME} ${Boost_LIBRARIES})

if(NOT ANDROID)
target_link_libraries(${PROJECT_NAME} pthread)
target_link_libraries(${PROJECT_NAME} ${DL_LIBRARY})
endif(NOT ANDROID)

# OS X :
addAppleFramework(Carbon)
addAppleFramework(CoreServices)

### Output ###
setOutput()

### Tests ###
addTestTarget()
