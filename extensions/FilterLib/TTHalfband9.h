/* 
 * 9-Pole Halfband filter built up from a 2-path allpass structure
 * Copyright © 2010, Tim Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_HALFBAND9_H__
#define __TT_HALFBAND9_H__

#include "TTDSP.h"
#include "TTAllpass1a.h"
#include "TTAllpass1b.h"


/**	A 9-pole halfband lowpass/highpass filter built-up from allpass building blocks.
	Based on Multirate Signal Processing for Communication Systems, Chapter 10, Page 18.
 
	Passband edge (i.e. Fc or -3db) at Fs/4, and stopband edge (-60db) at Fs*0.284.
 */
class TTHalfband9 : TTAudioObject {
	TTCLASS_SETUP(TTHalfband9)

	TTAllpass1b*	mF0;		///< path0
	TTAllpass1b*	mF2;		///< path0
	
	TTAllpass1b*	mF1;		///< path1
	TTAllpass1b*	mF3;		///< path1
	TTAllpass1a*	mDelay;		///< path1
	
	TTFloat64		mA0;		///< coefficient for f0
	TTFloat64		mA1;		///< coefficient for f1
	TTFloat64		mA2;		///< coefficient for f2
	TTFloat64		mA3;		///< coefficient for f3
	
	TTSymbolPtr		mMode;		///< Attribute: lowpass or highpass
		
	// Notifications
	TTErr updateMaxNumChannels(const TTValue& oldMaxNumChannels);

	// Zero filter history
	TTErr Clear();
	
	// attribute accessor
	TTErr setMode(const TTValue& newValue);
	TTErr setA0(const TTValue& newValue);
	TTErr setA1(const TTValue& newValue);
	TTErr setA2(const TTValue& newValue);
	TTErr setA3(const TTValue& newValue);

	// Do the processing
	TTErr processLowpass(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	TTErr processHighpass(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

	inline void filterKernel(const TTFloat64& input, TTFloat64& outputPath0, TTFloat64& outputPath1, TTPtrSizedInt channel);
	
public:
	TTErr calculateLowpass(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel=0);
	TTErr calculateHighpass(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel=0);
};


#endif // __TT_HALFBAND9_H__
