/* 
 * TTBlue Library
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */


/*
#include "TTFoundation.h"
#include "TTSymbolTable.h"
#include "TTEnvironment.h"
#include "TTSymbolCache.h"
#include "TTValueCache.h"
//#include "TTAudioEngine.h"

#ifdef TT_PLATFORM_MAC
#include <dlfcn.h>
#elif TT_PLATFORM_WIN
#include <ShlObj.h>
#endif


static bool TTBlueHasInitialized = false;

void		TTBlueLoadExternalClasses();
void		TTBlueLoadExternalClassesFromFolder(const TTString& fullpath);
void		TTBlueRegisterInternalClasses();
TTObjectPtr	TTBlueInstantiateInternalClass(TTSymbol* className, TTValue& arguments);
*/


/****************************************************************************************************/


/*
void TTBlueInit()
{
	if(!TTBlueHasInitialized){
		TTBlueHasInitialized = true;
		
		ttSymbolTable = new TTSymbolTable;
		for(int i=0; i<kNumTTDataTypes; i++)
			TTDataInfo::addDataInfoForType(TTDataType(i));

		ttEnvironment = new TTEnvironment;
		
		TTSymbolCacheInit();
		TTValueCacheInit();
		
#ifdef TT_DEBUG
		TTLogMessage("TTBlue -- Version %s -- Debugging Enabled\n", TT_VERSION_STRING);
#else
		TTLogMessage("TTBlue -- Version %s\n", TT_VERSION_STRING);
#endif
		
		TTBlueRegisterInternalClasses();
		TTBlueLoadExternalClasses();
//		TTAudioEngineCreate();
	}
}


void TTBlueShutdown()
{
//	TTAudioEngineFree();
}
*/

/****************************************************************************************************/

/*

void TTBlueLoadExternalClasses()
{
#ifdef TT_PLATFORM_MAC
	OSErr		err = noErr;
	FSRef		ref;
	UInt8		path[4096];
	TTString	fullpath;
	
	// Look in ~/Library/Application Support/TTBlue/Extensions
	err = FSFindFolder(kLocalDomain, kApplicationSupportFolderType, kCreateFolder, &ref);
	if(!err){
		FSRefMakePath(&ref, path, 4096);
		fullpath = (char*)path;
		fullpath += "/TTBlue/Extensions";
		TTBlueLoadExternalClassesFromFolder(fullpath);
	}
	
	// Look in /Library/Application Support/TTBlue/Extensions
	err = FSFindFolder(kUserDomain, kApplicationSupportFolderType, kCreateFolder, &ref);
	if(!err){
		FSRefMakePath(&ref, path, 4096);
		fullpath = (char*)path;
		fullpath += "/TTBlue/Extensions";
		TTBlueLoadExternalClassesFromFolder(fullpath);
	}
#elif TT_PLATFORM_WIN
	TTString	fullpath;
	char		temppath[4096];
	HKEY		hKey = 0;
	LONG		lRes;
	DWORD		dwSize = sizeof(temppath);
	HRESULT		hr;

	// Look in C:\Program Files\Common Files\TTBlue\Extensions
	hr = SHGetFolderPath(NULL, CSIDL_PROGRAM_FILES_COMMON, NULL, SHGFP_TYPE_CURRENT, (LPSTR)temppath);
	if(!FAILED(hr)){
		fullpath = temppath;
		fullpath += "\\TTBlue\\Extensions\\";
		lRes = SHCreateDirectory(NULL, (LPCWSTR)fullpath.c_str());
		TTBlueLoadExternalClassesFromFolder(fullpath);
	}

	// TODO: Look in some user-level directory like we do on the Mac?

#else // Some other platform, like Linux
	
#endif
}


void TTBlueLoadExternalClassesFromFolder(const TTString& fullpath)
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
	
	FSPathMakeRef((UInt8*)cpath, &ref, &isDirectory);
	status = FSOpenIterator(&ref, kFSIterateFlat, &iterator);
	if(!status){
        names = (HFSUniStr255 *)malloc(sizeof(HFSUniStr255) * 4096);
        if(names){
            // Request information about files in the given directory,
            // until we get a status code back from the File Manager
            do{
				status = FSGetCatalogInfoBulk(iterator, 4096, &count, NULL, kFSCatInfoNone, NULL, NULL, NULL, names);
				
                // Process all items received
                if(status == OSStatus(noErr) || status == OSStatus(errFSNoMoreItems)){
                    for(UInt32 i=0; i < count; i += 1){
  						name = CFStringCreateWithCharacters(kCFAllocatorDefault, names[i].unicode, names[i].length);
						CFStringGetCString(name, cname, 4096, kCFStringEncodingUTF8);
						path = fullpath;
						path += "/";
						path += cname;
						
						handle = dlopen(path.c_str(), RTLD_LAZY);
						initializer = (TTExtensionInitializationMethod)dlsym(handle, "loadTTExtension");
						if(initializer)
							err = initializer();
						CFRelease(name);
                    }
                }
            }
            while(status == OSStatus(noErr));
			
            // errFSNoMoreItems tells us we have successfully processed all
            // items in the directory -- not really an error
            if(status == OSStatus(errFSNoMoreItems))
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
	if(fdHandle && (fdHandle != INVALID_HANDLE_VALUE)){
		while(fdHandle){
			path = fullpath;
			path += findFileData.cFileName;

			hLib = LoadLibrary(path.c_str());
			if(hLib){
				initializer = (TTExtensionInitializationMethod)GetProcAddress((HMODULE)hLib, "loadTTExtension");
				if(initializer)
					err = initializer();
			}
			if(!FindNextFile(fdHandle, &findFileData))
				break;
		}
	}
#else
	;
#endif
}

*/

/****************************************************************************************************/

// Core
//#include "TTAudioSignal.h"

// Analysis
//#include "TTZerocross.h"

// Dynamics
//#include "TTBalance.h"
//#include "TTGain.h"
//#include "TTLimiter.h"
//#include "TTPulseSub.h"

// Generators
//#include "TTAdsr.h"
//#include "TTNoise.h"
//#include "TTPhasor.h"
//#include "TTRamp.h"
//#include "TTWavetable.h"

// Misc
//#include "TTBuffer.h"
//#include "TTCrossfade.h"
//#include "TTDegrade.h"
//#include "TTDelay.h"
//#include "TTOperator.h"
//#include "TTOverdrive.h"
//#include "TTMatrixMixer.h"


void TTDSPRegisterInternalClasses()
{
	/*
	TTAudioSignal::registerClass();
	TTAudioSignalArray::registerClass();
	TTBuffer::registerClass();
	
	// Analysis
	TTZerocross::registerClass();
	
	// Dynamics
//	TTBalance::registerClass();
//	TTGain::registerClass();
//	TTLimiter::registerClass();
//	TTPulseSub::registerClass();
	
	// Generators
	TTAdsr::registerClass();
	TTNoise::registerClass();
	TTPhasor::registerClass();
	TTRamp::registerClass();
	TTWavetable::registerClass();
		
	// Misc
	TTCrossfade::registerClass();
//	TTDegrade::registerClass();
//	TTDelay::registerClass();
	TTOperator::registerClass();
//	TTOverdrive::registerClass();
	TTMatrixMixer::registerClass();
*/
	 }
