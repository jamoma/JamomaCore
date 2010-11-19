/* 
 * TTAudioGraphSplit Object
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTAudioGraphSplit.h"

#define thisTTClass			TTAudioGraphSplit
#define thisTTClassName		"audio.split"
#define thisTTClassTags		"audio, graph"


TT_AUDIO_CONSTRUCTOR
{
	addAttributeWithGetterAndSetter(Groups, kTypeUInt16);
	
	setAttributeValue(TT("maxNumChannels"), arguments);		
	setProcessMethod(processAudio);
}


// Destructor
TTAudioGraphSplit::~TTAudioGraphSplit()
{
	;
}

