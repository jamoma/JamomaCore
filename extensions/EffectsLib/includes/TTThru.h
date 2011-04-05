/* 
 * Pass an input signal to the output unchanged.
 * Copyright © 2011, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TTTHRU_H__
#define __TTTHRU_H__

#include "TTDSP.h"


/**	TTGain is an exceptionally simple audio processor scales an input audio signal	*/
class TTThru : public TTAudioObject {
	TTCLASS_SETUP(TTThru)

	/**	A standard audio processing method as used by TTBlue objects.	*/
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

	/**	Unit testing.	*/
	TTErr test(TTValue& returnedTestInfo);
};


#endif // __TTTHRU_H__
