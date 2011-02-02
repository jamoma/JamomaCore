/* 
 * LinearFunction Unit for TTBlue
 * Originally written for the Jamoma FunctionLib
 * Copyright © 2007 by Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __LINEARTRAJECTORY_H__
#define __LINEARTRAJECTORY_H__

#include "TTDSP.h"


/**	This implements a function which basically does nothing: 
	y = f(x)
 */
class LinearTrajectory : TTAudioObject {
	TTCLASS_SETUP(LinearTrajectory)

	/** y = f(x) for a single value */
	//inline TTErr calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data);
	
	/**	A standard audio processing method as used by TTBlue objects.*/
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	TTErr processAudioFunction2D(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	TTErr processAudioFunction3D(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

	
};


#endif // __LINEARTRAJECTORY_H__
