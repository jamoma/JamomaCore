/* 
 * Lydbaer Extensions for TTBlue
 * Creates a wrapper for TTAudioObjects that can be used to build an audio processing graph.
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "multicore.h"
#define thisTTClass MCoreSource


MCoreSource::MCoreSource(TTUInt16 newMaxNumChannels)
: TTAudioObject("multicore.source", newMaxNumChannels)
{
	buffer = new TTAudioSignal(newMaxNumChannels);
	setProcessMethod(processAudio);
}


MCoreSource::~MCoreSource()
{
	delete buffer;
}


TTErr MCoreSource::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&	out = outputs->getSignal(0);
	return TTAudioSignal::copy(*buffer, out);
}
