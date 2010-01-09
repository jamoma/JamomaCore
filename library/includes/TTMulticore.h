/* 
 * Multicore Audio Graph Layer for Jamoma DSP
 * Creates a wrapper for TTAudioObjects that can be used to build an audio processing graph.
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TTMULTICORE_H__
#define __TTMULTICORE_H__

#include "TTDSP.h"


#ifdef TT_PLATFORM_WIN
	#include "windows.h"
	#ifdef _DLL_EXPORT
		#define TTMULTICORE_EXPORT __declspec(dllexport)
	#else
		#define TTMULTICORE_EXPORT __declspec(dllimport)
	#endif
#else // TT_PLATFORM_MAC
	#ifdef _DLL_EXPORT
		#define TTMULTICORE_EXPORT __attribute__((visibility("default")))
	#else
		#define TTMULTICORE_EXPORT  
	#endif
#endif


/******************************************************************************************/

enum TTMulticoreProcessStatus {
	kTTMulticoreProcessUnknown = 0,
	kTTMulticoreProcessNotStarted,
	kTTMulticoreProcessingCurrently,	
	kTTMulticoreProcessComplete
};


// values to be used as a bitmask
enum TTMulticoreFlags {
	kTTMulticoreFlagsNone = 0x00,
	kTTMulticoreProcessor = 0x01,
	kTTMulticoreGenerator = 0x02
};

class TTMulticoreObject;
typedef TTMulticoreObject*					TTMulticoreObjectPtr;
typedef vector<TTMulticoreObjectPtr>		TTMulticoreObjectVector;
typedef TTMulticoreObjectVector::iterator	TTMulticoreObjectIter;


/******************************************************************************************/

TTMULTICORE_EXPORT void TTMulticoreInit(void);


#endif // __TTMULTICORE_H__
