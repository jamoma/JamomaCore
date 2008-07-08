/* 
 * TTBlue 2nd order Butterworth Lowpass Filter Object
 * Copyright © 2008, Trond Lossius
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TT_LOWPASS_BUTTERWORTH_1_H__
#define __TT_LOWPASS_BUTTERWORTH_1_H__


#include "TTAudioObject.h"

/**	1rst order Butterworth lowpass filter; Butterworth filters have maximum flat frequency response in the pass band.
 *
 * Filter equations from:
 * 
 * Second-order IIR Filters will support cascade implementations
 * By Rusty Allred, Texas Instruments, Dallas
 * July 01, 2003
 * http://www.planetanalog.com/article/printableArticle.jhtml?articleID=12802683
 *
 */
class TTEXPORT TTLowpassButterworth1 : public TTAudioObject {
private:
	TTFloat64		attrFrequency;				///< filter cutoff frequency
	TTFloat64		k, wc;						///< filter coefficients	
	TTFloat64		a0, a1, b1;					///< filter coefficients
	TTFloat64		*xm1;						///< previous input samples
	TTFloat64		*ym1;						///< previous output samples

	/**	Receives notifications when there are changes to the inherited 
		maxNumChannels attribute.  This allocates memory for xm1 and ym1 
		so that each channel's previous values are remembered.		*/
	TTErr updateMaxNumChannels(const TTValue& oldMaxNumChannels);

	/** Receives notifications when there are changes to the inherited 
		sr attribute.						*/
	TTErr updateSr();

	/**	Standard audio processing method as used by TTBlue objects. */
	TTErr processAudio(TTAudioSignal& in, TTAudioSignal& out);

public:

	/**	Constructor. */
	TTLowpassButterworth1(TTUInt16 newMaxNumChannels);

	/**	Destructor. */
	~TTLowpassButterworth1();

	/**	This algorithm uses an IIR filter, meaning that it relies on feedback.  If the filter should
	 *	not be producing any signal (such as turning audio off and then back on in a host) or if the
	 *	feedback has become corrupted (such as might happen if a NaN is fed in) then it may be 
	 *	neccesary to clear the filter by calling this method.
	 *	@return Returns a TTErr error code.												*/
	TTErr clear();
	
	/**	Setter for the frequency attribute. */
	TTErr setFrequency(const TTValue& value);
	
};


#endif // __TT_LOWPASS_BUTTERWORTH_1_H__
