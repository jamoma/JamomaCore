/* 
 * HypocycloidFunction Unit for TTBlue
 * http://en.wikipedia.org/wiki/Hypocycloid
 * Originally written for the Jamoma TrajectoryLib
 * Copyright © 2010 by Nils Peters
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __HYPOCYCLOID_2D_H__
#define __HYPOCYCLOID_2D_H__

#include "TTDSP.h"


class Hypocycloid2D : TTAudioObject {
	TTCLASS_SETUP(Hypocycloid2D)

	TTFloat64	mA, aMinusOne;

	//inline TTErr calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data);
	TTErr setA(const TTValue& value);
	/**	A standard audio processing method as used by TTBlue objects.*/
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
};


#endif // __HYPOCYCLOID_2D_H__
