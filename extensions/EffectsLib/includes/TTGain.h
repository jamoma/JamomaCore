/* 
 * TTBlue Gain Control Object
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_GAIN_H__
#define __TT_GAIN_H__

#include "TTDSP.h"


/**	TTGain is an exceptionally simple audio processor scales an input audio signal */
class TTGain : public TTAudioObject {
	TTCLASS_SETUP(TTGain)

	TTFloat64		mGain, oldGain;	///< linear gain to be applied to the input signal
	TTBoolean		mInterpolated;
	/**	A standard audio processing method as used by TTBlue objects.*/
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	TTErr processAudioInterpolated(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	
	/** setter for the gain processing mode */
	TTErr setInterpolated(const TTValue& newValue);
	
	/** setter for converting gain input from db to linear. */
	TTErr setGain(const TTValue& newValue);
	
	/** getter for converting gain input from linear to db. */
	TTErr getGain(TTValue& value);
	
	/** set the gain using midi units. */
	TTErr setMidiGain(const TTValue& newValue);
	
	/** retreive the gain in midi units. */
	TTErr getMidiGain(TTValue& value);
	

	virtual TTErr test(TTValue& returnedTestInfo);

};


#endif // __TT_GAIN_H__
