/* 
 * 3rd-order up/down-sampling filter built up from a 2-path allpass structure
 * Copyright © 2010, Tim Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_RESAMPLE3_H__
#define __TT_RESAMPLE3_H__

#include "TTDSP.h"
#include "TTAllpass1a.h"
#include "TTAllpass1b.h"


/**	A 1st-order up/down-sampling filter built-up from allpass building blocks.
	Based on Multirate Signal Processing for Communication Systems, Chapter 10.
 */
class TTHalfband3 : TTAudioObject {
	TTCLASS_SETUP(TTHalfband3)

	TTAllpass1b*	mF0;		///< path0 (used by lowpass/highpass modes)
	TTAllpass1a*	mDelay;		///< pure delay (used by lowpass/highpass modes)
	TTAllpass1a*	mR0;		///< path 0 (used by resampling modes)
	TTSampleVector	mX1;		///< previous input sample (for each channel)	
	TTSymbolPtr		mMode;		///< Attribute: upsample or downsample
	
	// Notifications
	TTErr updateMaxNumChannels(const TTValue& oldMaxNumChannels, TTValue&);

	// attribute accessor
	TTErr setMode(const TTValue& newValue);

	// Do the processing
	TTErr processLowpass	(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	TTErr processHighpass	(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	TTErr processDownsample	(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	TTErr processUpsample	(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	
public:
	TTErr calculateLowpass		(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel=0);
	TTErr calculateHighpass		(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel=0);
	TTErr calculateDownsample	(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel=0);
	TTErr calculateUpsample		(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel=0);
};


#endif // __TT_RESAMPLE1_H__
