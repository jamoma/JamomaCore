/* 
 * TTBlue Gain Control Object
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTGain.h"
#define thisTTClass TTGain


TTGain::TTGain(TTUInt16 newMaxNumChannels)
	: TTAudioObject("audio.gain", newMaxNumChannels)
{
	registerAttribute(TT("linearGain"),	kTypeFloat64,	&gain);
	registerAttribute(TT("gain"),		kTypeFloat64,	NULL,	(TTGetterMethod)&TTGain::getGain, (TTSetterMethod)&TTGain::setGain);
	registerAttribute(TT("midiGain"),	kTypeFloat64,	NULL,	(TTGetterMethod)&TTGain::getMidiGain, (TTSetterMethod)&TTGain::setMidiGain);

	// Set Defaults...
	setAttributeValue(TT("linearGain"),	1.0);
	setProcessMethod(processAudio);
}


TTGain::~TTGain()
{
	;
}


TTErr TTGain::setGain(const TTValue& newValue)
{
	gain = dbToLinear(newValue);
	return kTTErrNone;
}


TTErr TTGain::getGain(TTValue& value)
{
	value = linearToDb(gain);
	return kTTErrNone;
}


TTErr TTGain::setMidiGain(const TTValue& newValue)
{
	gain = midiToLinearGain(newValue);
	return kTTErrNone;
}


TTErr TTGain::getMidiGain(TTValue& value)
{
	value = linearGainToMidi(gain);
	return kTTErrNone;
}


TTErr TTGain::processAudio(TTAudioSignal& in, TTAudioSignal& out)
{
	TTUInt16		vs;
	TTSampleValue	*inSample,
					*outSample;
	TTUInt16		numchannels = TTAudioSignal::getMinChannelCount(in, out);
	TTUInt16		channel;

	for(channel=0; channel<numchannels; channel++){
		inSample = in.sampleVectors[channel];
		outSample = out.sampleVectors[channel];
		vs = in.getVectorSize();
		
		while(vs--)
			*outSample++ = (*inSample++) * gain;
	}
	return kTTErrNone;
}

