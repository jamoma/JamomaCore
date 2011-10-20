/* 
 * Bean2D Unit for TTBlue
 * Originally written for the Jamoma TrajectoryLib
 * Copyright © 2010 by Nils Peters
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __BEAN_2D_H__
#define __BEAN_2D_H__

#include "TTDSP.h"


class Bean2D : TTAudioObject {
	TTCLASS_SETUP(Bean2D)

	//inline TTErr calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data);
	
	/**	A standard audio processing method as used by TTBlue objects.*/
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
};


#endif // __BEAN_2D_H__
