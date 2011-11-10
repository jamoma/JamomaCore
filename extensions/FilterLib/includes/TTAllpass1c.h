/* 
 * First-Order Allpass Filter Object for Jamoma DSP
 * Copyright © 2010, Tim Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_ALLPASS1C_H__
#define __TT_ALLPASS1C_H__

#include "TTDSP.h"


/**	A first-order building-block allpass filter.
	This allpass filter uses a fixed delay of 1 sample. */
class TTAllpass1c : public TTAudioObject {
	TTCLASS_SETUP(TTAllpass1c)

	TTFloat64			mAlpha;				///< single coefficient for the first-order allpass
	TTSampleVector		mX1;				///< previous input sample (n-1) for each channel
	TTSampleVector		mY1;				///< previous output sample (n-1) for each channel
	
	// Notifications
	TTErr updateMaxNumChannels(const TTValue& oldMaxNumChannels, TTValue&);

	// Zero filter history
	TTErr clear();
	
	// Do the processing
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

public:
	TTErr calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel=0);
};


#endif // __TT_ALLPASS1C_H__
