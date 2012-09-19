/* 
 * AudioGraph Audio Graph Layer for Jamoma DSP
 * Creates a wrapper for TTAudioObjects that can be used to build an audio processing graph.
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TTAUDIOGRAPH_OUTPUT_H__
#define __TTAUDIOGRAPH_OUTPUT_H__

#include "TTAudioGraph.h"


/******************************************************************************************/

/**	TTAudioGraphOutput is an audio object that serves as the destination and master for a TTAudioGraph graph.		*/
class TTAUDIOGRAPH_EXPORT TTAudioGraphOutput : public TTAudioObject
{
	TTCLASS_SETUP(TTAudioGraphOutput)

public:
	TTObjectPtr					audioEngine;
	TTAudioSignalPtr			placeHolder;	///< an unused audio signal that we pass
	TTAudioGraphObjectPtr		owner;			///< the owning lydbaer instance
	TTValuePtr					me;
	TTAudioGraphPreprocessData	mInitData;
	TTSymbol					mDevice;		///< name of the audio interface
	
	TTErr start();
	TTErr stop();
	
	/** Called by the audio engine every time a new vector of output is required. */
	TTErr audioEngineWillProcess();
	
	TTErr setOwner(TTValue& newOwner, TTValue&);

	TTErr getAvailableDeviceNames(const TTValue&, TTValue& returnedDeviceNames);

	TTErr getCpuLoad(const TTValue&, TTValue& returnedValue);
	
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

typedef TTAudioGraphOutput* TTAudioGraphOutputPtr;


#endif // __TTAUDIOGRAPH_OUTPUT_H__
