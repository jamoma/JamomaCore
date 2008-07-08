/* 
 * TTBlue 4th order Linkwitz Riley Lowpass Filter Object
 *

 * 
 * Copyright © 2008, Trond Lossius
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TT_LOWPASS_LINKWITZ_RILEY_4_H__
#define __TT_LOWPASS_LINKWITZ_RILEY_4_H__


#include "TTAudioObject.h"

/**	4th order Linkwitz Riley Lowpass Filter
 *
 * Filter equations from
 * 
 * Second-order IIR Filters will support cascade implementations
 * By Rusty Allred, Texas Instruments, Dallas
 * July 01, 2003
 * http://www.planetanalog.com/article/printableArticle.jhtml?articleID=12802683
 *
 * 4th order Linkwitz-Riley filters are typically used as crossover filters, with the following properties:
 *
 * 1. Absolutely flat amplitude response throughout the passband with a steep 24 dB/octave rolloff rate after the crossover point. 
 * 2. The acoustic sum of the two driver responses is unity at crossover. (Amplitude response of each is -6 dB at crossover, i.e., there is no peaking in the summed acoustic output.)
 * 3. Zero phase difference between drivers at crossover. (Lobing error equals zero, i.e., no tilt to the polar radiation pattern.) In addition, the phase difference of zero degrees through crossover places the lobe of the summed acoustic output on axis at all frequencies.
 * 4. The low pass and high pass outputs are everywhere in phase. (This guarantees symmetry of the polar response about the crossover point.)
 * 5. All drivers are always wired the same (in phase).
 *
 */
class TTEXPORT TTLowpassLinkwitzRiley4 : public TTAudioObject {
private:
	TTFloat64		frequency;				///< filter cutoff frequency
	TTFloat64		k, wc;						///< filter coefficients
	TTFloat64		a0, a1, a2, a3, a4;			///< filter coefficients for input samples
	TTFloat64		b1, b2, b3, b4;				///< filter coefficients for output samples
	TTFloat64		*xm1;						///< Input sample n-1
	TTFloat64		*xm2;						///< Input sample n-2
	TTFloat64		*xm3;						///< Input sample n-3
	TTFloat64		*xm4;						///< Input sample n-4
	TTFloat64		*ym1;						///< Output sample n-1
	TTFloat64		*ym2;						///< Output sample n-2
	TTFloat64		*ym3;						///< Output sample n-3
	TTFloat64		*ym4;						///< Output sample n-4

	/**	Receives notifications when there are changes to the inherited 
		maxNumChannels attribute.  This allocates memory for xm1, xm2, ym1, and ym2 
		so that each channel's previous values are remembered.		*/
	TTErr updateMaxNumChannels(const TTValue& oldMaxNumChannels);

	/** Receives notifications when there are changes to the inherited 
		sr attribute.						*/
	TTErr updateSr();

	/**	Standard audio processing method as used by TTBlue objects. */
	TTErr processAudio(TTAudioSignal& in, TTAudioSignal& out);

public:

	/**	Constructor. */
	TTLowpassLinkwitzRiley4(TTUInt16 newMaxNumChannels);

	/**	Destructor. */
	~TTLowpassLinkwitzRiley4();
	
	/**	This algorithm uses an IIR filter, meaning that it relies on feedback.  If the filter should
	 *	not be producing any signal (such as turning audio off and then back on in a host) or if the
	 *	feedback has become corrupted (such as might happen if a NaN is fed in) then it may be 
	 *	neccesary to clear the filter by calling this method.
	 *	@return Returns a TTErr error code.												*/
	TTErr clear();
	
	/**	Setter for the frequency attribute. */
	TTErr setfrequency(const TTValue& value);
};


#endif // __TT_LOWPASS_LINKWITZ_RILEY_4_H__
