cmake_minimum_required(VERSION 3.0)
project(Foundation)

if($ENV{TRAVIS})
  string(SUBSTRING $ENV{TRAVIS_COMMIT} 0 7 GIT_SHA_SHORT)
  SET(GIT_TAG $ENV{TRAVIS_TAG})
elseif($ENV{APPVEYOR})
  string(SUBSTRING $ENV{APPVEYOR_REPO_COMMIT} 0 7 GIT_SHA_SHORT)
  SET(GIT_TAG $ENV{APPVEYOR_REPO_TAG_NAME})
else()
 include(${CMAKE_CURRENT_SOURCE_DIR}/../../Shared/CMake/modules/GetGitRevisionDescription.cmake)
 #get_jamoma_version()
	get_git_head_revision(REFSPEC HASH --always --tags)
	git_describe(GIT_TAG --abbrev=0 --tags)
	# git_get_exact_tag(GIT_TAG)
	string(SUBSTRING ${HASH} 0 7 GIT_SHA_SHORT)
	message("building on Git rev : " ${GIT_SHA_SHORT})
	message("Git tag : " ${GIT_TAG})
	string(LENGTH GIT_TAG taglen)
	message("Git tag length : " ${taglen})
	if (taglen GREATER 1)
	  string(REPLACE "." ";" GIT_TAG_LIST ${GIT_TAG}) # make a list from the tag string
	  list(LENGTH GIT_TAG_LIST len)
	  if (len GREATER 0)
	          list(GET GIT_TAG_LIST 0 GIT_VERSION_MAJ)
	  endif (len GREATER 0)
	  if (len GREATER 1)
	          list(GET GIT_TAG_LIST 1 GIT_VERSION_MIN)
	  endif (len GREATER 1)
	  if (len GREATER 2)
	          list(GET GIT_TAG_LIST 2 GIT_VERSION_SUB)
	  endif (len GREATER 2)
	  if (len GREATER 3)
	          list(GET GIT_TAG_LIST 3 GIT_VERSION_MOD_LONG)
	  endif (len GREATER 3)
	  list(LENGTH GIT_VERSION_MOD_LONG len2)
	  if (len2 GREATER 0)
	          string(REPLACE "-" ";" GIT_VERSION_MOD_LIST ${GIT_VERSION_MOD_LONG})
	          list(GET GIT_VERSION_MOD_LIST 0 GIT_VERSION_MOD)
	  endif (len2 GREATER 0)
	endif (taglen GREATER 1)

	SET(GIT_SHA_SHORT "${GIT_SHA_SHORT}" PARENT_SCOPE)
	SET(GIT_VERSION_MAJ "${GIT_VERSION_MAJ}" PARENT_SCOPE)
	SET(GIT_VERSION_MIN "${GIT_VERSION_MIN}" PARENT_SCOPE)
	SET(GIT_VERSION_SUB "${GIT_VERSION_SUB}" PARENT_SCOPE)
	SET(GIT_VERSION_MOD_LONG "${GIT_VERSION_MOD_LONG}" PARENT_SCOPE)
	SET(GIT_VERSION_MOD "${GIT_VERSION_MOD}" PARENT_SCOPE)
	SET(GIT_TAG "${GIT_TAG}" PARENT_SCOPE)
endif()
message("building version ${GIT_SHA_SHORT} with tag ${GIT_TAG}")
configure_file("${CMAKE_CURRENT_SOURCE_DIR}/includes/JamomaCoreVersion.h.in" "${CMAKE_CURRENT_SOURCE_DIR}/includes/JamomaCoreVersion.h" @ONLY)


if(UNIX AND NOT APPLE)
	add_definitions("-DJAMOMA_EXTENSIONS_INSTALL_PREFIX=\"${CMAKE_INSTALL_PREFIX}/lib/jamoma\"")
endif()
if(NOT ANDROID AND NOT WIN32 AND NOT IOS)
	find_package(Threads REQUIRED) #for phtread
	find_package(DL REQUIRED)
endif()
add_definitions(-DTTFOUNDATION_EXPORTS)

set(PROJECT_SRCS
${CMAKE_CURRENT_SOURCE_DIR}/source/TTFoundation.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTCallback.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTClass.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTEnvironment.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTMutex.cpp
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
${CMAKE_CURRENT_SOURCE_DIR}/source/TTGlobalsCache.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTSymbolTable.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTRegex.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTNodeLib.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTNode.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTAddress.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTAddressBase.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTAddressTable.cpp
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


file(GLOB_RECURSE PROJECT_HDRS ${CMAKE_CURRENT_SOURCE_DIR}/includes/*.h)
include_directories("${PROJECT_SOURCE_DIR}/includes")
include_directories("${PROJECT_SOURCE_DIR}/tests")
include_directories("${PROJECT_SOURCE_DIR}/Mersenne-1.1")

add_jamoma_library()

if(BUILD_JAMOMAPD)
        install(TARGETS ${PROJECT_NAME}
                        DESTINATION "${JAMOMAPD_INSTALL_FOLDER}/Jamoma/support"
                        COMPONENT JamomaPd)
endif()

if(NOT ANDROID AND NOT WIN32)
	target_link_libraries(${PROJECT_NAME} ${CMAKE_THREAD_LIBS_INIT})
	target_link_libraries(${PROJECT_NAME} ${DL_LIBRARY})
endif()

### Tests ###
addTestTarget()
