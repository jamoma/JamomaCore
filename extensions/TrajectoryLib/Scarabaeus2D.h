/* 
 * Scarabaeus2D Unit for TTBlue
 * Originally written for the Jamoma TrajectoryLib
 * Copyright © 2010 by Nils Peters
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __SCARABAEUS_2D_H__
#define __SCARABAEUS_2D_H__

#include "TTDSP.h"


class Scarabaeus2D : TTAudioObject {
	TTCLASS_SETUP(Scarabaeus2D)

	TTFloat64	mA, mB;

	//inline TTErr calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data);
	
	/**	A standard audio processing method as used by TTBlue objects.*/
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
};


#endif // __SCARABAEUS_2D_H__
