/** @file
 *
 * @ingroup audioGraphLibrary
 *
 * @brief TTAudioGraphOutput is an audio object that serves as the destination and master (terminal obejct or sink) for a #TTAudioGraph graph.
 *
 * @details In Jamoma AudioGraph audio processing is driven from a from a ‘terminal object’ or ‘sink’ at the bottom of the chain.
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
class TTAUDIOGRAPH_EXPORT TTAudioGraphOutput : public TTAudioObject
{
	TTCLASS_SETUP(TTAudioGraphOutput)

public:
	TTObjectPtr					audioEngine;
	TTAudioSignalPtr			placeHolder;	///< An unused audio signal that we pass
	TTAudioGraphObjectPtr		owner;			///< The owning AudioGraph instance
	TTValuePtr					me;
	TTAudioGraphPreprocessData	mInitData;
	TTSymbol					mDevice;		///< Name of the audio interface
	
	TTErr start();
	TTErr stop();
	
	/** Called by the audio engine every time a new vector of output is required. 
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr audioEngineWillProcess();
	
	
	/**
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr setOwner(TTValue& newOwner, TTValue&);

	
	/**
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr getAvailableDeviceNames(const TTValue&, TTValue& returnedDeviceNames);

	
	/**
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr getCpuLoad(const TTValue&, TTValue& returnedValue);
	
	
	// Attribute Accessors
	
	/** 
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr setSampleRate(const TTValue& newValue);
	
	
	/**
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr getSampleRate(TTValue& returnedValue);
	
	
	/**
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr setVectorSize(const TTValue& newValue);
	
	
	/**
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr getVectorSize(TTValue& returnedValue);
	
	
	/**
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr setDevice(const TTValue& newValue);
	
	
	/**
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
