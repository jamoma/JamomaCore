/* 
 * AudioGraph Audio Graph Layer for Jamoma DSP
 * Creates a wrapper for TTAudioObjects that can be used to build an audio processing graph.
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TTAUDIOGRAPH_INPUT_H__
#define __TTAUDIOGRAPH_INPUT_H__

#include "TTAudioGraph.h"


/******************************************************************************************/

/**	TTAudioGraphOutput is an audio object that serves as the destination and master for a TTAudioGraph graph.		*/
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
