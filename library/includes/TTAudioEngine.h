/* 
 * TTBlue Audio Engine
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_AUDIOENGINE_H__
#define __TT_AUDIOENGINE_H__

#include "TTDSP.h"
#include "TTAudioSignal.h"
#include "portaudio.h"


/**	TTAudioEngine is a class that is used to drive realtime audio and scheduling operations in the TTBlue environment.
	It is currently implemented as a wrapper around PortAudio.	
 
 
 QUESTIONS
 - should this be a singleton, like the environment object?
 - how do we properly clean-up the environment from something like Max?  I guess we need a quittask?
 
 
 THOUGHTS
 - a TTAudioOutput class will work by writing to the TTAudioEngine's output buffer.
 - likewise a TTAudioInput class will work by retrieving from the TTAudioEngine's input buffer.
 - the scheduler, and others like the Lydbaer output class, will subscribe to this class for notifications on each call from PortAudio.
 
 */
class TTDSP_EXPORT TTAudioEngine : public TTObject {
	TTCLASS_SETUP(TTAudioEngine)
	
	TTUInt16			mNumInputChannels;
	TTUInt16			mNumOutputChannels;
	TTUInt16			mVectorSize;			///< framesPerBuffer
	TTUInt32			mSampleRate;
    PaStream*			mStream;
	TTListPtr			mCallbackObservers;
	TTSymbolPtr			mInputDevice;
	TTSymbolPtr			mOutputDevice;
	const PaDeviceInfo*	mInputDeviceInfo;
	const PaDeviceInfo*	mOutputDeviceInfo;
	TTInt16				mInputDeviceIndex;
	TTInt16				mOutputDeviceIndex;
	TTBoolean			mIsRunning;
public:
	TTAudioSignalPtr	mInputBuffer;
	TTAudioSignalPtr	mOutputBuffer;

public:
	// we are a singleton, so this is how we work with the lifecycle...
	static TTObjectPtr	sSingletonInstance;
	static TTObjectPtr create();
	static TTErr destroy();	
	
	TTErr initStream();
	
	TTErr start();
	TTErr stop();
	
	TTErr getCpuLoad(const TTValue& unusedInput, TTValue& returnedValue);
	
	TTErr getAvailableInputDeviceNames(const TTValue& unusedInput, TTValue& returnedDeviceNames);
	TTErr getAvailableOutputDeviceNames(const TTValue& unusedInput, TTValue& returnedDeviceNames);
	TTAudioSignalPtr TTAudioEngineGetInputSignalReference();
	TTAudioSignalPtr TTAudioEngineGetOutputSignalReference();

	// Attribute Accessors
	TTErr setInputDevice(TTValue& newDeviceName);
	TTErr setOutputDevice(TTValue& newDeviceName);
	TTErr setVectorSize(TTValue& newVectorSize);
	TTErr setSampleRate(TTValue& newSampleRate);
	
	TTErr addCallbackObserver(const TTValue& objectToReceiveNotifications, TTValue& unusedOutput);
	TTErr removeCallbackObserver(const TTValue& objectCurrentlyReceivingNotifications, TTValue& unusedOutput);
	
	/**	This is called repeatedly by PortAudio every time a new vector of audio is needed.	*/
	TTInt32 callback(const TTFloat32*					input, 
					 TTFloat32*							output, 
					 TTUInt32							frameCount, 
					 const PaStreamCallbackTimeInfo*	timeInfo, 
					 PaStreamCallbackFlags				statusFlags);	
};

typedef TTAudioEngine* TTAudioEnginePtr;




/** A C-function used for the callback from PortAudio.  
	This simply passes the call to the callback method in the TTAudioEngine object.		*/
int TTAudioEngineStreamCallback(const void*						input,
								void*							output,
								unsigned long					frameCount,
								const PaStreamCallbackTimeInfo*	timeInfo,
								PaStreamCallbackFlags			statusFlags,
								void*							userData ) ;



#endif // __TT_AUDIOENGINE_H__

