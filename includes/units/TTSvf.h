/* 
 * TTBlue State Variable Filter Object
 * Copyright © 2008, Tim Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TT_SVF_H__
#define __TT_SVF_H__


#include "TTAudioObject.h"

/**	A State Variable Filter object.
	One of the features of a state variable filter is that it can provide all 4 filter types 
	simultaneously from the same algorithm.
	
	This implementation takes a different approach which requires the selection of one of the types.
	At some point in the future we could add a mode to get all 4 signals out of the output...
 */
class TTSvf : public TTAudioObject {
private:
	TTFloat64		attrFrequency;			///< filter cutoff frequency
	TTFloat64		attrResonance;			///< filter resonance -- range is best between 1.0 and 16.0
	TTFloat64		coefficientF;			///< filter coefficient
	TTFloat64		coefficientFB;			///< filter coefficient
	TTFloat64		coefficientG;			///< filter coefficient
	TTFloat64		*x1;					///< previous input sample for each channel
	TTFloat64		*x2;					///< 2nd previous input sample for each channel
	TTFloat64		*x3;					///< 3rd previous input sample for each channel
	TTFloat64		*x4;					///< 4th previous input sample for each channel
	TTFloat64		*y1;					///< previous output sample for each channel
	TTFloat64		*y2;					///< 2nd previous output sample for each channel
	TTFloat64		*y3;					///< 3rd previous output sample for each channel
	TTFloat64		*y4;					///< 4th previous output sample for each channel
	TTFloat64		deciResonance;			///< attrResonance * 0.1

	// Notifications
	TTErr updateMaxNumChannels(const TTValue& oldMaxNumChannels);
	TTErr updateSr();

	void calculateCoefficients();
	
	/**	Standard audio processing method as used by TTBlue objects. */
	TTErr processAudio(TTAudioSignal& in, TTAudioSignal& out);

public:

	/**	Constructor. */
	TTSvf(TTUInt16 newMaxNumChannels);

	/**	Destructor. */
	~TTSvf();

	
	/**	This algorithm uses an IIR filter, meaning that it relies on feedback.  If the filter should
	 *	not be producing any signal (such as turning audio off and then back on in a host) or if the
	 *	feedback has become corrupted (such as might happen if a NaN is fed in) then it may be 
	 *	neccesary to clear the filter by calling this method.
	 *	@return Returns a TTErr error code.												*/
	TTErr clear();
	
	// Attributes
	TTErr setFrequency(const TTValue& newValue);
	TTErr setResonance(const TTValue& newValue);
};


#endif // __TT_SVF_H__
