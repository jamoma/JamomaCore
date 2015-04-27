cmake_minimum_required(VERSION 3.0)
project(Foundation)

if(UNIX AND NOT APPLE)
	add_definitions("-DJAMOMA_EXTENSIONS_INSTALL_PREFIX=\"${CMAKE_INSTALL_PREFIX}/lib/jamoma\"")
endif()
if(NOT ANDROID AND NOT WIN32 AND NOT IOS)
	find_package(Threads REQUIRED) #for phtread
	find_package(DL REQUIRED)
endif()

add_definitions(-DBOOST_REGEX) #fails on OSX 10.9 (??)
add_definitions(-DBOOST_REGEX_USE_C_LOCALE) #fails on OSX 10.9 (??)
add_definitions(-DTTFOUNDATION_EXPORTS)

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
${CMAKE_CURRENT_SOURCE_DIR}/source/TTExtensionLoader.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTBase.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTMessage.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTObject.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTObjectBase.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTDictionary.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTDictionaryBase.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTHash.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTList.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTMatrix.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTMatrixBase.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTMatrixObject.cpp
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

${CMAKE_CURRENT_SOURCE_DIR}/tests/TTList.test.cpp
${CMAKE_CURRENT_SOURCE_DIR}/tests/TTDictionary.test.cpp
${CMAKE_CURRENT_SOURCE_DIR}/tests/TTMatrix.test.cpp
${CMAKE_CURRENT_SOURCE_DIR}/tests/TTString.test.cpp
${CMAKE_CURRENT_SOURCE_DIR}/tests/TTSymbol.test.cpp
${CMAKE_CURRENT_SOURCE_DIR}/tests/TTValue.test.cpp
${CMAKE_CURRENT_SOURCE_DIR}/tests/TTNodeLib.test.cpp
${CMAKE_CURRENT_SOURCE_DIR}/tests/TTInterpolate.test.cpp
${CMAKE_CURRENT_SOURCE_DIR}/tests/TTObject.test.cpp
${CMAKE_CURRENT_SOURCE_DIR}/tests/TTRegex.test.cpp
)

# Boost. Doesn't work with the library version, so we have to use this one.
set(PROJECT_SRCS ${PROJECT_SRCS}
${CMAKE_CURRENT_SOURCE_DIR}/boost/libs/filesystem/src/codecvt_error_category.cpp
${CMAKE_CURRENT_SOURCE_DIR}/boost/libs/filesystem/src/operations.cpp
${CMAKE_CURRENT_SOURCE_DIR}/boost/libs/filesystem/src/path_traits.cpp
${CMAKE_CURRENT_SOURCE_DIR}/boost/libs/filesystem/src/path.cpp
${CMAKE_CURRENT_SOURCE_DIR}/boost/libs/filesystem/src/portability.cpp
${CMAKE_CURRENT_SOURCE_DIR}/boost/libs/filesystem/src/unique_path.cpp
${CMAKE_CURRENT_SOURCE_DIR}/boost/libs/filesystem/src/utf8_codecvt_facet.cpp
${CMAKE_CURRENT_SOURCE_DIR}/boost/libs/system/src/error_code.cpp
${CMAKE_CURRENT_SOURCE_DIR}/boost/libs/regex/src/c_regex_traits.cpp
${CMAKE_CURRENT_SOURCE_DIR}/boost/libs/regex/src/cpp_regex_traits.cpp
${CMAKE_CURRENT_SOURCE_DIR}/boost/libs/regex/src/cregex.cpp
${CMAKE_CURRENT_SOURCE_DIR}/boost/libs/regex/src/fileiter.cpp
${CMAKE_CURRENT_SOURCE_DIR}/boost/libs/regex/src/icu.cpp
${CMAKE_CURRENT_SOURCE_DIR}/boost/libs/regex/src/instances.cpp
${CMAKE_CURRENT_SOURCE_DIR}/boost/libs/regex/src/posix_api.cpp
${CMAKE_CURRENT_SOURCE_DIR}/boost/libs/regex/src/regex_debug.cpp
${CMAKE_CURRENT_SOURCE_DIR}/boost/libs/regex/src/regex_raw_buffer.cpp
${CMAKE_CURRENT_SOURCE_DIR}/boost/libs/regex/src/regex_traits_defaults.cpp
${CMAKE_CURRENT_SOURCE_DIR}/boost/libs/regex/src/regex.cpp
${CMAKE_CURRENT_SOURCE_DIR}/boost/libs/regex/src/static_mutex.cpp
${CMAKE_CURRENT_SOURCE_DIR}/boost/libs/regex/src/usinstances.cpp
${CMAKE_CURRENT_SOURCE_DIR}/boost/libs/regex/src/w32_regex_traits.cpp
${CMAKE_CURRENT_SOURCE_DIR}/boost/libs/regex/src/wc_regex_traits.cpp
${CMAKE_CURRENT_SOURCE_DIR}/boost/libs/regex/src/wide_posix_api.cpp
${CMAKE_CURRENT_SOURCE_DIR}/boost/libs/regex/src/winstances.cpp
)


include_directories("${PROJECT_SOURCE_DIR}/boost")


file(GLOB_RECURSE PROJECT_HDRS ${CMAKE_CURRENT_SOURCE_DIR}/includes/*.h)
include_directories("${PROJECT_SOURCE_DIR}/includes")
include_directories("${PROJECT_SOURCE_DIR}/tests")
include_directories("${PROJECT_SOURCE_DIR}/Mersenne-1.1")

add_jamoma_library()

if(WIN32)
	if(CMAKE_SIZEOF_VOID_P EQUAL 4)
		SET_TARGET_PROPERTIES( ${PROJECT_NAME} PROPERTIES LINK_FLAGS "/LIBPATH:${PROJECT_SOURCE_DIR}/boost/stage/lib32" )
	else()
		SET_TARGET_PROPERTIES( ${PROJECT_NAME} PROPERTIES LINK_FLAGS "/LIBPATH:${PROJECT_SOURCE_DIR}/boost/stage/lib64" )
	endif()
endif()

if(NOT ANDROID AND NOT WIN32)
	target_link_libraries(${PROJECT_NAME} ${CMAKE_THREAD_LIBS_INIT})
	target_link_libraries(${PROJECT_NAME} ${DL_LIBRARY})
endif()

### Tests ###
addTestTarget()
