/* 
 * TTBlue 2-Pole Lowpass Filter Object
 * Copyright © 2008, Tim Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_LOWPASS_TWOPOLE_H__
#define __TT_LOWPASS_TWOPOLE_H__

#include "TTDSP.h"


/**	A resonant two-pole, no-zero, lowpass filter. Based on the Hal Chamberlin book. */
class TTLowpassTwoPole : public TTAudioObject {
	TTCLASS_SETUP(TTLowpassTwoPole)

	TTFloat64			mFrequency;				///< filter cutoff frequency
	TTFloat64			mResonance;				///< filter resonance
	TTFloat64			mCoefficientA;			///< filter coefficient
	TTFloat64			mCoefficientB;			///< filter coefficient
	TTFloat64			mCoefficientC;			///< filter coefficient
	TTFloat64			mRadians;				///< filter cutoff frequence expressed in radians
	TTFloat64			mNegOneOverResonance;	///< -1 / attrResonance
	TTSampleVector		mFeedback1;				///< previous output sample for each channel
	TTSampleVector		mFeedback2;				///< 2nd previous output sample for each channel
	

	// Notifications
	TTErr updateMaxNumChannels(const TTValue& oldMaxNumChannels, TTValue&);
	TTErr updateSampleRate(const TTValue& oldSampleRate, TTValue&);
	TTErr clear();
    // Attributes
	TTErr setFrequency(const TTValue& value);
	TTErr setResonance(const TTValue& value);
	
	void calculateCoefficients();
	/**	Standard single value calculate method as used by DSP objects. */
	inline TTErr calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel);

	/**	Standard audio processing method as used by TTBlue objects. */
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);	
	
	/**	This algorithm uses an IIR filter, meaning that it relies on feedback.  If the filter should
	 *	not be producing any signal (such as turning audio off and then back on in a host) or if the
	 *	feedback has become corrupted (such as might happen if a NaN is fed in) then it may be 
	 *	neccesary to clear the filter by calling this method.
	 *	@return Returns a TTErr error code.												*/
	
};


#endif // __TT_LOWPASS_TWOPOLE_H__
