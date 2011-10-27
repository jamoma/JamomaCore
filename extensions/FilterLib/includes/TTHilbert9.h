/* 
 * 9th-order Hilbert Transform filter built up from a 2-path allpass structure
 * Copyright © 2010, Tim Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_HILBERT9_H__
#define __TT_HILBERT9_H__

#include "TTDSP.h"
#include "TTAllpass1a.h"
#include "TTAllpass1b.h"


/**	A 9th-order Hilber Transform filter built-up from allpass building blocks.
	Based on Multirate Signal Processing for Communication Systems, Chapter 10
	and "The Digital All-Pass Filter: A Versatile Signal Processing Building Block"
	by REGALIA, MITRA, and P.VAIDYANATHAN, 1988.
 
	This filter is so-named because we base this filter on TTHalfband9 filter,
	which we transform to produce the phase quadrature by flipping coefficient signs and
	decoupling the output of the two paths.
 
	This particular Hilbert filter may be a bit too crude for many applications, as the
	distortion to the phase quadrature (perfect 90º) begins to distort somewhat rapidly
	as the frequencies at the input get further and further away from f_s/2.
	Because of this, a higher-order filter would be a better match for most applications.
	For example, TTHilbert17 will offer more accurate results, albeit at a higher
	computational cost.
 
	An additional caveat regards phase linearity with regard to the input signal.
	While the output phases of the real and imaginary signals from this filter are 
	90º to each other, the phase response of both in relation to the input signal is non-linear.
	To acheive a linear-phase version, a linear halfband filter needs to serve as the base
	from which to transform.  
	E.g. TTHalfbandLinear33 could be modified to become TTHilbertLinear33.

	Current implementation does not perform resampling.
	As with the halfband filters, we could make a version of this object that has
	downsampling and upsampling (e.g. for inverse hilber transforms) built-in.
 
	At the moment, however, we do not have any applications in Jamoma which require the use
	of hilbert-transformed signals to be processed at a lower rate.
  */
class TTHilbert9 : TTAudioObject {
	TTCLASS_SETUP(TTHilbert9)

	TTAllpass1b*	mF0;		///< path0
	TTAllpass1b*	mF2;		///< path0

	TTAllpass1b*	mF1;		///< path1
	TTAllpass1b*	mF3;		///< path1
	TTAllpass1a*	mDelay;		///< path1
		
	// Notifications
	TTErr updateMaxNumChannels(const TTValue& oldMaxNumChannels, TTValue&);

	// Zero filter history
	TTErr clear();
	
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
};


#endif // __TT_HILBERT9_H__
