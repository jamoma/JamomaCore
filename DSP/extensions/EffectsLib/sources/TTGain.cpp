/** @file
 *
 * @ingroup dspEffectsLib
 *
 * @brief #TTGain adjusts adio gain
 *
 * @authors Timothy Place, Trond Lossius
 *
 * @copyright Copyright © 2010, Timothy Place @n
 * License: This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTGain.h"

#define thisTTClass			TTGain
#define thisTTClassName		"gain"
#define thisTTClassTags		"dspEffectsLib, audio, processor, dynamics"


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


// db range is clipped at low end to -96 dB

#pragma mark -
#pragma mark dB set/get

TTErr TTGain::setGain(const TTValue& newValue)
{   
	mGain = TTDecibelsToLinearGainClipped(newValue);
	if (mInterpolated) 
		setProcessMethod(processAudioInterpolated);
	return kTTErrNone;
}


TTErr TTGain::getGain(TTValue& value)
{
	value = TTLinearGainToDecibelsClipped(mGain);
	if (mInterpolated) 
		setProcessMethod(processAudioInterpolated);
	return kTTErrNone;
}


#pragma mark -
#pragma mark midigain set/get

TTErr TTGain::setMidiGain(const TTValue& newValue)
{
	mGain = TTMidiToLinearGain(newValue);
	if (mInterpolated) 
		setProcessMethod(processAudioInterpolated);
	return kTTErrNone;
}


TTErr TTGain::getMidiGain(TTValue& value)
{
	value = TTLinearGainToMidi(mGain);
	return kTTErrNone;
}


#pragma mark -
#pragma mark audio

TTErr TTGain::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&	in = inputs->getSignal(0);
	TTAudioSignal&	out = outputs->getSignal(0);
	TTUInt16		vs;
	TTSampleValue	*inSample, *outSample;
	TTChannelCount	numchannels = TTAudioSignal::getMinChannelCount(in, out);
	TTChannelCount	channel;

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
	TTChannelCount	numchannels = TTAudioSignal::getMinChannelCount(in, out);
	TTChannelCount	channel;
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

