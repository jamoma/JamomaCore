/* 
 * TanhFunction Unit for TTBlue
 * Originally written for the Jamoma FunctionLib
 * Copyright © 2007 by Trond Lossius
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TANHFUNCTION_H__
#define __TANHFUNCTION_H__

#include "TTDSP.h"


/**	A function unit providing a curve based on
	y = tanh(x)
	but with a variety of additions to the basic trig function.
 */
class TTTanhFunction : TTAudioObject {
	TTCLASS_SETUP(TTTanhFunction)

	TTFloat64	mWidth;			///< Parameter for function: y pow(x,pow(2,powerValue))	
	TTFloat64	mOffset;		///< k = pow(2,powerValue)
	double		a;				///< Internal coefficient
	double		b;				///< Internal coefficient
	double		alpha;			///< Internal coefficient
	double		beta;			///< Internal coefficient
	
	/** Calculate coefficients */
	void calculateOutputScaling(void);
	
	/** Calculate coefficients when this attr is set */
	TTErr setWidth(const TTValue& value);
	
	/** Calculate coefficients when this attr is set */
	TTErr setOffset(const TTValue& value);
	
	/** y = f(x) for a single value */
	inline TTErr calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data);
	
	/**	A standard audio processing method as used by TTBlue objects.*/
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	
	/**	Unit Tests	*/
	virtual TTErr test(TTValue& returnedTestInfo);	

};


#endif // __TANHFUNCTION_H__
