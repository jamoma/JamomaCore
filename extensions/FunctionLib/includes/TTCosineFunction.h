/* 
 * CosineFunction Unit for TTBlue
 * Originally written for the Jamoma FunctionLib
 * Copyright © 2007 by Dave Watson
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TTCOSINEFUNCTION_H__
#define __TTCOSINEFUNCTION_H__

#include "TTDSP.h"


/**	A simple function unit the implements the following:
	y = cos(x)
 */
class TTCosineFunction : TTAudioObject {
	TTCLASS_SETUP(TTCosineFunction)

	/** y = f(x) for a single value */
	inline TTErr calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data);
	
	/**	A standard audio processing method as used by TTBlue objects.*/
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	
	/**	Unit Tests	*/
	virtual TTErr test(TTValue& returnedTestInfo);	

};


#endif // __TTCOSINEFUNCTION_H__
