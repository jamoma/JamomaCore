/** @file
 *
 * @ingroup dspGeneratorLib
 *
 * @brief GeneratorLib: Noise Generator
 *
 * @details
 *
 * @authors Tim Place, Nils Peters, Trond Lossius
 *
 * @copyright Copyright © 2003 by Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#ifndef __TT_NOISE_H__
#define __TT_NOISE_H__

#include "TTDSP.h"

// Use the following to use the mt algorithm, otherwise compile with built-in (but less capable) algorithm
#define USE_MERSENNE_TWISTER_ALGORITHM

#ifdef USE_MERSENNE_TWISTER_ALGORITHM
#include "MersenneTwister.h"
#endif


/**	Noise Generator.
 */
class TTNoise : TTAudioObjectBase {
	TTCLASS_SETUP(TTNoise)

protected:

#ifdef USE_MERSENNE_TWISTER_ALGORITHM
	MTRand				mTwister;	///< Class implementing Mersenne Twister algorithm
	TTFloat64			mMean;		///< Mean value for gauss distribution process method
	TTFloat64			mStd;		///< Standard deviation value for gauss distribution process method	
#endif
	
	TTSymbol			mMode;		///< Attribute: what color is the noise?
	TTFloat64			mGain;		///< Gain stage
	TTUInt16			mNumChannels; ///< Sets the number of noise channels
	TTUInt32			accum;		///< Accumulator for the noise generation
	TTSampleVector		mb0;		///< Internal coefficient used to keep track of past values. Used for some noise algorithms.
	TTSampleVector		mb1;		///< Internal coefficient used to keep track of past values. Used for some noise algorithms.
	TTSampleVector		mb2;		///< Internal coefficient used to keep track of past values. Used for some noise algorithms.
	TTSampleVector		mb3;		///< Internal coefficient used to keep track of past values. Used for some noise algorithms.
	TTSampleVector		mb4;		///< Internal coefficient used to keep track of past values. Used for some noise algorithms.
	TTSampleVector		mb5;		///< Internal coefficient used to keep track of past values. Used for some noise algorithms.
	TTSampleVector		mb6;		///< Internal coefficient used to keep track of past values. Used for some noise algorithms.

	
	/**	Audio processing method generating white noise.
	 @param inputs			The input signal to process.
	 @param outputs			The processed audio signal.
	 @return				#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr processWhiteNoise(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);


#ifdef USE_MERSENNE_TWISTER_ALGORITHM
	/**	Audio processing method using the mersenne twister algorithm for gaussian distribution noise.
	 @param inputs			The input signal to process.
	 @param outputs			The processed audio signal.
	 @return				#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr processGauss(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
#endif

	
	/**	Audio processing method generating pink noise.
	 @param inputs			The input signal to process.
	 @param outputs			The processed audio signal.
	 @return				#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr processPinkNoise(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

	
	/**	Audio processing method generating brown noise.
	 @param inputs			The input signal to process.
	 @param outputs			The processed audio signal.
	 @return				#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr processBrownNoise(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

	
	/**	Audio processing method generating blue noise.
	 @param inputs			The input signal to process.
	 @param outputs			The processed audio signal.
	 @return				#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr processBlueNoise(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

	
	///// Attribute setters /////
	
	/** Set the mode, that is: Set what kind of noise to generate.
	 @param newMode			The noise mode that we want to use.
	 @return				#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr setMode(const TTValue& newMode);
	
	
	/** Set the overall gain of the generated noise signal.
	 @@param newValue		The new value that we want to apply for gain scaling.
	 @return				#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
    TTErr setGain(const TTValue& newValue); 

	
	/** Set the number of channels to process.
	 @param newNumChannels	The number of channels to process.
	 @return				#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr setNumChannels(const TTUInt16 newNumChannels);
	
	
	/** Get the current value used for scaling overall gain level of the generated noise signal.
	 @return				#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr getGain(TTValue& returnedValue);
	
	
	/** Clear past values used internally by various noise generator algorithms.
	 @return				#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr Clear();
};


#endif // __TT_NOISE_H__
