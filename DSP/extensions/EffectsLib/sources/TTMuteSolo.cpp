/** @file
 *
 * @ingroup dspEffectsLib
 *
 * @brief ##TTMutesolo mutes and soloes channels.
 *
 * @authors Trond Lossius
 *
 * @copyright Copyright © 2014, Trond Lossius @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTMuteSolo.h"

#define thisTTClass			TTMutesolo
#define thisTTClassName		"mutesolo"
#define thisTTClassTags		"dspEffectsLib, audio, processor"


TT_AUDIO_CONSTRUCTOR,
mInterpolated(0)
{
	addAttribute(Interpolated,		kTypeBoolean);
	
	// register for notifications from the parent class so we can allocate memory as required
	addUpdates(MaxNumChannels);
	
	setProcessMethod(processAudio);
}


TTMutesolo::~TTMutesolo()
{
	;
}


TTErr TTMutesolo::clear()
{
	mMute.assign(mMaxNumChannels, 0.0);
	mSolo.assign(mMaxNumChannels, 0.0);
	updateGains();
	return kTTErrNone;
}


TTErr TTMutesolo::updateGains()
{	
	TTUInt16 numSoloedChannels = 0;
	
	// Mute channels, and count the number of soloed channels
	for (TTUInt16 i=0; i<mMaxNumChannels; i++) {
		gain[i] = 1.0 - mMute[i];
		if (mSolo[i])
			numSoloedChannels++;
	}
	// If at least one channel is soloed, soloing takes presedence over muting
	if (numSoloedChannels>0) {
		for (TTUInt16 i=0; i<mMaxNumChannels; i++) {
			gain[i] = mSolo[i];
		}
	}
	
	if (mInterpolated)
		setProcessMethod(processAudioInterpolated);
	
	return kTTErrNone;
}


TTErr TTMutesolo::updateMaxNumChannels(const TTValue& oldMaxNumChannels, TTValue&)
{
	// TODO: Is it possible to keep current values when resizing?
	mMute.resize(mMaxNumChannels);
	mSolo.resize(mMaxNumChannels);
	
	gain.resize(mMaxNumChannels);
	oldGain.resize(mMaxNumChannels);
	
	clear();
	
	for (TTUInt16 i=0; i<mMaxNumChannels; i++)
		oldGain[i] = gain[i];
	
	return kTTErrNone;
}


TTErr TTMutesolo::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
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
			*outSample++ = (*inSample++) * gain[channel];
	}
	return kTTErrNone;
}


TTErr TTMutesolo::processAudioInterpolated(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&	in = inputs->getSignal(0);
	TTAudioSignal&	out = outputs->getSignal(0);
	TTUInt16		vs = in.getVectorSizeAsInt();
	TTSampleValue	*inSample, *outSample;
	TTUInt16		numchannels = TTAudioSignal::getMinChannelCount(in, out);
	TTUInt16		channel;
	TTFloat64		increment, temp;
	
	for (channel=0; channel<numchannels; channel++) {
		increment = (gain[channel] - oldGain[channel])/vs;
		TTAntiDenormal(increment);
		temp = oldGain[channel];
		
		inSample = in.mSampleVectors[channel];
		outSample = out.mSampleVectors[channel];
		vs = in.getVectorSizeAsInt();
		
		while (vs--){
			temp = temp + increment;
			*outSample++ = (*inSample++) * temp;
		}
		oldGain[channel] = gain[channel];
	}
	
	setProcessMethod(processAudio);
	return kTTErrNone;
}
