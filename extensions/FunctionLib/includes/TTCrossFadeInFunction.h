/* 
 * CrossFadeInFunction Unit for Jamoma DSP
 * Originally written for the Jamoma FunctionLib
 * Copyright © 2012 by Trond Lossius
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TTCROSSFADEINFUNCTION_H__
#define __TTCROSSFADEINFUNCTION_H__

#include "TTDSP.h"


/**	A simple function unit the implements the following:
	y = sin(x*PI*0.5)
 */
class TTCrossFadeInFunction : TTAudioObject {
	TTCLASS_SETUP(TTCrossFadeInFunction)

	/** y = f(x) for a single value */
	inline TTErr calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data);
	
	/**	A standard audio processing method as used by TTBlue objects.*/
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	
	/**	Unit Tests	*/
	virtual TTErr test(TTValue& returnedTestInfo);	

};


#endif // __TTCROSSFADEINFUNCTION_H__
