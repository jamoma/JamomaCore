/* 
 * Multicore Audio Graph Layer for Jamoma DSP
 * Creates a wrapper for TTAudioObjects that can be used to build an audio processing graph.
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTMulticoreGenerator.h"

#define thisTTClass			TTMulticoreGenerator
#define thisTTClassName		"multicore.generator"
#define thisTTClassTags		"audio, multicore, generator"

TT_AUDIO_CONSTRUCTOR,
	buffer(NULL)
{
	TTObjectInstantiate(kTTSym_audiosignal, &buffer, arguments);
	setProcessMethod(processAudio);
}


TTMulticoreGenerator::~TTMulticoreGenerator()
{
	TTObjectRelease(&buffer);
}


TTErr TTMulticoreGenerator::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&	out = outputs->getSignal(0);
	return TTAudioSignal::copy(*buffer, out);
}
