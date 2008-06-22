/* 
 * TTBlue Balance Signal Amplitude
 * Copyright © 2008, Trond Lossius
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TT_BALANCE_H__
#define __TT_BALANCE_H__


#include "TTAudioObject.h"

/**	Use signal B to balance gain levels of signal A
 *	Based on an algorithm from Dodge & Jerse (1997): Computer Music -
 * 	Synthesis, Composition, and Performance. 2nd edition. Schirmer.

 *	In fact, this processor can work on a number of channels, provided that the number of input
 *	channels is twice the number of output channels.  In this case the first N/2 input channels are
 *	considered as the A source and the last N/2 input channels are considered the B source.
 */
class TTEXPORT TTBalance : public TTAudioObject {
private:
	TTFloat64		attrFrequency;					///< filter cutoff frequency of inherent lowpass filter
	TTFloat64		c, a0, a1, a2, b1, b2;			///< filter coefficients
	TTFloat64		*xm1A, *xm2A, *ym1A, *ym2A;		///< previous input and output values of signal to be balanced
	TTFloat64		*xm1B, *xm2B, *ym1B, *ym2B;		///< previous input and output values of signal to be compared with
	

	/**	Receives notifications when there are changes to the inherited 
		maxNumChannels attribute.  This allocates memory for xm1, xm2, ym1, and ym2 
		so that each channel's previous values are remembered.		*/
	TTErr updateMaxNumChannels(const TTValue& oldMaxNumChannels);

	/** Receives notifications when there are changes to the inherited 
		sr attribute.						*/
	TTErr updateSr();

	/**	Setter for the frequency attribute. */
	TTErr setFrequency(const TTValue& value);

	/**	This algorithm depends on the use of an IIR filter, meaning that it relies on feedback.  If the filter should
	 *	not be producing any signal (such as turning audio off and then back on in a host) or if the
	 *	feedback has become corrupted (such as might happen if a NaN is fed in) then it may be 
	 *	neccesary to clear the filter by calling this method.
	 *	@return Returns a TTErr error code.												*/
	TTErr clear();

	/**	Standard audio processing method as used by TTBlue objects. */
	TTErr processAudio(TTAudioSignal& in, TTAudioSignal& out);

public:

	/**	Constructor. */
	TTBalance(TTUInt16 newMaxNumChannels);

	/**	Destructor. */
	~TTBalance();
};


#endif // __TT_BALANCE_H__
