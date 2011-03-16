/* 
 * Slinky Space Curve Unit for TTBlue
 * http://mathworld.wolfram.com/Slinky.html
 *
 * Originally written for the Jamoma TrajectoryLib
 * Copyright © 2010 by Nils Peters
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __SLINKY_3D_H__
#define __SLINKY_3D_H__

#include "TTDSP.h"


class Slinky3D : TTAudioObject {
	TTCLASS_SETUP(Slinky3D)

	TTFloat64	mA, mB, mC;
	
	//inline TTErr calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data);
	
	/**	A standard audio processing method as used by TTBlue objects.*/
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
};


#endif // __SLINKY_3D_H__
