/* 
 * TTBlue Audio Engine
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TT_AUDIOENGINE_H__
#define __TT_AUDIOENGINE_H__

#include "TTObject.h"
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
class TTEXPORT TTAudioEngine : public TTObject {
	TTUInt16			numInputChannels;
	TTUInt16			numOutputChannels;
	TTUInt16			vectorSize;			///< framesPerBuffer
	TTUInt32			sampleRate;
    PaStream*			stream;
	TTListPtr			callbackObservers;
	TTSymbolPtr			inputDevice;
	TTSymbolPtr			outputDevice;
	const PaDeviceInfo*	inputDeviceInfo;
	const PaDeviceInfo*	outputDeviceInfo;
	TTInt16				inputDeviceIndex;
	TTInt16				outputDeviceIndex;
	TTBoolean			isRunning;
public:
	TTAudioSignalPtr	inputBuffer;
	TTAudioSignalPtr	outputBuffer;

	

	TTAudioEngine();
	virtual ~TTAudioEngine();
	
	TTErr initStream();
	
	TTErr start();
	TTErr stop();
	
	TTErr getCpuLoad(TTValue& returnedValue);
	
	TTErr getAvailableInputDevices(TTValue& returnedDeviceNames);
	TTErr getAvailableOutputDevices(TTValue& returnedDeviceNames);

	// Attribute Accessors
	TTErr setinputDevice(TTValue& newDeviceName);
	TTErr setoutputDevice(TTValue& newDeviceName);
	TTErr setvectorSize(TTValue& newVectorSize);
	TTErr setsampleRate(TTValue& newSampleRate);
	
	TTErr addCallbackObserver(const TTValue& objectToReceiveNotifications);
	TTErr removeCallbackObserver(const TTValue& objectCurrentlyReceivingNotifications);
	
	/**	This is called repeatedly by PortAudio every time a new vector of audio is needed.	*/
	TTInt32 callback(const TTFloat32*					input, 
					 TTFloat32*							output, 
					 TTUInt32							frameCount, 
					 const PaStreamCallbackTimeInfo*	timeInfo, 
					 PaStreamCallbackFlags				statusFlags);
	
};

typedef TTAudioEngine* TTAudioEnginePtr;



TTErr				TTAudioEngineCreate();
TTErr				TTAudioEngineFree();
TTObjectPtr			TTAudioEngineReference();
TTAudioSignalPtr	TTAudioEngineGetInputSignalReference();
TTAudioSignalPtr	TTAudioEngineGetOutputSignalReference();
TTErr				TTAudioEngineStart();
TTErr				TTAudioEngineStop();


/** A C-function used for the callback from PortAudio.  
	This simply passes the call to the callback method in the TTAudioEngine object.		*/
int TTAudioEngineStreamCallback(const void*						input,
								void*							output,
								unsigned long					frameCount,
								const PaStreamCallbackTimeInfo*	timeInfo,
								PaStreamCallbackFlags			statusFlags,
								void*							userData ) ;



#endif // __TT_AUDIOENGINE_H__

