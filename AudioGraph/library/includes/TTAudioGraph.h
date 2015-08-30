/** @file
 *
 * @ingroup audioGraphLibrary
 *
 * @brief Registers classes for the primary AudioGraph library
 *
 * @details Creates a wrapper for TTAudioObjectBases that can be used to build an audio processing graph.
 *
 * @authors Timothy Place, Trond Lossius
 *
 * @copyright Copyright © 2008, Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#ifndef __TTAUDIOGRAPH_H__
#define __TTAUDIOGRAPH_H__

#include "TTDSP.h"
#include "TTGraph.h"

// Platform-specific definitions
#ifdef TT_PLATFORM_WIN
	#include "windows.h"
	#if defined( TTAUDIOGRAPH_EXPORTS )
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

//! [doxygenAppendixC_enumExample]
/** \ingroup enums
 Enumeration recording the audio processing state of each node of the graph.
*/
enum TTAudioGraphProcessStatus {
	kTTAudioGraphProcessUnknown = 0,		///< The current processing status of the node is unknown.
	kTTAudioGraphProcessNotStarted,			///< Audio processing has not yet started for this node.
	kTTAudioGraphProcessingCurrently,		///< This node is currently processing audio.
	kTTAudioGraphProcessComplete			///< This node has completed processing audio for now.
};
//! [doxygenAppendixC_enumExample]

/** \ingroup enums
 Enumeration recording the state of each node when the graph is asked to describe itself.
 */
enum TTAudioGraphDescriptionStatus {
	kTTAudioGraphDescriptionUnknown = 0,	///< The current status of the node is unknown with respect to describing itself as a member of a graph.
	kTTAudioGraphDescriptionNotStarted,		///< The process of describing this node in the graph has not yet begun.
	kTTAudioGraphDescriptionHasStarted,		///< The process of describing this node in the graph has begun.
};

//! [doxygenAppendixC_bitmaskExample]
/** \ingroup bitmasks
 Enumeration flags signaling specific properties of this node.
 Values are used as a bitmask.
 */
enum TTAudioGraphFlags {
	kTTAudioGraphFlagsNone = 0x00,
	kTTAudioGraphProcessor = 0x01,			///< This node is an audio effect processor. It expects audio input that will be processed.
	kTTAudioGraphGenerator = 0x02,			///< This object is an audio generator, and do not expect audio input.
	kTTAudioGraphNonAdapting = 0x04,		///< This object does not adapt its number of output channels to the number of input channels
};
//! [doxygenAppendixC_bitmaskExample]


/** Data passed to all nodes in the graph when the graph is performing it's pre-process
 */
class TTAudioGraphPreprocessData {
public:
	TTUInt16 vectorSize;	///< The global/recommended/initial vectorSize (which can be overriden during process)
};


class	TTAudioGraphObjectBase;
typedef TTAudioGraphObjectBase*					TTAudioGraphObjectBasePtr;
typedef std::vector<TTAudioGraphObjectBasePtr>	TTAudioGraphObjectBaseVector;
typedef TTAudioGraphObjectBaseVector::iterator	TTAudioGraphObjectBaseIter;

class	TTAudioGraphInlet;
//typedef TTAudioGraphInlet*					TTAudioGraphInletPtr;
typedef std::vector<TTAudioGraphInlet>		TTAudioGraphInletVector;
typedef TTAudioGraphInletVector::iterator	TTAudioGraphInletIter;

class	TTAudioGraphOutlet;
//typedef TTAudioGraphOutlet*					TTAudioGraphOutletPtr;
typedef std::vector<TTAudioGraphOutlet>		TTAudioGraphOutletVector;
typedef TTAudioGraphOutletVector::iterator	TTAudioGraphOutletIter;

#include "TTAudioGraphDescription.h"

/******************************************************************************************/

extern "C" TTAUDIOGRAPH_EXPORT void TTAudioGraphInit(void);


#endif // __TTAUDIOGRAPH_H__
