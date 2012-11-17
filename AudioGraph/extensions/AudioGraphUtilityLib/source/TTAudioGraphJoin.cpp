/* 
 * TTAudioGraphJoin Object
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTAudioGraphJoin.h"

#define thisTTClass			TTAudioGraphJoin
#define thisTTClassName		"audio.join"
#define thisTTClassTags		"audio, graph"


TT_AUDIO_CONSTRUCTOR
{
	setAttributeValue(TT("maxNumChannels"), arguments);		
	setProcessMethod(processAudio);
}


// Destructor
TTAudioGraphJoin::~TTAudioGraphJoin()
{
	;
}

