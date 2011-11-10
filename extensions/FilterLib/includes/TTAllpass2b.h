/* 
 * Second-Order Allpass Filter Object for Jamoma DSP
 * Copyright © 2010, Tim Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_ALLPASS2B_H__
#define __TT_ALLPASS2B_H__

#include "TTDSP.h"


/**	A second-order Z^2 building-block allpass filter.
	This allpass filter uses a fixed delay of 2 samples (M=2).
*/
class TTAllpass2b : public TTAudioObject {
	TTCLASS_SETUP(TTAllpass2b)

	TTFloat64			mC1;	///< first coefficient
	TTFloat64			mC2;	///< second coefficient

	TTSampleVector		mX1;	///< previous input sample (n-1) for each channel
	TTSampleVector		mX2;	///< previous input sample (n-2) for each channel
	TTSampleVector		mX3;	///< previous input sample (n-3) for each channel
	TTSampleVector		mX4;	///< previous input sample (n-4) for each channel
	TTSampleVector		mY1;	///< previous output sample (n-1) for each channel
	TTSampleVector		mY2;	///< previous output sample (n-2) for each channel
	TTSampleVector		mY3;	///< previous output sample (n-3) for each channel
	TTSampleVector		mY4;	///< previous output sample (n-4) for each channel
	
	// Notifications
	TTErr updateMaxNumChannels(const TTValue& oldMaxNumChannels, TTValue&);

	// Zero filter history
	TTErr clear();
	
	// Do the processing
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

public:
	TTErr calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel=0);
};


#endif // __TT_ALLPASS2B_H__
