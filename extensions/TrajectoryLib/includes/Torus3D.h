/* 
 * Torus Knot Function Unit for TTBlue
 * http://en.wikipedia.org/wiki/Torus_knot
 *
 * Originally written for the Jamoma TrajectoryLib
 * Copyright © 2010 by Nils Peters
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TORUS_3D_H__
#define __TORUS_3D_H__

#include "TTDSP.h"


class Torus3D : TTAudioObject {
	TTCLASS_SETUP(Torus3D)

	TTFloat64			mA, mB;
	/** y = f(x) for a single value */
	//inline TTErr calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data);
	
	/**	A standard audio processing method as used by TTBlue objects.*/
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
};


#endif // __TORUS_3D_H__
