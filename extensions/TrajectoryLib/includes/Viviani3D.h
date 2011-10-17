/* 
 * VivianiCurve Unit for TTBlue
 * http://mathworld.wolfram.com/VivianisCurve.html
 *
 * Originally written for the Jamoma TrajectoryLib
 * Copyright © 2010 by Nils Peters
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __VIVIANI_3D_H__
#define __VIVIANI_3D_H__

#include "TTDSP.h"


class Viviani3D : TTAudioObject {
	TTCLASS_SETUP(Viviani3D)

	//inline TTErr calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data);
	
	/**	A standard audio processing method as used by TTBlue objects.*/
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
};


#endif // __VIVIANI_3D_H__
