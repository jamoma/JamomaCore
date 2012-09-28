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
#include "TTValueCache.h"
#include "TTCallback.h"

// Nodelib currently requires Boost Regex, which we don't have on the iOS
#ifndef TT_PLATFORM_IOS
#include "TTNodeLib.h"
#include "TTPath.h"
#endif

// Unit Tests
#include "TTMatrix.h"
#include "TTMatrixArray.h"
#include "TTString.test.h"
#include "TTSymbol.test.h"
#include "TTValue.test.h"
// Nodelib currently requires Boost Regex, which we don't have on the iOS
#ifndef TT_PLATFORM_IOS
#include "TTNodeLib.test.h"
#endif

#ifdef TT_PLATFORM_MAC
#include <dlfcn.h>
#elif TT_PLATFORM_LINUX
#include <dlfcn.h>
#elif TT_PLATFORM_WIN
#include <ShlObj.h>
#endif

#ifdef TT_PLATFORM_MAC
//#include <Carbon/Carbon.h>
#define __COREFOUNDATION_CFMESSAGEPORT__ 1
#include <CoreFoundation/CFBundle.h> 
#endif


static bool		TTFoundationHasInitialized = false;
static TTString	TTFoundationBinaryPath = "";

void		TTFoundationLoadExternalClasses();
TTErr		TTFoundationLoadExternalClassesFromFolder(const TTString& fullpath);
TTObjectPtr	TTFoundationInstantiateInternalClass(TTSymbol& className, TTValue& arguments);


/****************************************************************************************************/
void TTFoundationInit(const char* pathToBinaries)
{
	if (!TTFoundationHasInitialized) {
		TTFoundationHasInitialized = true;

		if (pathToBinaries)
			TTFoundationBinaryPath = pathToBinaries;

		// The symbol table is now initialized when the first lookup is performed
		//gTTSymbolTable = new TTSymbolTable;
		for (int i=0; i<kNumTTDataTypes; i++)
			TTDataInfo::addDataInfoForType(TTDataType(i));

// Regex requires Boost libraries, not available for iOS for the time-being
#ifndef DISABLE_NODELIB
		TTNodeLibInit();
#endif

		ttEnvironment = new TTEnvironment;

		TTValueCacheInit();
// Regex requires Boost libraries, not available for iOS for the time-being
#ifndef DISABLE_NODELIB		
		TTNodeAddressCacheInit();
#endif
		
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
		TTMatrix::registerClass();
		TTMatrixArray::registerClass();
		TTStringTest::registerClass();
		TTSymbolTest::registerClass();
		TTValueTest::registerClass();
// Regex requires Boost libraries, not available for iOS for the time-being
#ifndef DISABLE_NODELIB
		TTNodeLibTest::registerClass();
#endif

		TTFoundationLoadExternalClasses();
	}
}


void TTFoundationShutdown()
{
	// FIXME: How do we call this (i.e. TTDSPShutdown()?) -- do we need to setup an observer of some sort on the environment class?
	// TODO: we need to free singletons like the environment here!
}


/****************************************************************************************************/

void TTFoundationLoadExternalClasses()
{
#ifdef TT_PLATFORM_MAC
	if (!TTFoundationBinaryPath.empty()) {
		// Look in the specified folder rather than the default location
		TTString extensionsPath = TTFoundationBinaryPath;
		extensionsPath += "/Extensions";
		TTFoundationLoadExternalClassesFromFolder(extensionsPath);
	}
	else {
		OSErr		err = noErr;
		TTString	fullpath;
		
		// Look in the folder of the host application
		CFBundleRef mainBundle = CFBundleGetMainBundle();
		CFURLRef	mainBundleURL = CFBundleCopyBundleURL(mainBundle);
		CFStringRef mainBundlePath = CFURLCopyFileSystemPath(mainBundleURL, kCFURLPOSIXPathStyle);
		char		mainBundleStr[4096];
		
		CFStringGetCString(mainBundlePath, mainBundleStr, 4096, kCFStringEncodingUTF8);
		strncat(mainBundleStr, "/Contents/Jamoma/Extensions", 4096);
		mainBundleStr[4095] = 0;
		
		CFRelease(mainBundlePath);
		
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
#elif TT_PLATFORM_WIN
	TTString	fullpath;
	char		temppath[4096];
	HKEY		hKey = 0;
	LONG		lRes;
	DWORD		dwSize = sizeof(temppath);
	HRESULT		hr;
	HINSTANCE	hInstance = GetModuleHandle(NULL);

	// Look in C:\Program Files\Common Files\TTBlue\Extensions
	hr = SHGetFolderPath(NULL, CSIDL_PROGRAM_FILES_COMMON, NULL, SHGFP_TYPE_CURRENT, (LPSTR)temppath);
	if (!FAILED(hr)) {
		fullpath = temppath;
		fullpath += "\\Jamoma\\Extensions\\";
		lRes = SHCreateDirectory(NULL, (LPCWSTR)fullpath.c_str());
		TTFoundationLoadExternalClassesFromFolder(fullpath);
	}

	// TODO: Look in some user-level directory like we do on the Mac?

	// Look in the support folder of the host application
	if (hInstance) {
		GetModuleFileName(hInstance, (LPSTR)temppath, 4096);
		if (temppath[0]) {
			char *s = strrchr(temppath, '\\');
			if (s)
				*s = 0;
			fullpath = temppath;
			fullpath += "\\Jamoma\\Extensions\\";
			lRes = SHCreateDirectory(NULL, (LPCWSTR)fullpath.c_str());
			TTFoundationLoadExternalClassesFromFolder(fullpath);
		}
	}
#else // Some other platform, like Linux
    TTFoundationLoadExternalClassesFromFolder("/usr/local/lib/jamoma/extensions");
#endif
}



TTErr TTFoundationLoadExternalClassesFromFolder(const TTString& fullpath)
{
#if defined(TT_PLATFORM_MAC) || defined(TT_PLATFORM_LINUX) || defined(TT_PLATFORM_WIN)
 	TTExtensionInitializationMethod	initializer;
	TTString						initializerFunctionName;
	TTErr							err;
	TTPath							path(fullpath);
	TTString						extensionFilename;
	TTString						extensionFileExtension;
    TTPathVector					paths;
    TTPathIter						i;

	err = path.getDirectoryListing(paths);
    if (!err) {
        for (i = paths.begin(); i != paths.end(); ++i) {
            TTPath							aPath = *i;
            TTString						aPathString;
            void*							handle = NULL;
 
            aPath.getString(aPathString);
//            cout << "EXTENSION: " << aPathString << endl;

			// make sure the files have the correct extension before trying to load them
			aPath.getExtension(extensionFileExtension);
#ifdef TT_PLATFORM_LINUX
			if (extensionFileExtension != ".ttso")
#elif defined(TT_PLATFORM_MAC)
			if (extensionFileExtension != ".ttdylib")
#elif defined(TT_PLATFORM_WIN)
			if (extensionFileExtension != ".ttdll")
#endif
				continue;

#ifdef TT_PLATFORM_WIN
			handle = LoadLibrary(aPathString.c_str());
#else
            handle = dlopen(aPathString.c_str(), RTLD_LAZY);
#endif
//            cout << "HANDLE: " << handle << endl;
            if (!handle)
                continue;

            // TODO: assert -- or at least do a log post -- if handle is NULL
			aPath.getStem(extensionFilename);
			initializerFunctionName = "TTLoadJamomaExtension_";
			initializerFunctionName += extensionFilename;
#ifdef TT_PLATFORM_WIN
			initializer = (TTExtensionInitializationMethod)GetProcAddress((HMODULE)handle, initializerFunctionName.c_str());
#else
            initializer = (TTExtensionInitializationMethod)dlsym(handle, initializerFunctionName.c_str());
#endif
            if (initializer)
                err = initializer();
        }
    }
	else
		return err;
#endif
// No dynamic loading on iOS
	return kTTErrNone;
}

