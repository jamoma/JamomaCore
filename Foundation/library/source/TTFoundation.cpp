/*
 * Jamoma Foundation
 * Copyright © 2008, Timothy Place
 *
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTFoundation.h"
#include "TTSymbolTable.h"
#include "TTEnvironment.h"
#include "TTSymbolCache.h"
#include "TTCallback.h"

// Nodelib currently requires Boost Regex, which we don't have on the iOS
#ifndef DISABLE_NODELIB
#include "TTNodeLib.h"
#include "TTPath.h"
#endif

// Unit Tests
#include "TTMatrixBase.h"
#include "TTMatrixArray.h"
#include "TTObjectTest.h"
#include "TTInterpolate.test.h"
#include "TTString.test.h"
#include "TTSymbol.test.h"
#include "TTValue.test.h"
#include "TTDictionary.test.h"
#include "TTList.test.h"
// Nodelib currently requires Boost Regex, which we don't have on the iOS
#ifndef DISABLE_NODELIB
#include "TTNodeLib.test.h"
#endif

#if defined(TT_PLATFORM_MAC) || defined(TT_PLATFORM_LINUX)
#if defined(TT_PLATFORM_MAC)
#include <sys/types.h>
#endif
#include <dlfcn.h>
#include <dirent.h>
#ifdef __ANDROID_API__
#include <unistd.h>
#include <string>
#include <fstream>
#include <iostream>
#endif
#elif defined(TT_PLATFORM_WIN)
#include <ShlObj.h>
#endif

#ifdef TT_PLATFORM_MAC
//#include <Carbon/Carbon.h>
#define __COREFOUNDATION_CFMESSAGEPORT__ 1
#include <CoreFoundation/CFBundle.h>
#endif

TTString        TTFoundationBinaryPath = "";

static bool		TTFoundationHasInitialized = false;

void            TTFoundationLoadExternalClasses(void);
TTErr           TTFoundationLoadExternalClassesFromFolder(const TTString& fullpath);
TTObjectBasePtr	TTFoundationInstantiateInternalClass(TTSymbol className, TTValue& arguments);


/****************************************************************************************************/
void TTFoundationInit(const char* pathToBinaries)
{
	if (!TTFoundationHasInitialized) {
		TTFoundationHasInitialized = true;

		if (pathToBinaries)
			TTFoundationBinaryPath = pathToBinaries;

		for (int i=0; i<kNumTTDataTypes; i++)
			TTDataInfo::addDataInfoForType(TTDataType(i));

// Regex requires Boost libraries, not available for iOS for the time-being
#ifndef DISABLE_NODELIB
		TTNodeLibInit();
#endif

		ttEnvironment = new TTEnvironment;

// Regex requires Boost libraries, not available for iOS for the time-being
//#ifndef DISABLE_NODELIB
//		TTAddressCacheInit();
//#endif

#ifdef TT_DEBUG
		TTLogMessage("JamomaFoundation (TT_DEBUG) -- Version %s", TTFOUNDATION_VERSION_STRING);
		ttEnvironment->mDebugBasic = true;
#else
		TTLogMessage("JamomaFoundation -- Version %s", TTFOUNDATION_VERSION_STRING);
#endif
		if (pathToBinaries)
			TTLogMessage("-- Path %s\n", pathToBinaries);
		else
			TTLogMessage("\n");

		// register classes -- both internal and external
		TTCallback::registerClass();
		TTMatrixBase::registerClass();
		TTMatrixArray::registerClass();
		TTObjectTest::registerClass();
		TTStringTest::registerClass();
		TTSymbolTest::registerClass();
		TTValueTest::registerClass();
		TTInterpolateTest::registerClass();
        TTDictionaryTest::registerClass();
        TTListTest::registerClass();
// Regex requires Boost libraries, not available for iOS for the time-being
#ifndef DISABLE_NODELIB
		TTNodeLibTest::registerClass();
#endif

		TTFoundationLoadExternalClasses();
	}
}


void TTFoundationShutdown();
void TTFoundationShutdown()
{
	// FIXME: How do we call this (i.e. TTDSPShutdown()?) -- do we need to setup an observer of some sort on the environment class?
	// TODO: we need to free singletons like the environment here!
}


/****************************************************************************************************/

void TTFoundationLoadExternalClasses(void)
{
#ifdef TT_PLATFORM_MAC
    if (!TTFoundationBinaryPath.empty()) {
		// Look in the specified folder rather than the default location
		TTString extensionsPath = TTFoundationBinaryPath;
        extensionsPath += "/extensions";
		TTFoundationLoadExternalClassesFromFolder(extensionsPath);
	}
	else {
		OSErr		err = noErr;
		TTString	fullpath;

#define LOOK_FOR_EXTENSIONS_IN_SAME_FOLDER_AS_LIB
#ifdef LOOK_FOR_EXTENSIONS_IN_SAME_FOLDER_AS_LIB
		Dl_info		info;
		char		mainBundleStr[4096];

		if (dladdr((const void*)TTFoundationLoadExternalClasses, &info)) {
			char *c = 0;

			printf("Loaded from path = %s\n", info.dli_fname);
			strncpy(mainBundleStr, info.dli_fname, 4096);
			c = strrchr(mainBundleStr, '/');
			if (c)
				*c = 0; // chop the "/JamomaFoundation.dylib off of the path

            // store binary path
            TTFoundationBinaryPath = mainBundleStr;
		}
#else // THE OLD WAY
		// Look in the folder of the host application
		CFBundleRef mainBundle = CFBundleGetMainBundle();
		CFURLRef	mainBundleURL = CFBundleCopyBundleURL(mainBundle);
		CFStringRef mainBundlePath = CFURLCopyFileSystemPath(mainBundleURL, kCFURLPOSIXPathStyle);
		char		mainBundleStr[4096];

		CFStringGetCString(mainBundlePath, mainBundleStr, 4096, kCFStringEncodingUTF8);
		strncat(mainBundleStr, "/Contents/Jamoma/Extensions", 4096);
		mainBundleStr[4095] = 0;

		CFRelease(mainBundlePath);
#endif

        std::cerr << "Trying to load from: " << mainBundleStr << std::endl;
		err = TTFoundationLoadExternalClassesFromFolder(mainBundleStr);
		if (!err)
			return; // if we loaded classes out of a standalone app, then we don't want to be corrupted by global extensions Redmine #348
					// it could be that you want to create a standalone with a plug-in architecture -- for now that problem is ignored.

#ifdef OLD_MAC_EXTENSIONS_PATH
		// Look in ~/Library/Application Support/Jamoma/Extensions
		err = FSFindFolder(kLocalDomain, kApplicationSupportFolderType, kCreateFolder, &ref);
		if (!err) {
			FSRefMakePath(&ref, path, 4096);
			fullpath = (char*)path;
			fullpath += "/Jamoma/Extensions";
			TTFoundationLoadExternalClassesFromFolder(fullpath);
		}

		// Look in /Library/Application Support/Jamoma/Extensions
		err = FSFindFolder(kUserDomain, kApplicationSupportFolderType, kCreateFolder, &ref);
		if (!err) {
			FSRefMakePath(&ref, path, 4096);
			fullpath = (char*)path;
			fullpath += "/Jamoma/Extensions";
			TTFoundationLoadExternalClassesFromFolder(fullpath);
		}
#else // NEW_MAC_EXTENSIONS_PATH
	    TTFoundationLoadExternalClassesFromFolder("/usr/local/jamoma/extensions");
#endif

	}
#elif defined(TT_PLATFORM_WIN)
	TTString	fullpath;
	char		temppath[4096];
	HKEY		hKey = 0;
	LONG		lRes;
	DWORD		dwSize = sizeof(temppath);
	HRESULT		hr;
	HINSTANCE	hInstance = GetModuleHandle(NULL);

	// Look in C:\Program Files\Common Files\TTBlue\Extensions
	//hr = SHGetFolderPath(NULL, CSIDL_PROGRAM_FILES_COMMON, NULL, SHGFP_TYPE_CURRENT, (LPSTR)temppath);

	//if (!FAILED(hr)) {
	//	fullpath = temppath;
	//	fullpath += "\\Jamoma\\Extensions\\";
	//	lRes = SHCreateDirectory(NULL, (LPCWSTR)fullpath.c_str());
	//	TTFoundationLoadExternalClassesFromFolder(fullpath);
	//}

	//// TODO: Look in some user-level directory like we do on the Mac?
	//
	//// Look in the support folder of the host application
	//if (hInstance) {
	//	GetModuleFileName(hInstance, (LPSTR)temppath, 4096);
	//	if (temppath[0]) {
	//		char *s = strrchr(temppath, '\\');
	//		if (s)
	//			*s = 0;
	//		fullpath = temppath;
	//		fullpath += "\\Jamoma\\Extensions\\";
	//		lRes = SHCreateDirectory(NULL, (LPCWSTR)fullpath.c_str());
	//		TTFoundationLoadExternalClassesFromFolder(fullpath);
	//	}
	//}

	// get the handle on JamomaFoundation.dll
	LPCSTR moduleName = "JamomaFoundation.dll";
	HMODULE	hmodule = GetModuleHandle(moduleName);
	// get the path
	GetModuleFileName(hmodule, (LPSTR)temppath, 4096);

	if (!FAILED(hmodule)) {
		if (temppath[0]) {
			fullpath = temppath;
			// get support folder path
			fullpath = fullpath.substr(0, fullpath.length() - (strlen(moduleName) + 1));
			TTFoundationBinaryPath = fullpath;
			lRes = SHCreateDirectory(NULL, (LPCWSTR)fullpath.c_str());
			TTFoundationLoadExternalClassesFromFolder(fullpath);
		}
	}

#else // Some other platform, like Linux
#ifdef __ANDROID_API__
	TTString s("/proc/");
	s.append(getpid());
	s.append("/cmdline");
	std::ifstream input(s.c_str());
	std::string line;
	std::getline(input, line);
	line = std::string("/data/data/") + line + std::string("/lib");
	TTFoundationLoadExternalClassesFromFolder(TTString(line.c_str()));
#else
    TTFoundationLoadExternalClassesFromFolder("/usr/local/lib/jamoma/extensions");
#endif
#endif
}



TTErr TTFoundationLoadExternalClassesFromFolder(const TTString& fullpath)
{
#if defined(TT_PLATFORM_MAC) || defined(TT_PLATFORM_LINUX) || defined(TT_PLATFORM_WIN)
 	TTExtensionInitializationMethod	initializer;
	TTString						initializerFunctionName;
	TTErr							err;
    TTPathVector					paths;
    TTPathIter						i;

#if defined(TT_PLATFORM_WIN)
	TTString		windowsPathSpec = fullpath;
					windowsPathSpec += "/*.ttdll";
	WIN32_FIND_DATA	FindFileData;
	HANDLE			hFind = FindFirstFile(windowsPathSpec.c_str(), &FindFileData);

	if (hFind == INVALID_HANDLE_VALUE)
		return kTTErrGeneric;

    do {
    	printf("%s\n", FindFileData.cFileName);

		TTString	fileName(FindFileData.cFileName);
		TTString	fileSuffix(strrchr(fileName.c_str(), '.'));
		TTString	fileBaseName = fileName.substr(0, fileName.size() - 8);
		TTString	fileFullpath(fullpath);
		void*		handle = NULL;

		fileFullpath += "/";
		fileFullpath += fileName;
		//std::cout << "EXTENSION: " << fileFullpath << std::endl;
		
		handle = LoadLibrary(FindFileData.cFileName);
		//std::cout << "HANDLE: " << handle << std::endl;
		if (!handle)
			continue;

		// TODO: assert -- or at least do a log post -- if handle is NULL
		initializerFunctionName = "TTLoadJamomaExtension_";
		initializerFunctionName += fileBaseName;
		initializer = (TTExtensionInitializationMethod)GetProcAddress((HMODULE)handle, initializerFunctionName.c_str());
		if (initializer)
			err = initializer();
		//std::cout<< "Initializer: " << initializer << std::endl;
		
    } while (FindNextFile(hFind, &FindFileData));

    FindClose(hFind);

#else // good platforms

	DIR* dirp = opendir(fullpath.c_str());
	dirent* dp;
	while ((dp = readdir(dirp))) {
		TTString	fileName(dp->d_name);
		const char*		cFileSuffix = strrchr(fileName.c_str(), '.');
		if (!cFileSuffix)
			continue;
		TTString	fileSuffix(cFileSuffix);

#if defined(TT_PLATFORM_LINUX)
#ifdef __ANDROID_API__
		int dlExtSize = 3; // .so
#else
		int dlExtSize = 5; // .ttso
#endif
#elif defined(TT_PLATFORM_MAC)
		int dlExtSize = 8; // .ttdylib
#elif defined(TT_PLATFORM_WIN)
		int dlExtSize = 6; // .ttdll
#endif

		TTString	fileBaseName = fileName.substr(0, fileName.size() - dlExtSize);
		TTString	fileFullpath(fullpath);
		void*		handle = NULL;

		fileFullpath += "/";
		fileFullpath += fileName;

		// make sure the files have the correct extension before trying to load them
#ifdef TT_PLATFORM_LINUX
#ifdef __ANDROID_API__
		if (fileSuffix != ".so")
#else
		if (fileSuffix != ".ttso")
#endif
#elif defined(TT_PLATFORM_MAC)
		if (fileSuffix != ".ttdylib")
#elif defined(TT_PLATFORM_WIN)
		if (fileSuffix != ".ttdll")
#endif
			continue;

#if defined(TT_PLATFORM_WIN)
		handle = LoadLibrary(fileFullpath.c_str());
#else
		handle = dlopen(fileFullpath.c_str(), RTLD_LAZY);
#endif
		//
		if (!handle)
		{
			std::cout << "HANDLE ERROR: " << dlerror() << std::endl;
			continue;
		}
		// TODO: assert -- or at least do a log post -- if handle is NULL
		initializerFunctionName = "TTLoadJamomaExtension_";

#ifdef TT_PLATFORM_LINUX
		// Because they begin with "lib"
		fileBaseName.erase(fileBaseName.begin(), fileBaseName.begin() + 3);
#endif

		initializerFunctionName += fileBaseName;

#if defined(TT_PLATFORM_WIN)
		initializer = (TTExtensionInitializationMethod)GetProcAddress((HMODULE)handle, initializerFunctionName.c_str());
#else
		initializer = (TTExtensionInitializationMethod)dlsym(handle, initializerFunctionName.c_str());
#endif
		if (initializer)
			err = initializer();
	}
	closedir(dirp);

#endif // not windows
#endif // No dynamic loading on iOS
	return kTTErrNone;
}

