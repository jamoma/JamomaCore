/* 
 * RoseFunction Unit for TTBlue
 * Originally written for the Jamoma TrajectoryLib
 * Copyright © 2010 by Nils Peters
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __ROSE_3D_H__
#define __ROSE_3D_H__

#include "TTDSP.h"


class Rose3D : TTAudioObject {
	TTCLASS_SETUP(Rose3D)

	TTFloat64			mA, mB, mC, mDeltaX, mDeltaY, mDeltaZ;
	//inline TTErr calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data);
	
	/**	A standard audio processing method as used by TTBlue objects.*/
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
		
	TTErr setA(const TTValue& value);
	TTErr setB(const TTValue& value);
	TTErr setC(const TTValue& value);
	TTErr setDeltaX(const TTValue& value);
	TTErr setDeltaY(const TTValue& value);
	TTErr setDeltaZ(const TTValue& value);
};


#endif // __Rose3D_H__
