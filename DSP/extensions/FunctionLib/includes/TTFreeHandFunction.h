/* 
 * FreeHandFunction Unit for TTBlue
 * Originally written for the Jamoma FunctionLib
 * Copyright © 2013 by Théo de la hogue
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __FREEHANDFUNCTION_H__
#define __FREEHANDFUNCTION_H__

#include "TTDSP.h"


/**	A function unit providing a free hand curve based on all others function units
 */
class TTFreeHandFunction : TTAudioObject {
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
	
	/**	A standard audio processing method as used by TTBlue objects.*/
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	
	/**	Unit Tests	*/
	virtual TTErr test(TTValue& returnedTestInfo);	

};


#endif // __FREEHANDFUNCTION_H__
