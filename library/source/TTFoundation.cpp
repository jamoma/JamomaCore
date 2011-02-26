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
#include "TTNode.h"
#include "TTNodeDirectory.h"
#include "TTPath.h"

// Unit Tests
#include "TTMatrix.h"
#include "TTValueTest.h"


#ifdef TT_PLATFORM_MAC
#include <dlfcn.h>
#elif TT_PLATFORM_LINUX
#include <dlfcn.h>
#elif TT_PLATFORM_WIN
#include <ShlObj.h>
#endif


static bool		TTFoundationHasInitialized = false;
static TTString	TTFoundationBinaryPath = "";

void		TTFoundationLoadExternalClasses();
void		TTFoundationLoadExternalClassesFromFolder(const TTString& fullpath);
TTObjectPtr	TTFoundationInstantiateInternalClass(TTSymbol* className, TTValue& arguments);


/****************************************************************************************************/
void TTFoundationInit(const char* pathToBinaries)
{
	if (!TTFoundationHasInitialized) {
		TTFoundationHasInitialized = true;

		if (pathToBinaries)
			TTFoundationBinaryPath = pathToBinaries;

		ttSymbolTable = new TTSymbolTable;
		for (int i=0; i<kNumTTDataTypes; i++)
			TTDataInfo::addDataInfoForType(TTDataType(i));

		ttEnvironment = new TTEnvironment;

		TTSymbolCacheInit();
		TTValueCacheInit();

#ifdef TT_DEBUG
		TTLogMessage("JamomaFoundation (TT_DEBUG) -- Version %s", TTFOUNDATION_VERSION_STRING);
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
		TTValueTest::registerClass();

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
		TTString extensionsPath = TTFoundationBinaryPath + "/Extensions";
		TTFoundationLoadExternalClassesFromFolder(extensionsPath);
	}
	else {
		OSErr		err = noErr;
		FSRef		ref;
		UInt8		path[4096];
		TTString	fullpath;

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

		// Look in the folder of the host application
		CFBundleRef mainBundle = CFBundleGetMainBundle();
		CFURLRef	mainBundleURL = CFBundleCopyBundleURL(mainBundle);
		CFStringRef mainBundlePath = CFURLCopyFileSystemPath(mainBundleURL, kCFURLPOSIXPathStyle);
		char		mainBundleStr[4096];

		CFStringGetCString(mainBundlePath, mainBundleStr, 4096, kCFStringEncodingUTF8);
		strncat(mainBundleStr, "/Contents/Jamoma/Extensions", 4096);
		mainBundleStr[4095] = 0;
		TTFoundationLoadExternalClassesFromFolder(mainBundleStr);
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


void TTFoundationLoadExternalClassesFromFolder(const TTString& fullpath)
{
#ifdef TT_PLATFORM_MAC
	FSRef							ref;
	Boolean							isDirectory;
	OSStatus						status = noErr;
	ItemCount						count = 0;
    FSIterator						iterator;
	HFSUniStr255*					names = NULL;
	CFStringRef						name;
	char							cname[4096];
	TTString						path;
	TTCString						cpath = (char*)fullpath.c_str();
	void*							handle;
	TTExtensionInitializationMethod	initializer;
	TTErr							err;

	status = FSPathMakeRef((UInt8*)cpath, &ref, &isDirectory);
	if (status != noErr) {
#ifdef TT_DEBUG
		TTLogMessage("TTFoundation - no extensions location found @ %s\n", cpath);
#endif
		return;
	}

	status = FSOpenIterator(&ref, kFSIterateFlat, &iterator);
	if (!status) {
        names = (HFSUniStr255 *)malloc(sizeof(HFSUniStr255) * 4096);
        if (names) {
            // Request information about files in the given directory,
            // until we get a status code back from the File Manager
            do{
				status = FSGetCatalogInfoBulk(iterator, 4096, &count, NULL, kFSCatInfoNone, NULL, NULL, NULL, names);

                // Process all items received
                if (status == OSStatus(noErr) || status == OSStatus(errFSNoMoreItems)) {
                    for (UInt32 i=0; i < count; i += 1) {
  						name = CFStringCreateWithCharacters(kCFAllocatorDefault, names[i].unicode, names[i].length);
// TODO: filter on name.  We only want to try and load .ttdylib files
						CFStringGetCString(name, cname, 4096, kCFStringEncodingUTF8);
						path = fullpath;
						path += "/";
						path += cname;

						handle = dlopen(path.c_str(), RTLD_LAZY);
// TODO: assert -- or at least do a log post -- if handle is NULL
						initializer = (TTExtensionInitializationMethod)dlsym(handle, "loadTTExtension");
						if (initializer)
							err = initializer();
						CFRelease(name);
                    }
                }
            }
            while (status == OSStatus(noErr));

            // errFSNoMoreItems tells us we have successfully processed all
            // items in the directory -- not really an error
            if (status == OSStatus(errFSNoMoreItems))
                status = noErr;

            // Free the array memory
            free( (void *) names );
        }
		FSCloseIterator(iterator);
    }
#elif TT_PLATFORM_WIN
	HANDLE							fdHandle;
	WIN32_FIND_DATA					findFileData;
	TTString						path;
	HANDLE							hLib = NULL;
	TTExtensionInitializationMethod	initializer;
	TTErr							err;

	path = fullpath;
	path += "*.ttdll";
	fdHandle = FindFirstFile(path.c_str(), &findFileData);
	if (fdHandle && (fdHandle != INVALID_HANDLE_VALUE)) {
		while (fdHandle) {
			path = fullpath;
			path += findFileData.cFileName;

			hLib = LoadLibrary(path.c_str());
			if (hLib) {
				initializer = (TTExtensionInitializationMethod)GetProcAddress((HMODULE)hLib, "loadTTExtension");
				if (initializer)
					err = initializer();
			}
			if (!FindNextFile(fdHandle, &findFileData))
				break;
		}
	}
#else // LINUX
    TTPath          path(fullpath);
    TTPathVector    paths;
    TTPathIter      i;
    TTErr           err;

    err = path.getDirectoryListing(paths);
    if (!err) {
        for (i = paths.begin(); i != paths.end(); ++i) {
            TTPath      aPath = *i;
            TTString    aPathString;
            void*							handle = NULL;
            TTExtensionInitializationMethod	initializer = NULL;

            aPath.getString(aPathString);
            cout << "EXTENSION: " << aPathString << endl;

// TODO: filter to only files with .ttso suffix

            handle = dlopen(aPathString.c_str(), RTLD_LAZY);
            cout << "HANDLE: " << handle << endl;
            if (!handle)
                continue;

            // TODO: assert -- or at least do a log post -- if handle is NULL
            initializer = (TTExtensionInitializationMethod)dlsym(handle, "loadTTExtension");
            if (initializer) {
                err = initializer();
            }
        }
    }

#endif
}

