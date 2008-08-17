/* 
 * TTBlue Library
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTBlue.h"
#include "TTSymbolTable.h"
#include "TTEnvironment.h"
#include "TTSymbolCache.h"
#include "TTValueCache.h"

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


/****************************************************************************************************/
void TTBlueInit()
{
	if(!TTBlueHasInitialized){
		TTBlueHasInitialized = true;

		ttSymbolTable = new TTSymbolTable;
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
	}
}


/****************************************************************************************************/

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
	void*							handle;
	TTExtensionInitializationMethod	initializer;
	TTErr							err;
	
	FSPathMakeRef((UInt8*)fullpath.c_str(), &ref, &isDirectory);
	status = FSOpenIterator(&ref, kFSIterateFlat, &iterator);
	if(!status){
        names = (HFSUniStr255 *)malloc(sizeof(HFSUniStr255) * 4096);
        if(names){
            // Request information about files in the given directory,
            // until we get a status code back from the File Manager
            do{
				status = FSGetCatalogInfoBulk(iterator, 4096, &count, NULL, kFSCatInfoNone, NULL, NULL, NULL, names);
				
                // Process all items received
                if(status == noErr || status == errFSNoMoreItems){
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
            while(status == noErr);
			
            // errFSNoMoreItems tells us we have successfully processed all
            // items in the directory -- not really an error
            if(status == errFSNoMoreItems)
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


/****************************************************************************************************/

// Analysis
#include "TTZerocross.h"

// Data

// Dynamics
#include "TTBalance.h"
#include "TTGain.h"
#include "TTLimiter.h"
#include "TTPulseSub.h"

// Generators
#include "TTAdsr.h"
#include "TTNoise.h"
#include "TTPhasor.h"
#include "TTRamp.h"
#include "TTWavetable.h"

// Filtering
#include "TTAllpass.h"
#include "TTAverage.h"
#include "TTBandpassButterworth2.h"
#include "TTBandrejectButterworth2.h"
#include "TTDCBlock.h"

#include "TTHighpassButterworth1.h"
#include "TTHighpassButterworth2.h"
#include "TTHighpassButterworth3.h"
#include "TTHighpassButterworth4.h"
#include "TTHighpassLinkwitzRiley2.h"
#include "TTHighpassLinkwitzRiley4.h"

#include "TTLowpassButterworth1.h"
#include "TTLowpassButterworth2.h"
#include "TTLowpassButterworth3.h"
#include "TTLowpassButterworth4.h"
#include "TTLowpassLinkwitzRiley2.h"
#include "TTLowpassLinkwitzRiley4.h"

#include "TTLowpassOnePole.h"
#include "TTLowpassTwoPole.h"
#include "TTLowpassFourPole.h"
#include "TTSvf.h"

// Misc
#include "TTBuffer.h"
#include "TTCrossfade.h"
#include "TTDegrade.h"
#include "TTDelay.h"
#include "TTOperator.h"
#include "TTOverdrive.h"


void TTBlueRegisterInternalClasses()
{
	// Analysis
	TTClassRegister(TT("zerocross"),					"audio, analysis, frequency",										&TTBlueInstantiateInternalClass);
	
	
	// Data
	
	
	// Dynamics
	TTClassRegister(TT("balance"),						"audio, processor, dynamics",										&TTBlueInstantiateInternalClass);
	TTClassRegister(TT("gain"),							"audio, processor, dynamics",										&TTBlueInstantiateInternalClass);
	TTClassRegister(TT("limiter"),						"audio, processor, dynamics, limiter",								&TTBlueInstantiateInternalClass);
	TTClassRegister(TT("pulsesub"),						"audio, processor, dynamics, envelope",								&TTBlueInstantiateInternalClass);
	
	
	// Generators
	TTClassRegister(TT("adsr"),							"audio, generator, envelope",										&TTBlueInstantiateInternalClass);
	TTClassRegister(TT("noise"),						"audio, generator, noise",											&TTBlueInstantiateInternalClass);
	TTClassRegister(TT("phasor"),						"audio, generator, oscillator",										&TTBlueInstantiateInternalClass);
	TTClassRegister(TT("ramp"),							"audio, generator",													&TTBlueInstantiateInternalClass);
	TTClassRegister(TT("wavetable"),					"audio, generator, oscillator, buffer",								&TTBlueInstantiateInternalClass);
	
	
	// Filtering
	TTClassRegister(TT("allpass"),						"audio, processor, filter, allpass",								&TTBlueInstantiateInternalClass);
	TTClassRegister(TT("average"),						"audio, processor, filter, lowpass, envelope",						&TTBlueInstantiateInternalClass);
	TTClassRegister(TT("bandpass.butterworth.2"),		"audio, processor, filter, bandpass, butterworth",					&TTBlueInstantiateInternalClass);
	TTClassRegister(TT("bandreject.butterworth.2"),		"audio, processor, filter, notch",									&TTBlueInstantiateInternalClass);
	TTClassRegister(TT("dcblock"),						"audio, processor, filter",											&TTBlueInstantiateInternalClass);

	TTClassRegister(TT("highpass.butterworth.1"),		"audio, processor, filter, highpass, butterworth",					&TTBlueInstantiateInternalClass);
	TTClassRegister(TT("highpass.butterworth.2"),		"audio, processor, filter, highpass, butterworth",					&TTBlueInstantiateInternalClass);
	TTClassRegister(TT("highpass.butterworth.3"),		"audio, processor, filter, highpass, butterworth",					&TTBlueInstantiateInternalClass);
	TTClassRegister(TT("highpass.butterworth.4"),		"audio, processor, filter, highpass, butterworth",					&TTBlueInstantiateInternalClass);
	TTClassRegister(TT("highpass.linkwitzriley.2"),		"audio, processor, filter, highpass",								&TTBlueInstantiateInternalClass);
	TTClassRegister(TT("highpass.linkwitzriley.4"),		"audio, processor, filter, highpass, crossover",					&TTBlueInstantiateInternalClass);

	TTClassRegister(TT("lowpass.butterworth.1"),		"audio, processor, filter, lowpass, butterworth",					&TTBlueInstantiateInternalClass);
	TTClassRegister(TT("lowpass.butterworth.2"),		"audio, processor, filter, lowpass, butterworth",					&TTBlueInstantiateInternalClass);
	TTClassRegister(TT("lowpass.butterworth.3"),		"audio, processor, filter, lowpass, butterworth",					&TTBlueInstantiateInternalClass);
	TTClassRegister(TT("lowpass.butterworth.4"),		"audio, processor, filter, lowpass, butterworth",					&TTBlueInstantiateInternalClass);
	TTClassRegister(TT("lowpass.linkwitzriley.2"),		"audio, processor, filter, lowpass",								&TTBlueInstantiateInternalClass);
	TTClassRegister(TT("lowpass.linkwitzriley.4"),		"audio, processor, filter, lowpass, crossover",						&TTBlueInstantiateInternalClass);
	
	TTClassRegister(TT("lowpass.1"),					"audio, processor, filter, lowpass",								&TTBlueInstantiateInternalClass);
	TTClassRegister(TT("lowpass.2"),					"audio, processor, filter, lowpass",								&TTBlueInstantiateInternalClass);
	TTClassRegister(TT("lowpass.4"),					"audio, processor, filter, lowpass",								&TTBlueInstantiateInternalClass);

	TTClassRegister(TT("svf"),							"audio, processor, filter, lowpass, highpass, bandpass, notch",		&TTBlueInstantiateInternalClass);
	
	
	// Misc
	TTClassRegister(TT("buffer"),						"audio, buffer, storage",											&TTBlueInstantiateInternalClass);
	TTClassRegister(TT("crossfade"),					"audio, processor, mixing",											&TTBlueInstantiateInternalClass);
	TTClassRegister(TT("degrade"),						"audio, processor, distortion",										&TTBlueInstantiateInternalClass);
	TTClassRegister(TT("delay"),						"audio, processor, delay",											&TTBlueInstantiateInternalClass);
	TTClassRegister(TT("operator"),						"audio, processor, math",											&TTBlueInstantiateInternalClass);
	TTClassRegister(TT("overdrive"),					"audio, processor",													&TTBlueInstantiateInternalClass);
}


TTObject* TTBlueInstantiateInternalClass(TTSymbol* className, TTValue& arguments)
{
	// Analysis
	if(className == TT("zerocross"))
		return new TTZerocross(arguments);
	
	
	// Data
	
	
	// Dynamics
	else if(className == TT("balance"))
		return new TTBalance(arguments);
	else if(className == TT("gain"))
		return new TTGain(arguments);
	else if(className == TT("limiter"))
		return new TTLimiter(arguments);
	else if(className == TT("pulsesub"))
		return new TTPulseSub(arguments);
	
	
	// Generators
	else if(className == TT("adsr"))
		return new TTAdsr(arguments);
	else if(className == TT("noise"))
		return new TTNoise(arguments);
	else if(className == TT("phasor"))
		return new TTPhasor(arguments);
	else if(className == TT("ramp"))
		return new TTRamp(arguments);
	else if(className == TT("wavetable"))
		return new TTWavetable(arguments);
	
	
	// Filtering
	else if(className == TT("allpass"))
		return new TTAllpass(arguments);
	else if(className == TT("average"))
		return new TTAverage(arguments);
	else if(className == TT("bandpass.butterworth.2"))
		return new TTBandpassButterworth2(arguments);
	else if(className == TT("bandreject.butterworth.2"))
		return new TTBandRejectButterworth2(arguments);
	else if(className == TT("dcblock"))
		return new TTDCBlock(arguments);
	
	else if(className == TT("highpass.butterworth.1"))
		return new TTHighpassButterworth1(arguments);
	else if(className == TT("highpass.butterworth.2"))
		return new TTHighpassButterworth2(arguments);
	else if(className == TT("highpass.butterworth.3"))
		return new TTHighpassButterworth3(arguments);
	else if(className == TT("highpass.butterworth.4"))
		return new TTHighpassButterworth4(arguments);
	else if(className == TT("highpass.linkwitzriley.2"))
		return new TTHighpassLinkwitzRiley2(arguments);
	else if(className == TT("highpass.linkwitzriley.4"))
		return new TTHighpassLinkwitzRiley4(arguments);
	
	else if(className == TT("lowpass.butterworth.1"))
		return new TTLowpassButterworth1(arguments);
	else if(className == TT("lowpass.butterworth.2"))
		return new TTLowpassButterworth2(arguments);
	else if(className == TT("lowpass.butterworth.3"))
		return new TTLowpassButterworth3(arguments);
	else if(className == TT("lowpass.butterworth.4"))
		return new TTLowpassButterworth4(arguments);
	else if(className == TT("lowpass.linkwitzriley.2"))
		return new TTLowpassLinkwitzRiley2(arguments);
	else if(className == TT("lowpass.linkwitzriley.4"))
		return new TTLowpassLinkwitzRiley4(arguments);
	
	else if(className == TT("lowpass.1"))
		return new TTLowpassOnePole(arguments);
	else if(className == TT("lowpass.2"))
		return new TTLowpassTwoPole(arguments);
	else if(className == TT("lowpass.4"))
		return new TTLowpassFourPole(arguments);
	
	else if(className == TT("svf"))
		return new TTSvf(arguments);
	
	
	// Misc
	else if(className == TT("buffer"))
		return new TTBuffer;
	else if(className == TT("crossfade"))
		return new TTCrossfade(arguments);
	else if(className == TT("degrade"))
		return new TTDegrade(arguments);
	else if(className == TT("delay"))
		return new TTDelay(arguments);
	else if(className == TT("operator"))
		return new TTOperator(arguments);
	else if(className == TT("overdrive"))
		return new TTOverdrive(arguments);

	else{
		TTLogError("TTBlue: cannot instantiate object of %s class.  No such class.", className->getCString());
		return NULL;
	}
}

