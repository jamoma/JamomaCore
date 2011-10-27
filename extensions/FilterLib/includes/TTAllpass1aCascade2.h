/* 
 * First-Order Allpass Filter Cascade for Jamoma DSP
 * Copyright © 2010, Tim Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_ALLPASS1A_CASCADE2_H__
#define __TT_ALLPASS1A_CASCADE2_H__

#include "TTDSP.h"


/**	A first-order allpass filter cascade. */
class TTAllpass1aCascade2 : public TTAudioObject {
	TTCLASS_SETUP(TTAllpass1aCascade2)

	TTFloat64			mAlpha0;	///< coefficient for filter 0
	TTFloat64			mAlpha1;	///< coefficient for filter 1
	TTSampleVector		mX1;		///< previous input sample (n-1) for each channel of the cascade
	TTSampleVector		mD2;		///< previous output sample for each channel of the first stage, and previous input sample for each channel of the second stage
	TTSampleVector		mY1;		///< previous output sample (n-1) for each channel of the cascade
	
	// Notifications
	TTErr updateMaxNumChannels(const TTValue& oldMaxNumChannels, TTValue&);

	// Zero filter history
	TTErr clear();
	
	// Do the processing
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

public:
	TTErr calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel=0);
};


#endif // __TT_ALLPASS1A_CASCADE2_H__
