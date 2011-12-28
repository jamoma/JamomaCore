/* 
 * Super simple Spatialization object for Jamoma DSP
 * Copyright © 2011 by Trond Lossius, Nils Peters, and Timothy Place
 *
 * Simply provide a matrix where you directly manipulate the coefficients
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __SPATDBAP_H__
#define __SPATDBAP_H__

#include "TTDSP.h"


/**	This implements a window function which basically does nothing: 
	y = 1.0
 */
class SpatDBAP : TTAudioObject {
	TTCLASS_SETUP(SpatDBAP)
	
	TTAudioObjectPtr	mMatrixObject;				///< TTAudioMatrix object
	
	/**	A standard audio processing method as used by TTBlue objects.*/
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

	/**	Unit Tests	*/
	virtual TTErr test(TTValue& returnedTestInfo);
};


#endif // __SPATDBAP_H__
