/* 
 * EpitrochoidFunction Unit for TTBlue
 * http://mathworld.wolfram.com/Epitrochoid.html
 * Originally written for the Jamoma TrajectoryLib
 * Copyright © 2010 by Nils Peters
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __EPITROCHOID_2D_H__
#define __EPITROCHOID_2D_H__

#include "TTDSP.h"


class Epitrochoid2D : TTAudioObject {
	TTCLASS_SETUP(Epitrochoid2D)

	TTFloat64	mA, mB, aPlusOne;

	//inline TTErr calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data);
	TTErr setA(const TTValue& value);
	/**	A standard audio processing method as used by TTBlue objects.*/
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
};


#endif // __EPITROCHOID_2D_H__
