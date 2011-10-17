/* 
 * Lissajous Knot Function Unit for TTBlue
 * http://en.wikipedia.org/wiki/Lissajous_knot
 *
 * Originally written for the Jamoma TrajectoryLib
 * Copyright © 2010 by Nils Peters
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __LISSAJOUS_3D_H__
#define __LISSAJOUS_3D_H__

#include "TTDSP.h"


class Lissajous3D : TTAudioObject {
	TTCLASS_SETUP(Lissajous3D)

	TTFloat64			mA, mB, mC, mDeltaX, mDeltaY;
	/** y = f(x) for a single value */
	//inline TTErr calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data);
	
	/**	A standard audio processing method as used by TTBlue objects.*/
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
};


#endif // __LISSAJOUS_3D_H__
