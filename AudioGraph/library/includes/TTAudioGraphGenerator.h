/** @file
 *
 * @ingroup audioGraphLibrary
 *
 * @brief Generates the AudioGraph structure
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

/**	TTAudioGraphSource is a very simple audio object that holds a signal from Jamoma DSP
 that can be used by a TTAudioGraph graph.		*/
class TTAUDIOGRAPH_EXPORT TTAudioGraphGenerator : public TTAudioObjectBase
{
	TTCLASS_SETUP(TTAudioGraphGenerator)

protected:

	TTUInt16	mVectorSize;
	
	
	/** Set the vector size for audio processing.
	 @param newVectorSize					The new vector size.
	 @return								#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr setVectorSize(const TTValue& newVectorSize);
	
	
	/** Update the maximum number of channels to process.
	 @param oldMaxNumChannels				TODO: This doesn't seem to be used
	 @return								#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr updateMaxNumChannels(const TTValue& oldMaxNumChannels, TTValue&);
	
	
	
	/** Update the sample rate.
	 @param oldSampleRate					TODO: This doesn't seem to be used.
	 @return								#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr updateSampleRate(const TTValue& oldSampleRate, TTValue&);
	
public:
	TTAudioSignalPtr		mBuffer;		///< Storage for the audioSignal that we provide

	
	/**	A standard audio processing method as used by Jamoma DSP objects.
	 @param	inputs							Unused.
	 @param outputs							
	 @return								#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);	
	
	
	/** AudioGraphGenerator Unit test.
	 @param returnedTestInfo				The outcome from the performed unit test.
	 @return								#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	//virtual TTErr test(TTValue& returnedTestInfo);
	
};


/** Pointer to a TTAudioGraphGenerator.
 @ingroup typedefs
 */
typedef TTAudioGraphGenerator*	TTAudioGraphGeneratorPtr;


#endif // __TTAUDIOGRAPH_GENERATOR_H__
