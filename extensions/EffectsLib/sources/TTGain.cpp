/* 
 * TTBlue Gain Control Object
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTGain.h"

#define thisTTClass			TTGain
#define thisTTClassName		"gain"
#define thisTTClassTags		"audio, processor, dynamics"


TT_AUDIO_CONSTRUCTOR
, oldGain(0.0), mInterpolated(0)
{
	registerAttribute(TT("linearGain"),	kTypeFloat64,	&mGain);
	registerAttribute(TT("gain"),		kTypeFloat64,	NULL,	(TTGetterMethod)&TTGain::getGain, (TTSetterMethod)&TTGain::setGain);
	registerAttribute(TT("midiGain"),	kTypeFloat64,	NULL,	(TTGetterMethod)&TTGain::getMidiGain, (TTSetterMethod)&TTGain::setMidiGain);
	addAttribute(Interpolated,		kTypeBoolean);
	// Set Defaults...
	setAttributeValue(TT("linearGain"),	0.0);
	setProcessMethod(processAudio);
}


TTGain::~TTGain()
{
	;
}
/*
TTErr TTGain::setInterpolated(const TTValue& newValue)
{
	mInterpolated = newValue;
	if (mInterpolated)
		setProcessMethod(processAudioInterpolated);
	else 
		setProcessMethod(processAudio);	
	return kTTErrNone;
}*/

TTErr TTGain::setGain(const TTValue& newValue)
{   
	//oldGain = mGain;
	mGain = dbToLinear(newValue);
	if (mInterpolated) 
		setProcessMethod(processAudioInterpolated);
	return kTTErrNone;
}


TTErr TTGain::getGain(TTValue& value)
{
	value = linearToDb(mGain);
	if (mInterpolated) 
		setProcessMethod(processAudioInterpolated);
	return kTTErrNone;
}


TTErr TTGain::setMidiGain(const TTValue& newValue)
{
	//oldGain = mGain;
	mGain = midiToLinearGain(newValue);
	if (mInterpolated) 
		setProcessMethod(processAudioInterpolated);
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
	TTSampleValue	*inSample, *outSample;
	TTUInt16		numchannels = TTAudioSignal::getMinChannelCount(in, out);
	TTUInt16		channel;

	for (channel=0; channel<numchannels; channel++) {
		inSample = in.mSampleVectors[channel];
		outSample = out.mSampleVectors[channel];
		vs = in.getVectorSizeAsInt();
		while (vs--)
			*outSample++ = (*inSample++) * mGain;
	}
	return kTTErrNone;
}


TTErr TTGain::processAudioInterpolated(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&	in = inputs->getSignal(0);
	TTAudioSignal&	out = outputs->getSignal(0);
	TTUInt16		vs = in.getVectorSizeAsInt();
	TTSampleValue	*inSample, *outSample;
	TTUInt16		numchannels = TTAudioSignal::getMinChannelCount(in, out);
	TTUInt16		channel;
	TTFloat64		increment, temp;
	increment = (mGain-oldGain)/vs;
	TTAntiDenormal(increment);
	
	for (channel=0; channel<numchannels; channel++) {
		inSample = in.mSampleVectors[channel];
		outSample = out.mSampleVectors[channel];
		vs = in.getVectorSizeAsInt();
		temp = oldGain;
		while (vs--){
			temp = temp + increment;
			*outSample++ = (*inSample++) * temp;			
		}		
	}
	oldGain = mGain;
	setProcessMethod(processAudio);
	return kTTErrNone;
}

