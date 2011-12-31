/* 
 * Super simple Spatialization object for Jamoma DSP
 * Copyright © 2011 by Trond Lossius, Nils Peters, and Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __SPATTHRU_H__
#define __SPATTHRU_H__

#include "TTDSP.h"


/**	This implements a spatialisation method that just let sources through */
class SpatThru : public TTAudioObject {
	TTCLASS_SETUP(SpatThru)
	
	TTUInt16 mSourceCount;
	TTUInt16 mDestinationCount;
	
	// Attributes
	TTErr setSourceCount(const TTValue& value);
	TTErr setDestinationCount(const TTValue& value);	
	
	/**	A standard audio processing method as used by TTBlue objects.*/
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

	/**	Unit Tests	*/
	virtual TTErr test(TTValue& returnedTestInfo);
};


#endif // __SPATTHRU_H__
