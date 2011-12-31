/* 
 * Super simple Spatialization object for Jamoma DSP
 * Copyright © 2011 by Trond Lossius, Nils Peters, and Timothy Place
 *
 * Simply provide a matrix where you directly manipulate the coefficients
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __SPATMATRIX_H__
#define __SPATMATRIX_H__

#include "TTDSP.h"


class SpatMatrix : TTAudioObject {
	TTCLASS_SETUP(SpatMatrix)
	
	TTAudioObjectPtr	mMatrixObject;				///< TTAudioMatrix object
	TTFloat64			mDummyTest;
	TTFloat64			mDummyTest2;

	/**	A standard audio processing method as used by TTBlue objects.*/
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

	/**	Unit Tests	*/
	virtual TTErr test(TTValue& returnedTestInfo);
};


#endif // __SPATMATRIX_H__
