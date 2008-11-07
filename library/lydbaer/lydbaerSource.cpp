/* 
 * Lydbaer Extensions for TTBlue
 * Creates a wrapper for TTAudioObjects that can be used to build an audio processing graph.
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "lydbaer.h"
#define thisTTClass LydbaerSource


LydbaerSource::LydbaerSource(TTUInt16 newMaxNumChannels)
: TTAudioObject("lydbaer.source", newMaxNumChannels)
{
	buffer = new TTAudioSignal(newMaxNumChannels);
	setProcessMethod(processAudio);
}


LydbaerSource::~LydbaerSource()
{
	delete buffer;
}


TTErr LydbaerSource::processAudio(TTAudioSignal& unused, TTAudioSignal& out)
{
	return TTAudioSignal::copy(*buffer, out);
}
