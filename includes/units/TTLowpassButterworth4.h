/* 
 * TTBlue 4th order Butterworth Lowpass Filter Object
 * Copyright © 2008, Trond Lossius
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TT_LOWPASS_BUTTERWORTH_4_H__
#define __TT_LOWPASS_BUTTERWORTH_4_H__


#include "TTAudioObject.h"

/** 4th order Butterworth lowpass filter; Butterworth filters have maximum flat frequency response in the pass band.
 *
 * Filter equations from:
 * 
 * Second-order IIR Filters will support cascade implementations
 * By Rusty Allred, Texas Instruments, Dallas
 * July 01, 2003
 * http://www.planetanalog.com/article/printableArticle.jhtml?articleID=12802683
 *
 */
TTCLASS TTLowpassButterworth4 : public TTAudioObject {
private:
	TTFloat64		attrFrequency;								///< filter cutoff frequency
	TTFloat64		k, k2, k3, k4, wc, wc2, wc3, wc4, a, b;		///< filter coefficients
	TTFloat64		a0, a1, a2, a3, a4, b1, b2, b3, b4;			///< filter coefficients
	TTFloat64		*xm1;										///< Input sample n-1
	TTFloat64		*xm2;										///< Input sample n-2
	TTFloat64		*xm3;										///< Input sample n-3
	TTFloat64		*xm4;										///< Input sample n-4
	TTFloat64		*ym1;										///< Output sample n-1
	TTFloat64		*ym2;										///< Output sample n-2
	TTFloat64		*ym3;										///< Output sample n-3
	TTFloat64		*ym4;										///< Output sample n-4

	/**	Receives notifications when there are changes to the inherited 
		maxNumChannels attribute.  This allocates memory for xm1, xm2, xm3, xm4, ym1, ym2, ym3 and ym4 
		so that each channel's previous values are remembered.		*/
	TTErr updateMaxNumChannels();

	/** Receives notifications when there are changes to the inherited 
		sr attribute.						*/
	TTErr updateSr();

	/**	Setter for the frequency attribute. */
	TTErr setFrequency(const TTValue& value);

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
	TTLowpassButterworth4(TTUInt8 newMaxNumChannels);

	/**	Destructor. */
	~TTLowpassButterworth4();
};


#endif // __TT_LOWPASS_BUTTERWORTH_4_H__
