/* 
 * DSP Matrix Object
 * Copyright © 2010, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_MATRIX_H__
#define __TT_MATRIX_H__

#include "TTDSP.h"


/**	TTGain is an exceptionally simple audio processor scales an input audio signal */
class TTMatrix : TTAudioObject {
	TTCLASS_SETUP(TTMatrix)

	TTUInt16		mNumInputs;
	TTUInt16		mNumOutputs;
	TTSampleMatrix	mGainMatrix;

	// Attributes
	TTErr setNumInputs(const TTValue& newValue);
	TTErr setNumOutputs(const TTValue& newValue);
	
	// Messages
	TTErr Clear();
	TTErr SetGain(const TTValue& newValue);
	TTErr SetLinearGain(const TTValue& newValue);
	TTErr SetMidiGain(const TTValue& newValue);	
	
	// Audio
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);	
};


#endif // __TT_MATRIX_H__
