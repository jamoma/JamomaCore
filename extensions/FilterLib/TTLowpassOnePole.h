/* 
 * Jamoma DSP 1-Pole Lowpass Filter Object
 * Copyright © 2008, Tim Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TT_LOWPASS_ONEPOLE_H__
#define __TT_LOWPASS_ONEPOLE_H__

#include "TTDSP.h"


/**	The simplest of lowpass filters: a single-pole, no-zero algorithm. */
class TTLowpassOnePole : public TTAudioObject {
	TTCLASS_SETUP(TTLowpassOnePole)

	TTFloat64			mFrequency;					///< filter cutoff frequency
	TTFloat64			mCoefficient;				///< filter coefficients
	TTFloat64			mOneMinusCoefficient;		///< filter coefficients
	TTSampleVector		mFeedback;					///< previous output sample for each channel

	/**	Receives notifications when there are changes to the inherited 
		maxNumChannels attribute.			*/
	TTErr updateMaxNumChannels(const TTValue& oldMaxNumChannels);

	/** Receives notifications when there are changes to the inherited 
		sr attribute.						*/
	TTErr updateSr();
	
	/**	This algorithm uses an IIR filter, meaning that it relies on feedback.  If the filter should
	 *	not be producing any signal (such as turning audio off and then back on in a host) or if the
	 *	feedback has become corrupted (such as might happen if a NaN is fed in) then it may be 
	 *	neccesary to clear the filter by calling this method.
	 *	@return Returns a TTErr error code.												*/
	TTErr clear();	

	/**	Setter for the frequency attribute. */
	TTErr setFrequency(const TTValue& value);
	
	/**	Standard single value calculate method as used by DSP objects. */
	inline TTErr calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel);

	/**	Standard audio processing method as used by DSP objects. */
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
};


#endif // __TT_LOWPASS_ONEPOLE_H__
