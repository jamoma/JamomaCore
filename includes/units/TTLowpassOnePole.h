/* 
 * TTBlue 1-Pole Lowpass Filter Object
 * Copyright © 2008, Tim Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TT_LOWPASS_ONEPOLE_H__
#define __TT_LOWPASS_ONEPOLE_H__


#include "TTAudioObject.h"

/**	The simplest of lowpass filters: a single-pole, no-zero algorithm.
 */
class TTEXPORT TTLowpassOnePole : public TTAudioObject {
private:
	TTFloat64		frequency;		///< filter cutoff frequency
	TTFloat64		coefficient;		///< filter coefficients
	TTFloat64		*feedback;			///< previous output sample for each channel

	/**	Receives notifications when there are changes to the inherited 
		maxNumChannels attribute.			*/
	TTErr updateMaxNumChannels(const TTValue& oldMaxNumChannels);

	/** Receives notifications when there are changes to the inherited 
		sr attribute.						*/
	TTErr updateSr();
	
	/**	Standard audio processing method as used by TTBlue objects. */
	TTErr processAudio(TTAudioSignal& in, TTAudioSignal& out);

public:

	/**	Constructor. */
	TTLowpassOnePole(TTUInt16 newMaxNumChannels);

	/**	Destructor. */
	virtual ~TTLowpassOnePole();

	/**	Setter for the frequency attribute. */
	TTErr setfrequency(const TTValue& value);
	
	/**	This algorithm uses an IIR filter, meaning that it relies on feedback.  If the filter should
	 *	not be producing any signal (such as turning audio off and then back on in a host) or if the
	 *	feedback has become corrupted (such as might happen if a NaN is fed in) then it may be 
	 *	neccesary to clear the filter by calling this method.
	 *	@return Returns a TTErr error code.												*/
	TTErr clear();	
};


#endif // __TT_LOWPASS_ONEPOLE_H__
