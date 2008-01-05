/* 
 * TTBlue Butterworth Lowpass Filter Object
 * Copyright © 2008, Trond Lossius
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TT_LOWPASS_BUTTERWORTH_H__
#define __TT_LOWPASS_BUTTERWORTH_H__


#include "TTAudioObject.h"

/**	2nd order Butterworth lowpass filter; Butterworth filters have maximum flat frequency response in the pass band.
 *	Based on an algorithm from Dodge & Jerse (1997): Computer Music -
 * 	Synthesis, Composition, and Performance. 2nd edition. Schirmer.
 */
class TTLowpassButterworth : public TTAudioObject {
private:
	TTBoolean		attrBypass;					///< Whether or not to bypass the filter
	TTFloat32		attrFrequency;				///< filter cutoff frequency
	double			c, a0, a1, a2, b1, b2;		///< filter coefficients
	TTFloat64		*xm1;
	TTFloat64		*xm2;
	TTFloat64		*ym1;
	TTFloat64		*ym2;						// previous input and output samples

	/**	Setter for the inherited maxNumChannels parameter.	
		This allocates memory for xm1, xm2, ym1, and ym2 so that each channel's 
		previous values are remembered.		*/
	TTErr setMaxNumChannels(const TTValue& newValue);

	/**	Setter for the bypass attribute.	*/
	TTErr setBypass(TTValue& value);

	/**	Setter for the frequency attribute. */
	TTErr setFrequency(TTValue& value);

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
	TTLowpassButterworth(TTUInt8 newMaxNumChannels);

	/**	Destructor. */
	~TTLowpassButterworth();
};


#endif // __TT_LOWPASS_BUTTERWORTH_H__
