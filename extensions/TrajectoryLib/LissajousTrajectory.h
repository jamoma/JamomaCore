/* 
 * LissajousFunction Unit for TTBlue
 * Originally written for the Jamoma TrajectoryLib
 * Copyright © 2010 by Nils Peters
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __LISSAJOUSTRAJECTORY_H__
#define __LISSAJOUSTRAJECTORY_H__

#include "TTDSP.h"


/**	This implements a function which basically does nothing: 
	y = f(x)
 */
class LissajousTrajectory : TTAudioObject {
	TTCLASS_SETUP(LissajousTrajectory)

	TTFloat64			mA, mB, mC, mDeltaX, mDeltaY, mDeltaZ;
	/** y = f(x) for a single value */
	//inline TTErr calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data);
	
	/**	A standard audio processing method as used by TTBlue objects.*/
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	TTErr processAudioFunction2D(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	TTErr processAudioFunction3D(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	
	TTErr setA(const TTValue& value);
	TTErr setB(const TTValue& value);
	TTErr setC(const TTValue& value);
	TTErr setDeltaX(const TTValue& value);
	TTErr setDeltaY(const TTValue& value);
	TTErr setDeltaZ(const TTValue& value);
};


#endif // __LISSAJOUSTRAJECTORY_H__
