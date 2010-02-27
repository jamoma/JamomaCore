/* 
 * TTBlue Gain Control Object
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTGain.h"

#define thisTTClass			TTGain
#define thisTTClassName		"gain"
#define thisTTClassTags		"audio, processor, dynamics"


TT_AUDIO_CONSTRUCTOR
{
	registerAttribute(TT("LinearGain"),	kTypeFloat64,	&mGain);
	registerAttribute(TT("Gain"),		kTypeFloat64,	NULL,	(TTGetterMethod)&TTGain::getGain, (TTSetterMethod)&TTGain::setGain);
	registerAttribute(TT("MidiGain"),	kTypeFloat64,	NULL,	(TTGetterMethod)&TTGain::getMidiGain, (TTSetterMethod)&TTGain::setMidiGain);

	// Set Defaults...
	setAttributeValue(TT("LinearGain"),	0.0);
	setProcessMethod(processAudio);
}


TTGain::~TTGain()
{
	;
}


TTErr TTGain::setGain(const TTValue& newValue)
{
	mGain = dbToLinear(newValue);
	return kTTErrNone;
}


TTErr TTGain::getGain(TTValue& value)
{
	value = linearToDb(mGain);
	return kTTErrNone;
}


TTErr TTGain::setMidiGain(const TTValue& newValue)
{
	mGain = midiToLinearGain(newValue);
	return kTTErrNone;
}


TTErr TTGain::getMidiGain(TTValue& value)
{
	value = linearGainToMidi(mGain);
	return kTTErrNone;
}


TTErr TTGain::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&	in = inputs->getSignal(0);
	TTAudioSignal&	out = outputs->getSignal(0);
	TTUInt16		vs;
	TTSampleValue	*inSample,
					*outSample;
	TTUInt16		numchannels = TTAudioSignal::getMinChannelCount(in, out);
	TTUInt16		channel;

	for (channel=0; channel<numchannels; channel++) {
		inSample = in.sampleVectors[channel];
		outSample = out.sampleVectors[channel];
		vs = in.getVectorSize();
		
		while (vs--)
			*outSample++ = (*inSample++) * mGain;
	}
	return kTTErrNone;
}

