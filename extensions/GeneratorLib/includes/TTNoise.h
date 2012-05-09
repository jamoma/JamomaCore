/*
 * TTBlue Noise Generator
 * Copyright © 2003, Timothy Place
 *
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html
 */

#ifndef __TT_NOISE_H__
#define __TT_NOISE_H__

#include "TTDSP.h"

// Use the following to use the mt algorithm, otherwise compile with built-in (but less capable) algorithm
#define USE_MERSENNE_TWISTER_ALGORITHM

#ifdef USE_MERSENNE_TWISTER_ALGORITHM
#include "MersenneTwister.h"
#endif

/**	Noise Generator */
class TTNoise : TTAudioObject {
	TTCLASS_SETUP(TTNoise)

#ifdef USE_MERSENNE_TWISTER_ALGORITHM
	MTRand				mTwister;	///< class implementing Mersenne Twister algorithm
	TTFloat64			mMean;		///< mean value for gauss distribution process method
	TTFloat64			mStd;		///< Standard deviation value for gauss distribution process method	
#endif
	TTSymbol*			mMode;		///< Attribute: what color is the noise?
	TTFloat64			mGain;		// gain stage
	TTUInt16			mNumChannels;		///< sets the number of noise channels
	TTUInt32			accum;		///< accumulator for the noise generation
	TTSampleVector		mb0;						
	TTSampleVector		mb1;						
	TTSampleVector		mb2;						
	TTSampleVector		mb3;						
	TTSampleVector		mb4;						
	TTSampleVector		mb5;	
	TTSampleVector		mb6;

	/**	Audio Processing Method	*/
	TTErr processWhiteNoise(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
#ifdef USE_MERSENNE_TWISTER_ALGORITHM	
	/**	Audio Processing Method	*/
	TTErr processGauss(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
#endif
	/**	Audio Processing Method	*/
	TTErr processPinkNoise(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

	/**	Audio Processing Method	*/
	TTErr processBrownNoise(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

	/**	Audio Processing Method	*/
	TTErr processBlueNoise(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

	/**	Attribute Setter. */
	TTErr setMode(const TTValue& newMode);
    TTErr setGain(const TTValue& newValue); 
	TTErr setNumChannels(const TTUInt16 newNumChannels);
	TTErr getGain(TTValue& returnedValue);
	TTErr Clear();
};


#endif // __TT_NOISE_H__
