/* 
 * 33-Pole Halfband filter built up from a 2-path allpass structure
 * Copyright © 2010, Tim Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_LINEARHALFBAND33_H__
#define __TT_LINEARHALFBAND33_H__

#include "TTDSP.h"
#include "TTAllpass1a.h"
#include "TTAllpass1b.h"
#include "TTAllpass2b.h"
#include "TTDelay.h"


/**	A 33-pole halfband lowpass/highpass filter built-up from allpass building blocks.
	Based on Multirate Signal Processing for Communication Systems, Chapter 10, Page 20.
 
	Same magnitude response with respect to frequency as TTHalfband9, but with nearly linear
	phase response.
 */
class TTHalfbandLinear33 : TTAudioObject {
	TTCLASS_SETUP(TTHalfbandLinear33)

	TTDelay*		mP0Delay;	///< path0, pure delay, 16 samples
	
	TTAllpass1a*	mP1Delay;	///< path1
	TTAllpass1b*	mF0;		///< path1
	TTAllpass1b*	mF1;		///< path1
	TTAllpass2b*	mF2;		///< path1
	TTAllpass2b*	mF3;		///< path1
	TTAllpass2b*	mF4;		///< path1
	
	TTSymbolPtr		mMode;		///< Attribute: lowpass or highpass
		
	// Notifications
	TTErr updateMaxNumChannels(const TTValue& oldMaxNumChannels);

	// Zero filter history
	TTErr Clear();
	
	// Attributes
	TTErr setMode(const TTValue& newValue);

	// Do the processing
	TTErr processLowpass(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	TTErr processHighpass(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

	inline void filterKernel(const TTFloat64& input, TTFloat64& outputPath0, TTFloat64& outputPath1, TTPtrSizedInt channel);
	
public:
	TTErr calculateLowpass(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel=0);
	TTErr calculateHighpass(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel=0);
};


#endif // __TT_LINEARHALFBAND33_H__
