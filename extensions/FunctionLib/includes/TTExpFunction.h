/* 
 * ExpFunction Unit for TTBlue
 * Originally written for the Jamoma FunctionLib
 * Copyright © 2009 by Trond Lossius
 * Formula based on exscale (for ISPW and later for Max/MSP) by Norbert Schnell
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TTEXPFUNCTION_H__
#define __TTEXPFUNCTION_H__

#include "TTDSP.h"


/**	A function unit providing a curve based on
	y = exp(log(base)*x)
	but with a variety of additions to the basic trig function.
 */
class TTExpFunction : TTAudioObject {
	TTCLASS_SETUP(TTExpFunction)

	TTFloat64	mBase;			///< Base for the exponential function
	double		k;				///< Internal coefficient

	
	/** Calculate coefficients when this attr is set */
	TTErr setBase(const TTValue& value);
		
	/** y = f(x) for a single value */
	inline TTErr calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data);
	inline TTErr calculateValueBypass(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data);

	
	/**	A standard audio processing method as used by TTBlue objects.*/
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	TTErr processAudioBypass(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	
	/**	Unit Tests	*/
	virtual TTErr test(TTValue& returnedTestInfo);	

};


#endif // __EXPFUNCTION_H__
