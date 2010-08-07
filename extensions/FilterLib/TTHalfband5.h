/* 
 * 5-Pole Halfband filter built up from a 2-path allpass structure
 * Copyright © 2010, Tim Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_HALFBAND5_H__
#define __TT_HALFBAND5_H__

#include "TTDSP.h"
#include "TTAllpass1a.h"
#include "TTAllpass1b.h"


/**	A second-order building-block allpass filter.
	Based on Multirate Signal Processing for Communication Systems, Chapter 10, Figure 42.
 
	2010-08-03: testing in msp, this filter produces the same amplitude response as the first-order butterworth filter
				when set to a cf of 11025 Hz, but this filter uses roughly double the amount of cpu.
				in theory, however, this filter should provide roughly linear phase response, unlike the butterworth filter.
				but how do we test that?
 */
class TTHalfband5 : TTAudioObject {
	TTCLASS_SETUP(TTHalfband5)

	TTAllpass1b*	mF0;		///< filter0 (in the upper path)
	TTAllpass1b*	mF1;		///< filter1 (in the lower path, second block)
	TTAllpass1a*	mDelay;		///< delay   (in the lower path, first block)
	TTFloat64		mA0;		///< coefficient for f0
	TTFloat64		mA1;		///< coefficient for f1
	
	TTSymbolPtr		mMode;		///< Attribute: lowpass or highpass
		
	// Notifications
	TTErr updateMaxNumChannels(const TTValue& oldMaxNumChannels);

	// Zero filter history
	TTErr Clear();
	
	// attribute accessor
	TTErr setMode(const TTValue& newValue);
	TTErr setA0(const TTValue& newValue);
	TTErr setA1(const TTValue& newValue);

	// Do the processing
	TTErr processLowpass(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	TTErr processHighpass(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

public:
	TTErr calculateLowpass(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel=0);
	TTErr calculateHighpass(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel=0);
};


#endif // __TT_HALFBAND5_H__
