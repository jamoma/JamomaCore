/* 
 * Super simple Spatialization object for Jamoma DSP
 * Copyright © 2011 by Trond Lossius, Nils Peters, and Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __SPATMATRIX_H__
#define __SPATMATRIX_H__

#include "SpatLib.h"


/**	This implements a window function which basically does nothing: 
	y = 1.0
 */
class SpatMatrix : TTAudioObject {
	TTCLASS_SETUP(SpatMatrix)
	
	TTAudioObjectPtr	mMatrixObject;				///< TTAudioMatrix object
	
	/**	A standard audio processing method as used by TTBlue objects.*/
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

	/**	Unit Tests	*/
	virtual TTErr test(TTValue& returnedTestInfo);
};


#endif // __SPATMATRIX_H__
