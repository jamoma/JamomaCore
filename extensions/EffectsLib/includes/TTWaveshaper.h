/* 
 * simple waveshaper
 * Copyright © 2011, Nils Peters
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TTWAVESHAPER_H__
#define __TTWAVESHAPER_H__

#include "TTDSP.h"


/**	TTGain is an exceptionally simple audio processor scales an input audio signal	*/
class TTWaveshaper : public TTAudioObject {
	TTCLASS_SETUP(TTWaveshaper)

	TTFloat64		mStrength, mInvStrength, mSigmoidGainCorrection, mPoly1GainCorrection;
	TTSymbol*		mShape;
	/**	Setter for the shape attribute. */
	TTErr setShape(const TTValue& newValue);
	/**	Setter for the strength attribute. */
    TTErr setStrength(const TTValue& newValue);	
	/**	A standard audio processing method as used by TTBlue objects.	*/
	TTErr processAudioSin(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	TTErr processAudioAtan(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	TTErr processAudioPoly1(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	TTErr processAudioSigmoid(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	/**	Standard single value calculate method as used by DSP objects.	*/
	inline TTErr calculateValueSin(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel);
	inline TTErr calculateValueAtan(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel);
	inline TTErr calculateValuePoly1(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel);
	inline TTErr calculateValueSigmoid(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel);
	/**	Unit testing.	*/
	//TTErr test(TTValue& returnedTestInfo);
};


#endif // __TTWAVESHAPER_H_