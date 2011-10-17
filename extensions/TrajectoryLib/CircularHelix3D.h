/* 
 * CircularHelix Function Unit for TTBlue
 * Originally written for the Jamoma TrajectoryLib
 * Copyright © 2010 by Nils Peters
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __CIRCULARHELIX_3D_H__
#define __CIRCULARHELIX_3D_H__

#include "TTDSP.h"


class CircularHelix3D : TTAudioObject {
	TTCLASS_SETUP(CircularHelix3D)

	TTFloat64 mA;
	//inline TTErr calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data);
	
	/**	A standard audio processing method as used by TTBlue objects.*/
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
};


#endif // __CIRCULARHELIX_3D_H__
