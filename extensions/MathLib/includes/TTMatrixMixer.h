/* 
 * DSP Matrix Mixer Object
 * Copyright © 2009, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_MATRIXMIXER_H__
#define __TT_MATRIXMIXER_H__

#include "TTDSP.h"


/**	TTGain is an exceptionally simple audio processor scales an input audio signal */
class TTMatrixMixer : TTAudioObject {
	TTCLASS_SETUP(TTMatrixMixer)

	TTUInt16		mNumInputs;
	TTUInt16		mNumOutputs;
	TTMatrixPtr		mGainMatrix, tempGainMatrix;

	/**	A standard audio processing method as used by TTBlue objects.*/
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

	TTErr setNumInputs(const TTUInt16 newValue);
	TTErr setNumOutputs(const TTUInt16 newValue);
	
	TTErr clear();
	TTErr restoreMatrix();

	TTErr checkMatrixSize(const TTUInt16 x, const TTUInt16 y);
	
	/** setter for converting gain input from db to linear. 
		@param newValue The argument must consist of three values:
						- The x coordinate of the matrix point (beginning with zero)
						- The y coordinate of the matrix point (beggining with zero)
						- The gain level of the matrix point (in dB)
		@return			An error code.				*/
	TTErr setGain(const TTValue& newValue, TTValue&e);
	TTErr setLinearGain(const TTValue& newValue, TTValue&);
	TTErr setMidiGain(const TTValue& newValue, TTValue&);	
	
	void processOne(TTAudioSignal& in, TTAudioSignal& out, TTFloat64 gain);

};


#endif // __TT_MATRIXMIXER_H__
