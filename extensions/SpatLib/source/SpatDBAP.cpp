/* 
 * Super simple Spatialization object for Jamoma DSP
 * Copyright © 2011 by Trond Lossius, Nils Peters, and Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "SpatDBAP.h"

#define thisTTClass			SpatDBAP
#define thisTTClassName		"spat.dbap"
#define thisTTClassTags		"audio, spatialization, processing"


TT_AUDIO_CONSTRUCTOR,
	mMatrixObject(NULL)
{
	// Instantiate an audio matrix
	TTObjectInstantiate(TT("audiomatrix"), &mMatrixObject, kTTValNONE);
	
	setProcessMethod(processAudio);
}


SpatDBAP::~SpatDBAP()
{
	TTObjectRelease(&mMatrixObject);
}


TTErr SpatDBAP::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	return mMatrixObject->process(inputs, outputs);
}

