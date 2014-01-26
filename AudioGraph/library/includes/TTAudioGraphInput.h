/** @file
 *
 * @ingroup audioGraphLibrary
 *
 * @brief Defines input interface at the top of an AudioGraph
 *
 * @details TTAudioGraphInput is an audio object functioning as a source at the top of the #TTAudioGraph graph, providing sound signals from an external audio input device to the graph for further downstream processing. In Jamoma AudioGraph audio processing is driven from a from a ‘terminal object’ or ‘sink’ at the bottom of the chain.
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
class TTAUDIOGRAPH_EXPORT TTAudioGraphInput : public TTAudioObjectBase
{
	TTCLASS_SETUP(TTAudioGraphInput)

public:
	TTObjectBasePtr			mAudioEngine;		///< Instance of TTAudioEngine class
	TTAudioSignalPtr		mBuffer;			///< An unused audio signal that we pass.
	
	
	/** Start audio processing.
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr start();
	
	
	/** Stop audio processing.
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr stop();
	
	
	/** Get the name of available devices.
	 @param returnedDeviceNames	An array of names of available devices.
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr getAvailableDeviceNames(const TTValue&, TTValue& returnedDeviceNames);
	
	// Attribute Accessors
	
	/** Set sample rate.
	 @param newValue			The new sampe rate to be set.
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr setSampleRate(const TTValue& newValue);
	
	
	/** Get sample rate.
	 @param returnedValue		The current sample rate.
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr getSampleRate(TTValue& returnedValue);
	
	
	/** Set the vector size for audio processing.
	 @param newValue			The new vector size.
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr setVectorSize(const TTValue& newValue);
	
	
	/** Get current vector size.
	 @param returnedValue		The current vector size.
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr getVectorSize(TTValue& returnedValue);
	
	
	/** Set what device to use for audio input.
	 @param newValue			The input device to use.
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr setDevice(const TTValue& newValue);
	
	
	/** Get current audio input device.
	 @param returnedValue		The current audio input device.
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr getDevice(TTValue& returnedValue);
	
	
	/**	A standard audio processing method as used by Jamoma DSP objects.
	 @param	outputs	unused.
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);	
};


/** A pointer to #TTAudioGraphInput.
 @ingroup typedefs
 */
typedef TTAudioGraphInput* TTAudioGraphInputPtr;


#endif // __TTAUDIOGRAPH_INPUT_H__
