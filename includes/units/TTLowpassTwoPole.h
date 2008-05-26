/* 
 * TTBlue 2-Pole Lowpass Filter Object
 * Copyright © 2008, Tim Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TT_LOWPASS_TWOPOLE_H__
#define __TT_LOWPASS_TWOPOLE_H__


#include "TTAudioObject.h"

/**	A resonant two-pole, no-zero, lowpass filter. Based on the Hal Chamberlin book.
 */
class TTEXPORT TTLowpassTwoPole : public TTAudioObject {
private:
	TTFloat64		attrFrequency;			///< filter cutoff frequency
	TTFloat64		attrResonance;			///< filter resonance
	TTFloat64		coefficientA;			///< filter coefficient
	TTFloat64		coefficientB;			///< filter coefficient
	TTFloat64		coefficientC;			///< filter coefficient
	TTFloat64		*feedback1;				///< previous output sample for each channel
	TTFloat64		*feedback2;				///< 2nd previous output sample for each channel
	TTFloat64		radians;				///< filter cutoff frequence expressed in radians
	TTFloat64		negOneOverResonance;	///< -1 / attrResonance

	// Notifications
	TTErr updateMaxNumChannels();
	TTErr updateSr();

	// Attributes
	TTErr setFrequency(const TTValue& newValue);
	TTErr setResonance(const TTValue& newValue);
	void calculateCoefficients();
	
	/**	This algorithm uses an IIR filter, meaning that it relies on feedback.  If the filter should
	 *	not be producing any signal (such as turning audio off and then back on in a host) or if the
	 *	feedback has become corrupted (such as might happen if a NaN is fed in) then it may be 
	 *	neccesary to clear the filter by calling this method.
	 *	@return Returns a TTErr error code.												*/
	TTErr clear();

	/**	Standard audio processing method as used by TTBlue objects. */
	TTErr processAudio(TTAudioSignal& in, TTAudioSignal& out);

public:

	/**	Constructor. */
	TTLowpassTwoPole(TTUInt8 newMaxNumChannels);

	/**	Destructor. */
	~TTLowpassTwoPole();
};


#endif // __TT_LOWPASS_TWOPOLE_H__
