/* 
 * SpiralSpiral Unit for TTBlue
 * http://mathworld.wolfram.com/SpiralsCurve.html
 * http://www.wolframalpha.com/entities/space_curves/spherical_spiral/lu/g9/pv/
 *
 * Originally written for the Jamoma TrajectoryLib
 * Copyright © 2010 by Nils Peters
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __Spiral_3D_H__
#define __Spiral_3D_H__

#include "TTDSP.h"


class Spiral3D : TTAudioObject {
	TTCLASS_SETUP(Spiral3D)

	TTFloat64	mA;
	
	//inline TTErr calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data);
	
	/**	A standard audio processing method as used by TTBlue objects.*/
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
};


#endif // __Spiral_3D_H__
