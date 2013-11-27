/* 
 * TTBlue Limiter Object
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTLimiter.h"

#define thisTTClass			TTLimiter
#define thisTTClassName		"limiter"
#define thisTTClassTags		"dspEffectsLib, audio, processor, dynamics, limiter"


TT_AUDIO_CONSTRUCTOR,
	recover(0.0),
	lookaheadBufferIndex(0),
	lookaheadBuffer(NULL),
	gain(NULL),
	last(0.0),
	dcBlocker(kTTSym_dcblock),
	preamp(kTTSym_gain),
	maxBufferSize(512),
	attrMode(TT("exponential"))
{
	TTUInt16	initialMaxNumChannels = arguments;
	
	// register our attributes
	registerAttribute(TT("preamp"),		kTypeFloat64,	NULL,			(TTGetterMethod)&TTLimiter::getPreamp,		(TTSetterMethod)&TTLimiter::setPreamp);
	registerAttribute(TT("postamp"),	kTypeFloat64,	&attrPostamp,	(TTGetterMethod)&TTLimiter::getPostamp,		(TTSetterMethod)&TTLimiter::setPostamp);
	registerAttribute(TT("threshold"),	kTypeFloat64,	&attrThreshold,	(TTGetterMethod)&TTLimiter::getThreshold,	(TTSetterMethod)&TTLimiter::setThreshold);
	registerAttribute(TT("lookahead"),	kTypeUInt32,	&attrLookahead, (TTSetterMethod)&TTLimiter::setLookahead);
	registerAttribute(TT("release"),	kTypeFloat64,	&attrRelease,	(TTSetterMethod)&TTLimiter::setRelease);
	registerAttribute(TT("mode"),		kTypeSymbol,	&attrMode,		(TTSetterMethod)&TTLimiter::setMode);
	registerAttribute(TT("dcBlocker"),	kTypeBoolean,	&attrDCBlocker,	(TTSetterMethod)&TTLimiter::setDCBlocker);

	// register for notifications from the parent class so we can allocate memory as required
	addUpdates(MaxNumChannels);
	// register for notifications from the parent class so we can update the release/recover values
	addUpdates(SampleRate);

	// clear the history
	addMessage(clear);

	// Set Defaults...
	setAttributeValue(kTTSym_maxNumChannels,	initialMaxNumChannels);
	setAttributeValue("threshold",				0.0);
	setAttributeValue("preamp",					0.0);
	setAttributeValue("postamp",				0.0);
	setAttributeValue("lookahead",				100);
	setAttributeValue("mode",					"exponential");
	setAttributeValue("release",				1000.0);
	setAttributeValue("dcBlocker",				YES);
	setAttributeValue("bypass",					NO);

	clear();
	setProcessMethod(processAudio);
}


TTLimiter::~TTLimiter()
{
	short i;
	
	for (i=0; i<mMaxNumChannels; i++)
		delete [] lookaheadBuffer[i];
	delete [] lookaheadBuffer;
	delete [] gain;
}


// TODO: These message receiver args should be reversed -- this is a change that should be applied throughout TTBlue
TTErr TTLimiter::updateMaxNumChannels(const TTValue& oldMaxNumChannels, TTValue&)
{
	TTUInt16	channel;
	TTUInt16	numChannels = oldMaxNumChannels;

	if (lookaheadBuffer) {
		for (channel=0; channel<numChannels; channel++)
			delete [] lookaheadBuffer[channel];
		delete [] lookaheadBuffer;
	}
	delete gain;

	gain = new TTSampleValue[maxBufferSize];
	lookaheadBuffer = new TTSampleValuePtr[mMaxNumChannels];
	for (channel=0; channel<mMaxNumChannels; channel++)
		lookaheadBuffer[channel] = new TTSampleValue[maxBufferSize];

	clear();
	
	dcBlocker.set(kTTSym_maxNumChannels, mMaxNumChannels);
	preamp.set(kTTSym_maxNumChannels, mMaxNumChannels);
	
	return kTTErrNone;
}


TTErr TTLimiter::updateSampleRate(const TTValue& oldSampleRate, TTValue&)
{
	setRecover();
	return kTTErrNone;
}


TTErr TTLimiter::setPreamp(TTValue& newValue)
{
	return preamp.set("gain", newValue);
}

TTErr TTLimiter::getPreamp(TTValue& value)
{
	return preamp.get("gain", value);
}


TTErr TTLimiter::setPostamp(const TTValue& newValue)
{
	attrPostamp = TTDecibelsToLinearGain(newValue);
	return kTTErrNone;
}

TTErr TTLimiter::getPostamp(TTValue& value)
{
	value = TTLinearGainToDecibels(attrPostamp);
	return kTTErrNone;
}


TTErr TTLimiter::setThreshold(const TTValue& newValue)
{
	attrThreshold = TTDecibelsToLinearGain(newValue);
	return kTTErrNone;
}

TTErr TTLimiter::getThreshold(TTValue& value)
{
	value = TTLinearGainToDecibels(attrThreshold);
	return kTTErrNone;
}


TTErr TTLimiter::setLookahead(TTValue& newValue)
{
	attrLookahead = TTClip(TTUInt32(newValue), TTUInt32(1), maxBufferSize-1);
    lookaheadInv = 1.0 / TTFloat64(attrLookahead);
	return kTTErrNone;
}


TTErr TTLimiter::setRelease(TTValue& newValue)
{
	attrRelease = newValue;
	setRecover();
	return kTTErrNone;
}


TTErr TTLimiter::setMode(TTValue& newValue)
{
	attrMode = newValue;
	if (attrMode == "linear")
		isLinear = true;
	else
		isLinear = false;
	setRecover();
	return kTTErrNone;
}


TTErr TTLimiter::setDCBlocker(TTValue& newValue)
{
	attrDCBlocker = newValue;
	return dcBlocker.set("bypass", !attrDCBlocker);
}


TTErr TTLimiter::clear()
{
	TTUInt32	i;
	TTUInt32	channel;
	
	for (i=0; i<maxBufferSize; i++) {
		for (channel=0; channel < mMaxNumChannels; channel++)
    		lookaheadBuffer[channel][i] = 0.0;
    	gain[i] = 1.0;		// gain is shared across channels
    }

	lookaheadBufferIndex = 0;	// was bp
	last = 1.0;
	setRecover();

	dcBlocker.send("clear");
	return kTTErrNone;
}


// set variables related to the time it takes for the limiter to recover from a peak in the audio
// it is based on the release time attr, which is specified in seconds
void TTLimiter::setRecover()
{
	recover = 1000.0 / (attrRelease * sr);		
	if (attrMode == "linear")
		recover = recover * 0.5;
	else 
		recover = recover * 0.707;
}


TTErr TTLimiter::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&	in = inputs->getSignal(0);
	TTAudioSignal&	out = outputs->getSignal(0);
	TTUInt16		vs = in.getVectorSizeAsInt();
	TTUInt16		i, j;
	TTSampleValue	tempSample;
	TTSampleValue	hotSample;
	TTFloat64		maybe,
					curgain,
					newgain,
					inc,
					acc;
	TTInt16			flag,
					lookaheadBufferPlayback,
					ind;
	TTUInt16		numchannels = TTAudioSignal::getMinChannelCount(in, out);
	TTUInt16		channel;

	// Pre-Process the input
	dcBlocker.process(in, out);	// filter out DC-Offsets (unless it is bypassed)
	preamp.process(out, in);		// copy output back to input for the rest of this process

	for (i=0; i<vs; i++) {
		hotSample = 0.0;
	
		// Analysis Stage ...
		for (channel=0; channel<numchannels; channel++) {
			tempSample = in.mSampleVectors[channel][i];
			lookaheadBuffer[channel][lookaheadBufferIndex] = tempSample * attrPostamp;
			tempSample = fabs(tempSample);
			if (tempSample > hotSample)
				hotSample = tempSample;
		}
			
		if (isLinear)
			tempSample = last + recover;
		else {
			if (last > 0.01)
				tempSample = last + recover * last;
			else
				tempSample = last + recover;
		}

		if (tempSample > attrThreshold)
			maybe = attrThreshold;
		else
			maybe = tempSample;
		gain[lookaheadBufferIndex] = maybe;
	
		lookaheadBufferPlayback = lookaheadBufferIndex - attrLookahead;
		if (lookaheadBufferPlayback < 0)
			lookaheadBufferPlayback += attrLookahead;		
		
		// Process Stage ...
		// this ***very slow*** : with a lookahead of 100, and vs = 64, we loop 640 times!
		if (hotSample * maybe > attrThreshold) {
			curgain = attrThreshold / hotSample;
			inc = (attrThreshold - curgain);
			acc = 0;
			flag = 0;
			for (j=0; flag==0 && j<attrLookahead; j++) {
				ind = lookaheadBufferIndex - j;
				if (ind<0)
					ind += maxBufferSize;
					
				if (isLinear) //TODO: can't we move this condition outside the loop? isLinear won't change during a vs [NP]
					newgain = curgain + inc * acc;
				else
					newgain = curgain + inc * (acc * acc);
					
				if (newgain < gain[ind])
					gain[ind] = newgain;
				else
					flag = 1;
				acc = acc + lookaheadInv;
			}
		}
		
		// Actual application of the gain
		for (channel=0; channel<numchannels; channel++) {
			out.mSampleVectors[channel][i] = lookaheadBuffer[channel][lookaheadBufferPlayback] * gain[lookaheadBufferPlayback];
		}
		
		last = gain[lookaheadBufferIndex];
		lookaheadBufferIndex++;
		if (lookaheadBufferIndex >= attrLookahead)
			lookaheadBufferIndex = 0;		
	}
	return kTTErrNone;
}
