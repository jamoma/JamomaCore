/* 
 * 5th-order lowpass/highpass filter built up from a 2-path allpass structure
 * Copyright © 2010, Tim Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_MIRROR5_H__
#define __TT_MIRROR5_H__

#include "TTDSP.h"
#include "TTAllpass1a.h"
#include "TTAllpass2a.h"


/**	A 5th-order lowpass/highpass filter with arbitrary Fc built-up from allpass building blocks.
	Based on Multirate Signal Processing for Communication Systems, Chapter 10, Page 31.
 */
class TTMirror5 : TTAudioObject {
	TTCLASS_SETUP(TTMirror5)

	TTAllpass2a*	mF0;		///< filter0 (in the upper path)
	TTAllpass1a*	mF1;		///< filter1 (in the lower path, first block)
	TTAllpass2a*	mF2;		///< filter2 (in the lower path, second block)
	TTFloat64		mFrequency;	///< attribute: in hertz
	TTSymbolPtr		mMode;		///< attribute: lowpass or highpass
		
	// Notifications
	TTErr updateMaxNumChannels(const TTValue& oldMaxNumChannels, TTValue&);

	// Zero filter history
	TTErr clear();
	
	// attribute accessor
	TTErr setMode(const TTValue& newValue);
	TTErr setFrequency(const TTValue& newValue);

	inline void filterKernel(const TTFloat64& input, TTFloat64& outputPath0, TTFloat64& outputPath1, TTPtrSizedInt channel);

	// Do the processing
	TTErr processLowpass(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	TTErr processHighpass(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

public:
	TTErr calculateLowpass(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel=0);
	TTErr calculateHighpass(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel=0);
};


#endif // __TT_MIRROR5_H__
