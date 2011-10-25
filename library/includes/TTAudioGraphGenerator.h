/* 
 * AudioGraph Audio Graph Layer for Jamoma DSP
 * Creates a wrapper for TTAudioObjects that can be used to build an audio processing graph.
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TTAUDIOGRAPH_GENERATOR_H__
#define __TTAUDIOGRAPH_GENERATOR_H__

#include "TTAudioGraph.h"


/******************************************************************************************/

/**	TTAudioGraphSource is a very simple audio object that holds a signal from TTBlue
 that can be used by a TTAudioGraph graph.		*/
class TTAUDIOGRAPH_EXPORT TTAudioGraphGenerator : public TTAudioObject
{
	TTCLASS_SETUP(TTAudioGraphGenerator)

	TTUInt16	mVectorSize;
	
	TTErr setVectorSize(const TTValue& newVectorSize);
	TTErr updateMaxNumChannels(const TTValue& oldMaxNumChannels);
	TTErr updateSampleRate(const TTValue& oldSampleRate);
	
public:
	TTAudioSignalPtr		mBuffer;		///< storage for the audioSignal that we provide

	/**	A standard audio processing method as used by TTBlue objects.
		@param	inputs	unused.				*/
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);	
	
	virtual TTErr test(TTValue& returnedTestInfo);
};

typedef TTAudioGraphGenerator*	TTAudioGraphGeneratorPtr;


#endif // __TTAUDIOGRAPH_GENERATOR_H__
