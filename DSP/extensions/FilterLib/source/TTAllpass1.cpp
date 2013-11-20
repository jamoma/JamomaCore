/* 
 * First-Order Allpass Filter Object for Jamoma DSP
 * Copyright © 2003, Tim Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTAllpass1.h"

#define thisTTClass			TTAllpass1
#define thisTTClassName		"allpass.1"
#define thisTTClassTags		"dspFilterLib, audio, processor, filter, allpass"

#ifdef TT_PLATFORM_WIN
#include <Algorithm>
#endif

TT_AUDIO_CONSTRUCTOR,
	mDelay(0), 
	mDelayMax(0), 
	mDelayInSamples(0), 
	mDelayMaxInSamples(0)
{
	TTUInt16	initialMaxNumChannels = arguments;

	addAttributeWithSetter(Delay,				kTypeFloat64);
	addAttributeWithSetter(DelayInSamples,		kTypeInt64);
	addAttributeWithSetter(DelayMax,			kTypeFloat64);
	addAttributeWithSetter(DelayMaxInSamples,	kTypeInt64);
	addAttributeWithSetter(LinearGain,			kTypeFloat64);
	addAttributeWithSetter(Gain,				kTypeFloat64);
	
	addMessage(clear);
	addUpdates(SampleRate);
	addUpdates(MaxNumChannels);

	setAttributeValue(kTTSym_maxNumChannels,	initialMaxNumChannels);
	setAttributeValue(TT("linearGain"), 1.0);
	setAttributeValue(TT("delayMax"), 100.0);
	setAttributeValue(TT("delay"), 0.0);
	setProcessMethod(processAudio);
}


TTAllpass1::~TTAllpass1()
{
	;
}


// This is called every time that:
// 1. sr changes
// 2. mMaxNumChannels changes
// 3. maxNumSamples change
TTErr TTAllpass1::init(TTUInt64 newDelayMaxInSamples)
{
	if (newDelayMaxInSamples) {
		mDelayMaxInSamples = newDelayMaxInSamples;
		mDelayMax = mDelayMaxInSamples / srMill;
		
		for (TTDelayBufferIter buffer = mFeedforward.begin(); buffer != mFeedforward.end(); ++buffer) {
			buffer->resize(mDelayMaxInSamples);
			buffer->clear();
		}
		for (TTDelayBufferIter buffer = mFeedback.begin(); buffer != mFeedback.end(); ++buffer) {
			buffer->resize(mDelayMaxInSamples);
			buffer->clear();
		}
		reset();
	}
	return kTTErrNone;	
}


void TTAllpass1::reset()
{
	for (TTDelayBufferIter buffer = mFeedforward.begin(); buffer != mFeedforward.end(); ++buffer)
		buffer->setDelay(mDelayInSamples);
	for (TTDelayBufferIter buffer = mFeedback.begin(); buffer != mFeedback.end(); ++buffer)
		buffer->setDelay(mDelayInSamples);
}


TTErr TTAllpass1::updateMaxNumChannels(const TTValue& oldMaxNumChannels, TTValue&)
{
	mFeedforward.resize(mMaxNumChannels);
	mFeedback.resize(mMaxNumChannels);
	return init(mDelayMaxInSamples);
}


TTErr TTAllpass1::updateSampleRate(const TTValue& oldSampleRate, TTValue&)
{
	init(long(srMill * mDelayMax));		// allocate a larger delay buffer if neccessary	
	return setDelay(mDelay);			// hold the delay time in ms constant, despite the change of sr
}


TTErr TTAllpass1::clear()
{
	for_each(mFeedforward.begin(), mFeedforward.end(), std::mem_fun_ref(&TTDelayBuffer::clear));
	for_each(mFeedback.begin(), mFeedback.end(), std::mem_fun_ref(&TTDelayBuffer::clear));
	return kTTErrNone;
}


TTErr TTAllpass1::setGain(const TTValue& newValue)
{	
	mGain = newValue;
	mLinearGain = TTDecibelsToLinearGain(mGain);
	return kTTErrNone;
}


TTErr TTAllpass1::setLinearGain(const TTValue& newValue)
{	
	mLinearGain = newValue;
	mGain = TTLinearGainToDecibels(mLinearGain);
	return kTTErrNone;
}


TTErr TTAllpass1::setDelay(const TTValue& newValue)
{
	/*
	delay = TTClip<TTFloat64>(newValue, 0.0, delayMax);
	delayInSamples = long(delay * (sr / 1000.0));
	for (TTUInt16 channel=0; channel<mMaxNumChannels; channel++) {
		ffEndPtr[channel] = feedforward[channel] + delayInSamples;
		fbEndPtr[channel] = feedback[channel] + delayInSamples;	
	}
	return kTTErrNone;
	 */
	mDelay = TTClip<TTFloat64>(newValue, 0.0, mDelayMax);
//	mFractionalDelaySamples = mDelay * srMill;
//	mDelayInSamples = mFractionalDelaySamples;
//	mFractionalDelay = mFractionalDelaySamples - mDelayInSamples;
	mDelayInSamples = mDelay * srMill;
	
	reset();
	return kTTErrNone;	
}


TTErr TTAllpass1::setDelayInSamples(const TTValue& newValue)
{
//	mFractionalDelaySamples = TTClip<TTUInt64>(newValue, 0, mDelayMaxInSamples);
	mDelayInSamples = TTClip<TTUInt64>(newValue, 0, mDelayMaxInSamples);
//	mDelayInSamples = mFractionalDelaySamples;
//	mFractionalDelay = mFractionalDelaySamples - mDelayInSamples;
	
	mDelay = mDelayInSamples * 1000.0 * srInv;
	
	reset();
	return kTTErrNone;
}


TTErr TTAllpass1::setDelayMax(const TTValue& newValue)
{
	mDelayMax = newValue;
	mDelayMaxInSamples = mDelayMax * srMill;
	init(mDelayMaxInSamples);
	return kTTErrNone;
}


TTErr TTAllpass1::setDelayMaxInSamples(const TTValue& newValue)
{
	mDelayMaxInSamples = newValue;
	mDelayMax = mDelayMaxInSamples * 1000.0 * srInv;
	init(mDelayMaxInSamples);
	return kTTErrNone;
}


#if 0
#pragma mark -
#pragma mark dsp routines
#endif


inline TTErr TTAllpass1::calculateValue(const TTFloat64& x, TTFloat64& y, TTDelayBufferPtr* buffers)
{	
	TTDelayBufferPtr	feedforwardBuffer = buffers[0];
	TTDelayBufferPtr	feedbackBuffer = buffers[1];		// NOTE: This is a little tricky!
	TTFloat64			x1 = *feedforwardBuffer->mReadPointer;
	TTFloat64			y1 = *feedbackBuffer->mReadPointer;
	TTFloat64			alpha = mLinearGain;
	
	// Store the input in the feedforward buffer
	*feedforwardBuffer->mWritePointer = x;
	
	// Apply the filter
	// We start with the equation in standard form:
	//		y = alpha * x  +  x1  -  alpha * y1;
	// Then to a version that Fred Harris refers to as a "Re-Ordered All-Pass Filter Structure" in Multirate Signal Processing
	//		y = x1  +  alpha * x  -  alpha * y1;
	// Finally, here is a "Single Coefficient All-Pass Filter", dropping from 2 adds and 2 mults down to 2 adds and 1 mult
	y = x1 + ((x - y1) * alpha);
	
	// The possibility of denormals is always lurking for IIR filters
    TTZeroDenormal(y);
	
	// Store the output in the feedback buffer
	*feedbackBuffer->mWritePointer = y;

	// Move the heads
	feedforwardBuffer->mReadPointer++;
	feedforwardBuffer->mWritePointer++;
	feedbackBuffer->mReadPointer++;
	feedbackBuffer->mWritePointer++;
		
	// wrap the pointers in the buffer, if needed
	feedforwardBuffer->wrapForward();
	feedbackBuffer->wrapForward();
	
	return kTTErrNone;
}


TTErr TTAllpass1::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&		in = inputs->getSignal(0);
	TTAudioSignal&		out = outputs->getSignal(0);
	TTUInt16			vs;
	TTSampleValue*		inSample;
	TTSampleValue*		outSample;
	TTUInt16			numchannels = TTAudioSignal::getMinChannelCount(in, out);
	TTPtrSizedInt		channel;
	TTDelayBufferPtr	buffers[2];
		
	for (channel=0; channel<numchannels; channel++) {
		inSample = in.mSampleVectors[channel];
		outSample = out.mSampleVectors[channel];
		vs = in.getVectorSizeAsInt();
		buffers[0] = &mFeedforward[channel];
		buffers[1] = &mFeedback[channel];

		while (vs--) {
			calculateValue(*inSample, *outSample, buffers);
			outSample++;
			inSample++;
		}
	}
	return kTTErrNone;
}

