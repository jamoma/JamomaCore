/* 
 * Multicore Audio Graph Layer for Jamoma DSP
 * Creates a wrapper for TTAudioObjects that can be used to build an audio processing graph.
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTMulticoreSource.h"

#define thisTTClass			TTMulticoreSource
#define thisTTClassName		"multicore.source"
#define thisTTClassTags		"audio, multicore, source"

TT_AUDIO_CONSTRUCTOR,
	buffer(NULL)
{
	TTObjectInstantiate(kTTSym_audiosignal, &buffer, arguments);
	setProcessMethod(processAudio);
}


TTMulticoreSource::~TTMulticoreSource()
{
	TTObjectRelease(&buffer) ;
}


TTErr TTMulticoreSource::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&	out = outputs->getSignal(0);
	return TTAudioSignal::copy(*buffer, out);
}
