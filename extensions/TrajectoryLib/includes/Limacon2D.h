/* 
 * LimaconFunction Unit for TTBlue
 * http://mathworld.wolfram.com/Limacon.html
 *
 * Originally written for the Jamoma TrajectoryLib
 * Copyright © 2010 by Nils Peters
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __LIMACON_2D_H__
#define __LIMACON_2D_H__

#include "TTDSP.h"


class Limacon2D : TTAudioObject {
	TTCLASS_SETUP(Limacon2D)

	TTFloat64	mA;

	//inline TTErr calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data);
	
	/**	A standard audio processing method as used by TTBlue objects.*/
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
};


#endif // __LIMACON_2D_H__
