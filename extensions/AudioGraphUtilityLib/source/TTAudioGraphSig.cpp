/* 
 * TTAudioGraphSig Object
 * Copyright © 2010, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTAudioGraphSig.h"

#define thisTTClass			TTAudioGraphSig
#define thisTTClassName		"audio.sig"
#define thisTTClassTags		"audio, graph"


TT_AUDIO_CONSTRUCTOR,
	mValue(0)
{
	addAttribute(Value, kTypeFloat64);
	
	setAttributeValue(TT("maxNumChannels"), arguments);		
	setProcessMethod(processAudio);
}


// Destructor
TTAudioGraphSig::~TTAudioGraphSig()
{
	;
}

