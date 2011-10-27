/* 
 * TTBlue State Variable Filter Object
 * Copyright © 2008, Tim Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_SVF_H__
#define __TT_SVF_H__

#include "TTDSP.h"


/**	A State Variable Filter object.
	One of the features of a state variable filter is that it can provide all 4 filter types 
	simultaneously from the same algorithm.
	
	This implementation takes a different approach which requires the selection of one of the types.
	At some point in the future we could add a mode to get all 4 signals out of the output...
 */
class TTSvf : public TTAudioObject {
	TTCLASS_SETUP(TTSvf)

	TTFloat64			mFrequency;			///< filter cutoff frequency
	TTFloat64			mResonance;			///< filter resonance -- range is best between 1.0 and 16.0
	TTSymbolPtr			mMode;				///< lowpass, highpass, bandpass, notch, or peak
	TTFloat64			mF, mR, mDamp;		// coefficients
	TTSampleVector		mLowpass_output;		// feedback storage...
	TTSampleVector 		mHighpass_output;
	TTSampleVector		mBandpass_output;
	TTSampleVector		mNotch_output;
	TTSampleVector		mPeak_output;
	
	// Notifications
	TTErr updateMaxNumChannels(const TTValue& oldMaxNumChannels, TTValue&);
	TTErr updateSampleRate(const TTValue& oldSampleRate, TTValue&);
	TTErr clear();	

	void calculateCoefficients();
	
	/**	Audio processing methods. */
	TTErr processLowpass(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	TTErr processHighpass(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	TTErr processBandpass(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	TTErr processNotch(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	TTErr processPeak(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

	inline TTErr calculateLowpass(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel);
	inline TTErr calculateHighpass(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel);
	inline TTErr calculateBandpass(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel);
	inline TTErr calculateNotch(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel);
	inline TTErr calculatePeak(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel);

	// Attributes
	TTErr setMode(const TTValue& newValue);
	TTErr setFrequency(const TTValue& newValue);
	TTErr setResonance(const TTValue& newValue);

	/**	This algorithm uses an IIR filter, meaning that it relies on feedback.  If the filter should
	 *	not be producing any signal (such as turning audio off and then back on in a host) or if the
	 *	feedback has become corrupted (such as might happen if a NaN is fed in) then it may be 
	 *	neccesary to clear the filter by calling this method.
	 *	@return Returns a TTErr error code.												*/

	
	/**	Performs the actual SVF calculations. */
	void tick(TTSampleValue value, TTUInt16 channel);
};


#endif // __TT_SVF_H__
