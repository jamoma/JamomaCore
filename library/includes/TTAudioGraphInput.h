/** @file
 *
 * @ingroup audioGraphLibrary
 *
 * @brief TTAudioGraphInput is an audio object functioning as a source at the top of the #TTAudioGraph graph, providing sound signals to the graph for further downstream processing.
 *
 * @details In Jamoma AudioGraph audio processing is driven from a from a ‘terminal object’ or ‘sink’ at the bottom of the chain.
 * Hence TTAudioGraphInput objects are not driving the audio graph processing, they simply provides audio signals for further downstream processing
 * For example sources may provide audio input tio the graph from the hosting environment, read sound frok disk or be used for sound synthesis.
 * Sources may have other #TTAudioGraphObjects connected downstream, but can not be connected to further upstream TTAudioGraphObjects.
 *
 * @authors Timothy Place, Trond Lossius
 *
 * @copyright Copyright © 2010, Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#ifndef __TTAUDIOGRAPH_INPUT_H__
#define __TTAUDIOGRAPH_INPUT_H__

#include "TTAudioGraph.h"


/******************************************************************************************/

/**	TTAudioGraphOutput is an audio object that serves as the destination and master for a TTAudioGraph graph.		
 */
class TTAUDIOGRAPH_EXPORT TTAudioGraphInput : public TTAudioObject
{
	TTCLASS_SETUP(TTAudioGraphInput)

public:
	TTObjectPtr				mAudioEngine;
	TTAudioSignalPtr		mBuffer;			///< an unused audio signal that we pass
	
	TTErr start();
	TTErr stop();
	TTErr getAvailableDeviceNames(const TTValue&, TTValue& returnedDeviceNames);
	
	// Attribute Accessors
	TTErr setSampleRate(const TTValue& newValue);
	TTErr getSampleRate(TTValue& returnedValue);
	TTErr setVectorSize(const TTValue& newValue);
	TTErr getVectorSize(TTValue& returnedValue);	
	TTErr setDevice(const TTValue& newValue);
	TTErr getDevice(TTValue& returnedValue);
	
	/**	A standard audio processing method as used by TTBlue objects.
		@param	outputs	unused.		*/
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);	
};

typedef TTAudioGraphInput* TTAudioGraphInputPtr;


#endif // __TTAUDIOGRAPH_INPUT_H__
