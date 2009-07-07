/* 
 * PowerFunction Unit for TTBlue
 * Originally written for the Jamoma FunctionLib
 * Copyright © 2007 by Trond Lossius
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __POWERFUNCTION_H__
#define __POWERFUNCTION_H__

#include "TTBlueAPI.h"


/**	A function unit that provides exponential curves,
	along with a number of options to control the behavior of the curve.
 */
class PowerFunction : TTAudioObject {
	TTCLASS_SETUP(PowerFunction)

	TTSymbolPtr	symmetry;		///< Mode: none, point or axis
	double		powerValue;		///< Parameter for function: y pow(x,pow(2,powerValue))	
	double		k;				///< k = pow(2,powerValue)

	/** Attribute setter. */
	TTErr setsymmetry(const TTValue& newValue);
	
	/** Attribute setter. */
	TTErr setpowerValue(const TTValue& newValue);
	
	/** y = f(x) for a single value */
	inline TTErr calculatePoint(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data);
	inline TTErr calculateAxis(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data);
	inline TTErr calculateNoSymmetry(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data);
	
	/**	A standard audio processing method as used by TTBlue objects.*/
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

};


#endif // __POWERFUNCTION_H__
