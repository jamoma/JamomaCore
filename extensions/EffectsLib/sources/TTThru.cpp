/* 
 * Pass an input signal to the output unchanged.
 * Copyright © 2011, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTThru.h"

#define thisTTClass			TTThru
#define thisTTClassName		"thru"
#define thisTTClassTags		"audio, processor"


TT_AUDIO_CONSTRUCTOR
{
	setProcessMethod(processAudio);
}


TTThru::~TTThru()
{
	;
}


TTErr TTThru::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&	in = inputs->getSignal(0);
	TTAudioSignal&	out = outputs->getSignal(0);
	
	return TTAudioSignal::copy(in, out);
}
