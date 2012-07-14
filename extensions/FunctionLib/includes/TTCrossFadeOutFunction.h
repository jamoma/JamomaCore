/* 
 * CrossFadeOutFunction Unit for Jamoma DSP
 * Originally written for the Jamoma FunctionLib
 * Copyright © 2012 by Trond Lossius
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TTCROSSFADEOUTFUNCTION_H__
#define __TTCROSSFADEOUTFUNCTION_H__

#include "TTDSP.h"


/**	A simple function unit the implements the following:
	y = sin((1.-x)*PI*0.5)-1.
 */
class TTCrossFadeOutFunction : TTAudioObject {
	TTCLASS_SETUP(TTCrossFadeOutFunction)

	/** y = f(x) for a single value */
	inline TTErr calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data);
	
	/**	A standard audio processing method as used by TTBlue objects.*/
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	
	/**	Unit Tests	*/
	virtual TTErr test(TTValue& returnedTestInfo);

};


#endif // __TTCROSSFADEOUTFUNCTION_H__
