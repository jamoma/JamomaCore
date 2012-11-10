/** @file
 *
 * @ingroup audioGraphLibrary
 *
 * @brief Creates a wrapper for TTAudioObjects that can be used to build an audio processing graph.
 *
 * @details
 *
 * @authors Timothy Place, Trond Lossius
 *
 * @copyright Copyright © 2010, Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
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

protected:

	TTUInt16	mVectorSize;
	
	TTErr setVectorSize(const TTValue& newVectorSize);
	TTErr updateMaxNumChannels(const TTValue& oldMaxNumChannels, TTValue&);
	TTErr updateSampleRate(const TTValue& oldSampleRate, TTValue&);
	
public:
	TTAudioSignalPtr		mBuffer;		///< storage for the audioSignal that we provide

	/**	A standard audio processing method as used by TTBlue objects.
		@param	inputs	unused.				*/
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);	
	
	virtual TTErr test(TTValue& returnedTestInfo);
};

typedef TTAudioGraphGenerator*	TTAudioGraphGeneratorPtr;


#endif // __TTAUDIOGRAPH_GENERATOR_H__
