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
	TTChannelCount	initialMaxNumChannels = arguments;
	
	// Initially we have no information stored for any channels
	mStoredStateNumChannels = 0;
	
	// Register our attributes
	addAttribute(Interpolated,		kTypeBoolean);
	
	// Register messages
	addMessageWithArguments(setChannelMute);
	addMessageWithArguments(getChannelMute);
	addMessageWithArguments(setChannelSolo);
	addMessageWithArguments(getChannelSolo);
	addMessage(clear);
	
	// Register for notifications from the parent class so we can allocate memory as required
	addUpdates(MaxNumChannels);
	
	// Set defaults
	setAttributeValue(kTTSym_maxNumChannels,	initialMaxNumChannels);
	clear();
	setProcessMethod(processAudio);
}


TTMutesolo::~TTMutesolo()
{
	;
}


TTErr TTMutesolo::clear()
{
	mChannelMute.assign(mStoredStateNumChannels, 0.0);
	mChannelSolo.assign(mStoredStateNumChannels, 0.0);
	updateGains();
	return kTTErrNone;
}


TTErr TTMutesolo::updateGains()
{	
	TTChannelCount numSoloedChannels = 0;
	
	// Mute channels, and count the number of soloed channels
	for (TTChannelCount i=0; i<mStoredStateNumChannels; i++) {
		gain[i] = 1.0 - mChannelMute[i];
		if (mChannelSolo[i])
			numSoloedChannels++;
	}
	// If at least one channel is soloed, soloing takes presedence over muting
	if (numSoloedChannels>0) {
		for (TTChannelCount i=0; i<mStoredStateNumChannels; i++) {
			gain[i] = mChannelSolo[i];
		}
	}
	
	if (mInterpolated)
		setProcessMethod(processAudioInterpolated);
	
	return kTTErrNone;
}



TTErr TTMutesolo::setChannelMute(const TTValue& aValue, TTValue&)
{
	TTChannelCount channel;
	
	if (aValue.size() < 2)
		return kTTErrWrongNumValues;
	else {
		channel = aValue[0];
		
		// It might be necessary to increase the number of channels tracked (channels count from 0, so adding 1)
		increaseStoredStateNumChannels(channel+1);
		
		// Need to test for floating point as well as integer
		if ((aValue[1] == 0.) || (aValue[1] == 0))
			mChannelMute[channel] = 0.;
		else
			mChannelMute[channel] = 1.;
		
		return updateGains();
	}
}


TTErr TTMutesolo::setChannelSolo(const TTValue& aValue, TTValue&)
{
	TTChannelCount channel;
	
	if (aValue.size() < 2)
		return kTTErrWrongNumValues;
	else {
		channel = aValue[0];
		
		// It might be necessary to increase the number of channels tracked (channels count from 0, so adding 1)
		increaseStoredStateNumChannels(channel+1);
		
		// Need to test for floating point as well as integer
		if ((aValue[1] == 0.) || (aValue[1] == 0))
			mChannelSolo[channel] = 0.;
		else
			mChannelSolo[channel] = 1.;
		
		return updateGains();
	}
}


TTErr TTMutesolo::getChannelMute(const TTValue&, TTValue& aMuteValues)
{
	// Report the state for all channels, even if not all of them cureently are being processed.
	aMuteValues.resize(mStoredStateNumChannels);
	
	for (TTChannelCount i=0; i<mStoredStateNumChannels; i++) {
		aMuteValues[i] = mChannelMute[i];
	}
	return kTTErrNone;
}


TTErr TTMutesolo::getChannelSolo(const TTValue&, TTValue& aSoloValues)
{
	// Report the state for all channels, even if not all of them cureently are being processed.
	aSoloValues.resize(mStoredStateNumChannels);
	
	for (TTChannelCount i=0; i<mStoredStateNumChannels; i++) {
		aSoloValues[i] = mChannelSolo[i];
	}
	return kTTErrNone;
}


TTErr TTMutesolo::updateMaxNumChannels(const TTValue& oldMaxNumChannels, TTValue&)
{
	// mStoredStateNumChannels might need to be increased.
	return increaseStoredStateNumChannels(mMaxNumChannels);
}


TTErr TTMutesolo::increaseStoredStateNumChannels(TTChannelCount aDesiredChannel)
{
	// Only resize if the vector size need to be increased
	// In the AudioGraph Max implementation (j.mutesolo=) this permits channel solo and mute values to be set before audio/AudioGraph has processed (and hence before the object knows how many channels are to be process).
	if (aDesiredChannel > mStoredStateNumChannels) {
		
		mStoredStateNumChannels = aDesiredChannel;
		
		// The resize() method maintains all pre-existing values
		mChannelMute.resize(mStoredStateNumChannels, 0.);
		mChannelSolo.resize(mStoredStateNumChannels, 0.);
		
		gain.resize(mStoredStateNumChannels, 0.);
		oldGain.resize(mStoredStateNumChannels, 0.);
		
		updateGains();
	}
	return kTTErrNone;
}


TTErr TTMutesolo::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
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
	TTChannelCount	numchannels = TTAudioSignal::getMinChannelCount(in, out);
	TTChannelCount	channel;
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
