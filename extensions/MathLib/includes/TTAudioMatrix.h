/* 
 * DSP Audio Matrix Object
 * Copyright © 2010, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_AUDIOMATRIX_H__
#define __TT_AUDIOMATRIX_H__

#include "TTDSP.h"


/**	TTAudioMatrix mixes N input channels to M output channels */
class TTAudioMatrix : TTAudioObject {
	TTCLASS_SETUP(TTAudioMatrix)

	TTMatrixPtr		mGainMatrix;
	TTBoolean		mInterpolated;
	TTMatrixPtr		oldGainMatrix, tempGainMatrix;
	TTUInt16		mNumInputs;
	TTUInt16		mNumOutputs;
	

	// Attributes
	TTErr setNumInputs(const TTValue& newValue);
	TTErr setNumOutputs(const TTValue& newValue);
	TTErr checkMatrixSize(const TTUInt16 x, const TTUInt16 y);
	//TTErr setInterpolated(const TTValue& newValue);	
	// Messages
	TTErr clear();
	TTErr restoreMatrix();
	TTErr setGain(const TTValue& newValue, TTValue&);
	TTErr setLinearGain(const TTValue& newValue, TTValue&);
	TTErr setMidiGain(const TTValue& newValue, TTValue&);	
	
	// Audio
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	TTErr processAudioInterpolated(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
};


#endif // __TT_MATRIX_H__
