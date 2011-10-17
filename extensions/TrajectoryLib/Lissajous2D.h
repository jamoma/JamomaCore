/* 
 * LissajousFunction Unit for TTBlue
 * Originally written for the Jamoma TrajectoryLib
 * Copyright © 2010 by Nils Peters
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __LISSAJOUS_2D_H__
#define __LISSAJOUS_2D_H__

#include "TTDSP.h"


class Lissajous2D : TTAudioObject {
	TTCLASS_SETUP(Lissajous2D)

	TTFloat64			mA,mAa, mAb, mDeltaX;

	//inline TTErr calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data);
	TTErr setA(const TTValue& value);
	/**	A standard audio processing method as used by TTBlue objects.*/
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
		
};


#endif // __LISSAJOUS_2D_H__
