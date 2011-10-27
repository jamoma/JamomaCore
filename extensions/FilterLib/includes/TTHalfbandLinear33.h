/* 
 * 33-Pole Halfband filter built up from a 2-path allpass structure
 * Copyright © 2010, Tim Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_LINEARHALFBAND33_H__
#define __TT_LINEARHALFBAND33_H__

#include "TTDSP.h"
#include "TTAllpass1a.h"
#include "TTAllpass1b.h"
#include "TTAllpass2b.h"
#include "TTDelay.h"


/**	A 33-pole halfband lowpass/highpass filter built-up from allpass building blocks.
	Based on Multirate Signal Processing for Communication Systems, Chapter 10, Page 20.
 
	Same magnitude response with respect to frequency as TTHalfband9, but with nearly linear
	phase response.
 
	The coefficients can be calculated using the "lineardesign_2.m" Matlab script.
	To generate the particular set of coefficients currently hard-coded into this filter, 
	choose the following settings (yields a roughly -60dB stopband attenuation):
		iterations: 100	(iterations bring the filter toward equiripple in the stopband)
		wc = 0.2895		(this is the normalized frequency of the start of the stopband)
		number of paths = 2
		number of coefficients = 8
 
	The result is:
		Roots =

		-0.832302165608369                     
		-0.338171398434493 + 0.342959068350197i
		-0.338171398434493 - 0.342959068350197i
		-0.001794835916660 + 0.437771696086791i
		-0.001794835916660 - 0.437771696086791i
		0.421285425003053                     
		0.298484480776670 + 0.301855022798834i
		0.298484480776670 - 0.301855022798834i

		branch 1 - type1     coefficient    0.8323021656083688    -0.4212854250030528
		branch 1 - type2 1st coefficient    0.6763427968689864   0.003589671833320152      -0.59696896155334
		branch 1 - type2 2nd coefficient    0.2319808172827758     0.1916472793306732     0.1802094400534031
 
	The ordering of the coefficients may not be at first obvious.  The first line of coefficients
	are the two alpha coefficients for the first two (first-order) allpass filters, F0 and F1.
 
	The second and third lines together provide the coefficient pairs for the remaining (second-order)
	filters.  Thus, 0.6763427968689864 and 0.2319808172827758 are the coefficient pair for the first filter
	0.003589671833320152 and 0.1916472793306732 are the coefficient pair for the second filter, and so on.
 */
class TTHalfbandLinear33 : TTAudioObject {
	TTCLASS_SETUP(TTHalfbandLinear33)

	TTDelay*		mP0Delay;	///< path0, pure delay, 16 samples
	
	TTAllpass1a*	mP1Delay;	///< path1
	TTAllpass1b*	mF0;		///< path1
	TTAllpass1b*	mF1;		///< path1
	TTAllpass2b*	mF2;		///< path1
	TTAllpass2b*	mF3;		///< path1
	TTAllpass2b*	mF4;		///< path1
	
	TTSymbolPtr		mMode;		///< Attribute: lowpass or highpass
		
	// Notifications
	TTErr updateMaxNumChannels(const TTValue& oldMaxNumChannels, TTValue&);

	// Zero filter history
	TTErr clear();
	
	// Attributes
	TTErr setMode(const TTValue& newValue);

	// Do the processing
	TTErr processLowpass(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	TTErr processHighpass(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

	inline void filterKernel(const TTFloat64& input, TTFloat64& outputPath0, TTFloat64& outputPath1, TTPtrSizedInt channel);
	
public:
	TTErr calculateLowpass(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel=0);
	TTErr calculateHighpass(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel=0);
};


#endif // __TT_LINEARHALFBAND33_H__
