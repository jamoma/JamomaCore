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
			SET(CPACK_GENERATOR "Bundle")
			SET(CPACK_BUNDLE_NAME "Jamoma")
			SET(CPACK_BUNDLE_ICON "${CMAKE_CURRENT_SOURCE_DIR}/Shared/CMake/packaging/MacOS/icone.icns")
			SET(CPACK_BUNDLE_PLIST "${CMAKE_CURRENT_SOURCE_DIR}/Shared/CMake/packaging/MacOS/jamoma-Info.plist")
		endif()
	## Linux ##
	elseif(UNIX)
		add_definitions(-DTT_PLATFORM_LINUX)
		if(ANDROID)
			#set(CMAKE_LIBRARY_PATH "${CMAKE_LIBRARY_PATH};/opt/android-toolchain/arm-linux-androideabi/local/lib")
			#set(CMAKE_INCLUDE_PATH "${CMAKE_INCLUDE_PATH};/opt/android-toolchain/arm-linux-androideabi/local/include")
			
		else()
			SET(CMAKE_INSTALL_PREFIX /usr)
			SET(CPACK_GENERATOR "DEB")
			SET(CPACK_DEBIAN_PACKAGE_MAINTAINER "Jamoma <jamoma@jamoma.org>")
			SET(CPACK_SET_DESTDIR true)
			SET(CPACK_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")
	
			if(CMAKE_SIZEOF_VOID_P EQUAL 4)
				include_directories("/usr/include/i386-linux-gnu/c++/4.9/")
				include_directories("/usr/include/i386-linux-gnu/c++/4.8/")
			endif()
		endif()
	elseif(MINGW)
		add_definitions(-DTT_PLATFORM_LINUX)
		SET(CPACK_GENERATOR "NSIS")
	endif()
elseif(WIN32)
	set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} /wd4996 /wd4275 /wd4273 /wd4068 /LD")
	add_definitions(-DTT_PLATFORM_WIN)
	add_definitions(-DWIN_VERSION)
	add_definitions(-DIDL=0)

	# C'est en supposant qu'on compile sur une machine 64-bits... Comment le tester?
	if(CMAKE_SIZEOF_VOID_P EQUAL 4)
		set(WIN32_PROGRAMFILES "C:\\Program Files (x86)")
	else()
		set(WIN32_PROGRAMFILES "C:\\Program Files")
	endif()

	SET(CPACK_GENERATOR "NSIS")
	set(CPACK_NSIS_EXTRA_INSTALL_COMMANDS "ExecWait '\\\"$INSTDIR\\\\vcredist_x86.exe\\\" /q:a'")
endif()

message("CMAKE_INSTALL_PREFIX ${CMAKE_INSTALL_PREFIX}")
