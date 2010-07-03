/* 
 * AudioGraph Audio Graph Layer for Jamoma DSP
 * Creates a wrapper for TTAudioObjects that can be used to build an audio processing graph.
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TTAUDIOGRAPH_H__
#define __TTAUDIOGRAPH_H__

#include "TTDSP.h"
#include "TTGraph.h"

#ifdef TT_PLATFORM_WIN
	#include "windows.h"
	#if defined( _DLL_EXPORT ) && defined( TTAUDIOGRAPH_EXPORTS )
		#define TTAUDIOGRAPH_EXPORT __declspec(dllexport)
	#else
		#define TTAUDIOGRAPH_EXPORT __declspec(dllimport)
	#endif

	#include <algorithm>
	using namespace std;
#else // TT_PLATFORM_MAC
	#ifdef TTAUDIOGRAPH_EXPORTS
		#define TTAUDIOGRAPH_EXPORT __attribute__((visibility("default")))
	#else
		#define TTAUDIOGRAPH_EXPORT  
	#endif
#endif


/******************************************************************************************/

// the state of each node in the graph
enum TTAudioGraphProcessStatus {
	kTTAudioGraphProcessUnknown = 0,
	kTTAudioGraphProcessNotStarted,
	kTTAudioGraphProcessingCurrently,	
	kTTAudioGraphProcessComplete
};


// values to be used as a bitmask
enum TTAudioGraphFlags {
	kTTAudioGraphFlagsNone = 0x00,
	kTTAudioGraphProcessor = 0x01,
	kTTAudioGraphGenerator = 0x02,		///< This object generates signals, it has no inputs
	kTTAudioGraphNonAdapting = 0x04,		///< This object does not adapt its number of output channels to the number of input channels
};


// data passed to all nodes in the graph when the graph is performing it's pre-process
class TTAudioGraphPreprocessData {
public:
	TTUInt16 vectorSize;	// the global/recommended/initial vectorSize (which can be overriden during process)
};


class	TTAudioGraphObject;
typedef TTAudioGraphObject*					TTAudioGraphObjectPtr;
typedef vector<TTAudioGraphObjectPtr>		TTAudioGraphObjectVector;
typedef TTAudioGraphObjectVector::iterator	TTAudioGraphObjectIter;

class	TTAudioGraphInlet;
typedef TTAudioGraphInlet*					TTAudioGraphInletPtr;
typedef vector<TTAudioGraphInlet>			TTAudioGraphInletVector;
typedef TTAudioGraphInletVector::iterator	TTAudioGraphInletIter;

class	TTAudioGraphOutlet;
typedef TTAudioGraphOutlet*					TTAudioGraphOutletPtr;
typedef vector<TTAudioGraphOutlet>			TTAudioGraphOutletVector;
typedef TTAudioGraphOutletVector::iterator	TTAudioGraphOutletIter;

#include "TTAudioGraphDescription.h"

/******************************************************************************************/

TTAUDIOGRAPH_EXPORT void TTAudioGraphInit(void);


#endif // __TTAUDIOGRAPH_H__
