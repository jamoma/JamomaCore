if(UNIX)
	if(NOT CMAKE_INSTALL_PREFIX)
		set(CMAKE_INSTALL_PREFIX "/usr/local")
	endif()

	set(CMAKE_LIBRARY_PATH ${CMAKE_LIBRARY_PATH} "${CMAKE_INSTALL_PREFIX}/lib")
	string(REGEX MATCH "jamoma" CMAKE_INSTALL_PREFIX_WITH_JAMOMA "${CMAKE_INSTALL_PREFIX}")
	if(NOT CMAKE_INSTALL_PREFIX_WITH_JAMOMA)
		set(CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}/jamoma/")
	endif()

	set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11 -Wno-unknown-pragmas -Wno-conversion -Wno-deprecated-declarations -Wno-trigraphs")

	## OSX ##
	if(APPLE)
		if(IOS)
			add_definitions(-DTT_PLATFORM_IOS)
			set(CMAKE_MACOSX_BUNDLE YES)
			set(CMAKE_OSX_SYSROOT "iphoneos")
			set(CMAKE_XCODE_ATTRIBUTE_CODE_SIGN_IDENTITY "iPhone Developer") #todo
			set(MACOSX_BUNDLE_GUI_IDENTIFIER "org.jamoma")
		else()
			add_definitions(-DTT_PLATFORM_MAC)

			#todo check if these options are really necessary.
			set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -stdlib=libc++ -msse3 -mfpmath=sse -gdwarf-2 -fvisibility=hidden")
			# Independent shared libraries
			set(CMAKE_MACOSX_RPATH 1)

			## TODO ##
			# LDFLAGS += -install_name "@loader_path/../../../../support/$(NAME).dylib"

			# CPack
			SET(CPACK_GENERATOR "DragNDrop")
			SET(CPACK_BUNDLE_NAME "Jamoma")
			SET(CPACK_BUNDLE_ICON "${CMAKE_CURRENT_LIST_DIR}/packaging/MacOS/icone.icns")
			#SET(CPACK_BUNDLE_PLIST "${CMAKE_CURRENT_LIST_DIR}/packaging/MacOS/jamoma-Info.plist")
		endif()
	## Linux ##
	elseif(UNIX)
		add_definitions(-DTT_PLATFORM_LINUX)
		set(CMAKE_POSITION_INDEPENDENT_CODE True)
		if(ANDROID)
			#set(CMAKE_LIBRARY_PATH "${CMAKE_LIBRARY_PATH};/opt/android-toolchain/arm-linux-androideabi/local/lib")
			#set(CMAKE_INCLUDE_PATH "${CMAKE_INCLUDE_PATH};/opt/android-toolchain/arm-linux-androideabi/local/include")

		else()
			# SET(CMAKE_INSTALL_PREFIX /usr)
			SET(CPACK_GENERATOR "DEB")
			SET(CPACK_DEBIAN_PACKAGE_MAINTAINER "Jamoma <jamoma@jamoma.org>")
			SET(CPACK_SET_DESTDIR true)
			SET(CPACK_INSTALL_PREFIX /usr)

			if(CMAKE_SIZEOF_VOID_P EQUAL 4)
				include_directories("/usr/include/i386-linux-gnu/c++/4.9/")
				include_directories("/usr/include/i386-linux-gnu/c++/4.8/")
			endif()
		endif()

                if ("${CMAKE_CXX_COMPILER_ID}" STREQUAL "Clang")
                    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -stdlib=libc++")
                endif()

	elseif(MINGW)
		add_definitions(-DTT_PLATFORM_WIN)
		SET(CPACK_GENERATOR "NSIS")
	endif()
elseif(WIN32)
	add_definitions(-DTT_PLATFORM_WIN)
	add_definitions(-DWIN_VERSION)

	if(MINGW)
		set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11 -Wno-unknown-pragmas -Wno-conversion -Wno-deprecated-declarations -Wno-trigraphs")
	else()
		set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} /wd4996 /wd4275 /wd4273 /wd4068 /LD /MD")
		add_definitions(-DIDL=0)
	endif()

	# This assumes that we're building on a 64 bit machine... but this should not be used anymore anyway.
	if(CMAKE_SIZEOF_VOID_P EQUAL 4)
		set(WIN32_PROGRAMFILES "C:\\Program Files (x86)")
	else()
		set(WIN32_PROGRAMFILES "C:\\Program Files")
		set(WIN64 True)
	endif()

	SET(CPACK_GENERATOR "NSIS")
	set(CPACK_NSIS_EXTRA_INSTALL_COMMANDS "ExecWait '\\\"$INSTDIR\\\\vcredist_x86.exe\\\" /q:a'")
endif()

if(CMAKE_BUILD_TYPE STREQUAL "Debug" 
   AND "${CMAKE_CXX_COMPILER_ID}" MATCHES "Clang"
   OR  "${CMAKE_CXX_COMPILER_ID}" MATCHES "GNU")
   
  if("${CMAKE_CXX_COMPILER_ID}" MATCHES "GNU")
    if(JAMOMA_LIBCXX_DEBUG)
      add_definitions(-D_GLIBCXX_DEBUG)
      add_definitions(-D_GLIBCXX_DEBUG_PEDANTIC)
    else()
      remove_definitions(-D_GLIBCXX_DEBUG)
      remove_definitions(-D_GLIBCXX_DEBUG_PEDANTIC)
    endif()
    # In 2018 : _LIBCPP_DEBUG
  endif()

  if(JAMOMA_SANITIZE_UNDEFINED)
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fsanitize=undefined")
    set(CMAKE_SHARED_LINKER_FLAGS "${CMAKE_SHARED_LINKER_FLAGS} -fsanitize=undefined")
    set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -fsanitize=undefined")
  endif()
endif()

message("CMAKE_INSTALL_PREFIX ${CMAKE_INSTALL_PREFIX}")
