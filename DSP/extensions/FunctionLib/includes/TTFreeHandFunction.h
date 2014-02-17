/** @file
 *
 * @ingroup dspFunctionLib
 *
 * @brief #TTFreeHandFunction Unit for Jamoms DSP
 *
 * @details A piecewise function unit that allows to load a function unit per defined domain. @n
 * The default configuration is a linear function for X[0::1], Y[0::1] domain. @n
 * Setup the curveList attribute to change the configuration. @n
 * For example setting curveList to the < 0.3 0.6 exponential base 0.5 1. 1. logarithm base 0.8 > value @n
 * you will imply the following behavior :
 *  -  if x belongs to [0::0.3] domain, it will use the exponential function and the result will belong to [0.::0.6] domain.
 *  -  if x belongs to ]0.3::1.] domain, it will use the logarithm function and the result will belong to  ]0.6::1.] domain.
 *
 * @authors Théo de la Hogue, Trond Lossius
 *
 * @copyright Copyright © 2013 by Théo de la Hogue @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#ifndef __FREEHANDFUNCTION_H__
#define __FREEHANDFUNCTION_H__

#include "TTDSP.h"


/**	A piecewise function unit that allows to load a function unit per defined domain
 */
class TTFreeHandFunction : TTAudioObjectBase {
	TTCLASS_SETUP(TTFreeHandFunction)
    
private:
    TTBoolean   locked;             // true if the function is changing

protected:

    TTList      mPoints;            // all points coordinate (X [0::1], Y [min::max])
	TTList      mFunctions;         // all functions for each section (nb sections = nb points - 1)
	
    
    /** Get all points and functions as a list of < x y function parameterName parameterValue > */
	TTErr getCurveList(TTValue& value);
    
    /** Set all points and functions using a list of < x y function parameterName parameterValue > */
	TTErr setCurveList(const TTValue& value);
    
    /** Clear all functions */
    TTErr Clear();
	
	/** y = f(x) for a single value */
	inline TTErr calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data);
	
	/**	A standard audio processing method as used by Jamoma DSP objects.*/
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	
	/**	Unit Tests	*/
	virtual TTErr test(TTValue& returnedTestInfo);	

};


#endif // __FREEHANDFUNCTION_H__
