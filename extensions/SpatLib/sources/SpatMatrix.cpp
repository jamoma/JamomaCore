/* 
 * Super simple Spatialization object for Jamoma DSP
 * Copyright © 2011 by Trond Lossius, Nils Peters, and Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "SpatMatrix.h"

#define thisTTClass			SpatMatrix
#define thisTTClassName		"spat.matrix"
#define thisTTClassTags		"audio, spatialization, bypass, processing"


TT_AUDIO_CONSTRUCTOR,
	mMatrixObject(NULL)
{
	// Instantiate an audio matrix
	TTObjectInstantiate(TT("matrix"), &mMatrixObject, kTTValNONE);
	
	setProcessMethod(processAudio);
}


SpatMatrix::~SpatMatrix()
{
	TTObjectRelease(&mMatrixObject);
}


TTErr SpatMatrix::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	return mMatrixObject->process(inputs, outputs);
}

