/* 
 * TTBlue 4-Pole Lowpass Filter Object
 * Copyright © 2008, Tim Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_LOWPASS_FOURPOLE_H__
#define __TT_LOWPASS_FOURPOLE_H__

#include "TTDSP.h"


/**	A resonant two-pole, no-zero, lowpass filter.  Based on moog-variation2 @ musicdsp.org. */
class TTLowpassFourPole : public TTAudioObject {
	TTCLASS_SETUP(TTLowpassFourPole)

	TTFloat64		mFrequency;				///< filter cutoff frequency
	TTFloat64		mResonance;				///< filter resonance -- range is best between 1.0 and 16.0
	TTFloat64		mDeciResonance;			///< attrResonance * 0.1
	TTFloat64		mCoefficientF;			///< filter coefficient
	TTFloat64		mCoefficientSquaredF;   ///< mCoefficientF * mCoefficientF
	TTFloat64		mOneMinusCoefficientF;	///< 1 - mCoefficientF 
	TTFloat64		mCoefficientFB;			///< filter coefficient
	TTFloat64		mCoefficientG;			///< filter coefficient					
	
	TTSampleVector		mX1;					///< previous input sample for each channel
	TTSampleVector		mX2;					///< 2nd previous input sample for each channel
	TTSampleVector		mX3;					///< 3rd previous input sample for each channel
	TTSampleVector		mX4;					///< 4th previous input sample for each channel
	TTSampleVector		mY1;					///< previous output sample for each channel
	TTSampleVector		mY2;					///< 2nd previous output sample for each channel
	TTSampleVector		mY3;					///< 3rd previous output sample for each channel
	TTSampleVector		mY4;					///< 4th previous output sample for each channel

					
	// Notifications
	TTErr updateMaxNumChannels(const TTValue& oldMaxNumChannels, TTValue&);
	TTErr updateSampleRate(const TTValue& oldSampleRate, TTValue&);
    TTErr clear();
	
	void calculateCoefficients();
	/**	Standard single value calculate method as used by DSP objects. */
	inline TTErr calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel);
	
	/**	Standard audio processing method as used by TTBlue objects. */
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	
	// Attributes
	TTErr setFrequency(const TTValue& value);
	TTErr setResonance(const TTValue& value);
	
	/**	This algorithm uses an IIR filter, meaning that it relies on feedback.  If the filter should
	 *	not be producing any signal (such as turning audio off and then back on in a host) or if the
	 *	feedback has become corrupted (such as might happen if a NaN is fed in) then it may be 
	 *	neccesary to clear the filter by calling this method.
	 *	@return Returns a TTErr error code.												*/
	
};


#endif // __TT_LOWPASS_FOURPOLE_H__
