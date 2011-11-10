/* 
 * 10th-order bandpass/notch filter built up from a 2-path allpass structure
 * Transformed from 5th-order 'Mirror' lowpass filter
 *
 * Copyright © 2010, Tim Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_MIRRORBANDPASS10_H__
#define __TT_MIRRORBANDPASS10_H__

#include "TTDSP.h"
#include "TTAllpass2c.h"
#include "TTAllpass4a.h"


/**	A 10th-order bandpass/notch filter built-up from allpass building blocks.
	Based on Multirate Signal Processing for Communication Systems, Chapter 10, Page 33.
 */
class TTMirrorBandpass10 : TTAudioObject {
	TTCLASS_SETUP(TTMirrorBandpass10)

	TTAllpass4a*	mF0;				///< filter0 (in the upper path)
	TTAllpass2c*	mF1;				///< filter1 (in the lower path, first block)
	TTAllpass4a*	mF2;				///< filter2 (in the lower path, second block)
	TTFloat64		mFrequency;			///< attribute: in hertz
	TTSymbolPtr		mMode;				///< attribute: lowpass or highpass
	TTFloat64		mBandwidth;			///< attribute: in hertz
	TTFloat64		mQ;					///< attribute: bandwidth expressed as Q
	TTBoolean		mBandwidthSetWithQ;	///< flag to tell us whether to adjust bandwidth when frequency changes
		
	// Notifications
	TTErr updateMaxNumChannels(const TTValue& oldMaxNumChannels, TTValue&);

	// Zero filter history
	TTErr clear();
	
	// attribute accessor
	TTErr setMode(const TTValue& newValue);
	TTErr setFrequency(const TTValue& newValue);
	TTErr setBandwidth(const TTValue& newValue);
	TTErr setQ(const TTValue& newValue);
	
	TTErr calculateCoefficients(void);
	inline void filterKernel(const TTFloat64& input, TTFloat64& outputPath0, TTFloat64& outputPath1, TTPtrSizedInt channel);

	// Do the processing
	TTErr processBandpass(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	TTErr processNotch(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

public:
	TTErr calculateBandpass(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel=0);
	TTErr calculateNotch(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel=0);
};


#endif // __TT_MIRRORBANDPASS10_H__
