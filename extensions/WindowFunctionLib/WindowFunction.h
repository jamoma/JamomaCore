/* 
 * Generalized Window Function Wrapper for Jamoma DSP
 * Copyright © 2010 by Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __WINDOWFUNCTION_H__
#define __WINDOWFUNCTION_H__

#include "TTDSP.h"


/**	Generalized Window Function Wrapper
 */
class WindowFunction : TTAudioObject {
	TTCLASS_SETUP(WindowFunction)

	TTSymbolPtr			mFunction;
	TTAudioObjectPtr	mFunctionObject;

	/**	choose the window function */
	TTErr setFunction(const TTValue& function);

	// TODO: create a lookup table
	// TODO: create a lookup table size attr
	// TODO: create a process method that uses the lookup table
	// TODO: switch the process method based on an attr
	// TODO: create message to return the list of all available window functions
	// TODO: add a padding attribute for generating the lookup table, for two purposes:
	//		1. padded welch window used by tap.shift~ in tap.tools (which is padded by 16 zeros on both sides)
	//		2. http://www.dsprelated.com/dspbooks/sasp/Sliding_FFT_Maximum_Overlap.html
	
	/** y = f(x) for a single value */
	inline TTErr calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data);
	
	/**	A standard audio processing method as used by Jamoma DSP objects.*/
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

};


#endif // __WINDOWFUNCTION_H__
