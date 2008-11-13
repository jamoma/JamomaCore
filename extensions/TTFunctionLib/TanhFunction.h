/* 
 * TanhFunction Unit for TTBlue
 * Originally written for the Jamoma FunctionLib
 * Copyright © 2007 by Trond Lossius
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TANHFUNCTION_H__
#define __TANHFUNCTION_H__

#include "TTAudioObject.h"


/****************************************************************************************************/
// Class Specification


/**	A function unit providing a curve based on
	y = tanh(x)
	but with a variety of additions to the basic trig function.
 */
class TanhFunction : public TTAudioObject {
private: 
	TTFloat64	width;			///< Parameter for function: y pow(x,pow(2,powerValue))	
	TTFloat64	offset;			///< k = pow(2,powerValue)
	double		a;				///< Internal coefficient
	double		b;				///< Internal coefficient
	double		alpha;			///< Internal coefficient
	double		beta;			///< Internal coefficient
	
	/** Calculate coefficients */
	void calculateOutputScaling(void);
	
	/** Calculate coefficients when this attr is set */
	TTErr setwidth(const TTValue& value);
	
	/** Calculate coefficients when this attr is set */
	TTErr setoffset(const TTValue& value);

public:
	//** Constructor. */
	TanhFunction(TTUInt16 newMaxNumChannels);
	
	/** Destructor. */
	virtual ~TanhFunction();
	
	/** y = f(x) for a single value */
	inline TTErr calculateValue(const TTFloat64& x, TTFloat64& y);
	
	/**	A standard audio processing method as used by TTBlue objects.*/
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
};


#endif // __TANHFUNCTION_H__
