/* 
 * GearCurve Function Unit for TTBlue
 * http://mathworld.wolfram.com/GearCurve.html
 * Originally written for the Jamoma TrajectoryLib
 * Copyright © 2010 by Nils Peters
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __GEAR_2D_H__
#define __GEAR_2D_H__

#include "TTDSP.h"


class Gear2D : TTAudioObject {
	TTCLASS_SETUP(Gear2D)

	TTFloat64	mA, mB, mC;
	
	//inline TTErr calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data);
	
	/**	A standard audio processing method as used by TTBlue objects.*/
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
};


#endif // __GEAR_2D_H__
