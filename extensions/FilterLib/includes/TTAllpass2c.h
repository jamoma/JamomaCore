/* 
 * Second-Order Allpass Filter Object for Jamoma DSP
 * Copyright © 2010, Tim Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_ALLPASS2C_H__
#define __TT_ALLPASS2C_H__

#include "TTDSP.h"


/**	A second-order building-block allpass filter.
	Essentially the same as TTAllpass2a, but with some signs flipped.
	Based on Multirate Signal Processing for Communication Systems, Chapter 10, Figure 43. 
 
	difference equation:
		y(n) = -e_2 x(n) - e_1 x(n-1) - x(n-2  -  e_1 y(n-1) - e_2 y(n-2)

	transfer function:
				-e_2  -  e_1 Z^(-1)  -  Z^(-2)
		H(Z) = ---------------------------------
				1  +  e_1 Z^(-1)  +  e_2 Z^(-2)
 */
class TTAllpass2c : public TTAudioObject {
	TTCLASS_SETUP(TTAllpass2c)
	
	TTFloat64			mE1;	///< first coefficient
	TTFloat64			mE2;	///< second coefficient
	
	TTSampleVector		mX1;	///< previous input sample (n-1) for each channel
	TTSampleVector		mX2;	///< previous input sample (n-2) for each channel
	TTSampleVector		mY1;	///< previous output sample (n-1) for each channel
	TTSampleVector		mY2;	///< previous output sample (n-2) for each channel
	
	// Notifications
	TTErr updateMaxNumChannels(const TTValue& oldMaxNumChannels, TTValue&);
	
	// Zero filter history
	TTErr clear();
	
	// Do the processing
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	
public:
	TTErr calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel=0);
};


#endif // __TT_ALLPASS2A_H__
