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
	
	TTErr setShape(const TTValue& newValue);
    TTErr setStrength(const TTValue& newValue);	
	/**	A standard audio processing method as used by TTBlue objects.	*/
	TTErr processAudioSin(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	TTErr processAudioAtan(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	TTErr processAudioPoly1(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	TTErr processAudioSigmoid(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	/**	Unit testing.	*/
	//TTErr test(TTValue& returnedTestInfo);
};


#endif // __TTWAVESHAPER_H_