/** @file
 *
 * @ingroup audioGraphLibrary
 *
 * @brief Defines output interface at the bottom of an AudioGraph
 *
 * @details TTAudioGraphOutput is an audio object that serves as the destination and master (terminal obejct or sink) for a #TTAudioGraph graph. In Jamoma AudioGraph audio processing is driven from a from a ‘terminal object’ or ‘sink’ at the bottom of the chain.
 * This strategy for processing an audio graph is known as the ‘pull’ method.
 * Typically sinks may be used for audio output, recording to disk, or for monitoring purposes.
 * Sinks may have other #TTAudioGraphObjects connected upstream, but can not be connected to further downstream TTAudioGraphObjects.
 *
 * @authors Timothy Place, Trond Lossius
 *
 * @copyright Copyright © 2010, Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#ifndef __TTAUDIOGRAPH_OUTPUT_H__
#define __TTAUDIOGRAPH_OUTPUT_H__

#include "TTAudioGraph.h"


/******************************************************************************************/

/**	TTAudioGraphOutput is an audio object that serves as the destination and master for a TTAudioGraph graph.		*/
class TTAUDIOGRAPH_EXPORT TTAudioGraphOutput : public TTAudioObjectBase
{
	TTCLASS_SETUP(TTAudioGraphOutput)

public:
	TTObjectBasePtr				mAudioEngine;	///< The audio engine that signals are output to.
	TTAudioSignalPtr			placeHolder;	///< An unused audio signal that we pass
	TTAudioGraphObjectBasePtr	owner;			///< The owning AudioGraph instance
	TTValuePtr					me;
	TTAudioGraphPreprocessData	mInitData;
	TTSymbol					mDevice;		///< Name of the audio interface
	TTUInt64					mSampleStamp;	///< The current time in samples
	
	/** Start audio processing.
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr start();
	
	
	/** Stop audio processing.
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr stop();
	
	/** This method is called by the audio engine every time a new vector of output is required. 
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr audioEngineWillProcess();
	
	
	/**
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr setOwner(TTValue& newOwner, TTValue&);

	
	/** Get a list of available audio devices.
	 @param returnedDeviceNames	Used to return a list of available devices.
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr getAvailableDeviceNames(const TTValue&, TTValue& returnedDeviceNames);

	
	/** Get current CPU load for the system, monitoring how demanding current processing is on the processor.
	 @param returnedValue		Used to return current CPU load in percents.
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr getCpuLoad(const TTValue&, TTValue& returnedValue);
	
	
	// Attribute Accessors
	
	/** Set sample rate.
	 @param newValue			The new value for sample rate.
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr setSampleRate(const TTValue& newValue);
	
	
	/** Get current sample rate.
	 @param returnedValue		Used to return current sample rate.
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr getSampleRate(TTValue& returnedValue);
	
	
	/** Set vector size.
	 @param						The new vector size.
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr setVectorSize(const TTValue& newValue);
	
	
	/** Get current vector size
	 @param returnedValue		Used to return the current vector size.
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr getVectorSize(TTValue& returnedValue);
	
	
	/** Set what audio output device to use.
	 @param newValue			The new audio output device to use.
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr setDevice(const TTValue& newValue);
	
	
	/** Get the current audio output device.
	 @parsam returnedValue		Used to return what audio output device is currently being used.
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr getDevice(TTValue& returnedValue);
	
	
	/**	A standard audio processing method as used by Jamoma DSP objects.
	 @param	outputs				Unused.
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);	
};

/** A pointer to a #TTAudioGraphOutput.
 @ingroup typedefs
 */
typedef TTAudioGraphOutput* TTAudioGraphOutputPtr;


#endif // __TTAUDIOGRAPH_OUTPUT_H__
