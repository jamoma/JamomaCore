/* 
 * TTAudioGraphPick Object
 * Copyright © 2011, Nils Peters
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTAudioGraphPick.h"

#define thisTTClass			TTAudioGraphPick
#define thisTTClassName		"audio.pick"
#define thisTTClassTags		"audio, graph"


TT_AUDIO_CONSTRUCTOR,
mPickChannels(1)
{
	addAttributeWithGetterAndSetter(Picks, kTypeUInt16);	
	setAttributeValue(TT("maxNumChannels"), arguments);		
	setProcessMethod(processAudio);
}


// Destructor
TTAudioGraphPick::~TTAudioGraphPick()
{
	;
}

