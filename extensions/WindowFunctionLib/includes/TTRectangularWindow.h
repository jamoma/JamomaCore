/* 
 * Rectangular Window Function Unit for Jamomoma DSP
 * Copyright © 2009 by Trond Lossius
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __RECTANGULARWINDOW_H__
#define __RECTANGULARWINDOW_H__

#include "TTDSP.h"


/**	This implements a window function which basically does nothing: 
	y = 1.0
	
	It is the same as the Matlab function:
		w=rectwin(L)
	Which is an alias for:
		w = ones(L,1);
	http://www.mathworks.com/help/toolbox/signal/ref/rectwin.html
	
	This can be expressed also as:
		w(n) = 1, 0 <= n <= N-1
		
	Values outside of this range could be set to zero, though (at least in theory) 
	we should never receive a request for out-of-range values.
 */
			
class RectangularWindow : TTAudioObject {
	TTCLASS_SETUP(RectangularWindow)

	/** y = f(x) for a single value */
	inline TTErr calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data);
	
	/**	A standard audio processing method as used by Jamoma DSP objects. */
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

	/** A standard unit testing method as used by Jamoma DSP objects. */
	TTErr test(TTValue& returnedTestInfo);
};


#endif // __RECTANGULARWINDOW_H__
