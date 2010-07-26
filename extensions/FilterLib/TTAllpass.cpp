/* 
 * Allpass Filter Object for Jamoma DSP
 * Copyright © 2003, Tim Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTAllpass.h"

#define thisTTClass			TTAllpass
#define thisTTClassName		"allpass"
#define thisTTClassTags		"audio, processor, filter, allpass"

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
	
	addMessage(Clear);
	addMessage(updateSr);
	addMessageWithArgument(updateMaxNumChannels);

	setAttributeValue(TT("MaxNumChannels"),	initialMaxNumChannels);
	setAttributeValue(TT("LinearGain"), 1.0);
	setAttributeValue(TT("Delay"), 0.0);
	setProcessMethod(processAudio);
}


TTAllpass::~TTAllpass()
{
	;
}


// This is called every time that:
// 1. sr changes
// 2. maxNumChannels changes
// 3. maxNumSamples change
TTErr TTAllpass::init(TTUInt64 newDelayMaxInSamples)
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


void TTAllpass::reset()
{
	for (TTDelayBufferIter buffer = mFeedforward.begin(); buffer != mFeedforward.end(); ++buffer)
		buffer->setDelay(mDelayInSamples);
	for (TTDelayBufferIter buffer = mFeedback.begin(); buffer != mFeedback.end(); ++buffer)
		buffer->setDelay(mDelayInSamples);
}


TTErr TTAllpass::updateMaxNumChannels(const TTValue& oldMaxNumChannels)
{
	mFeedforward.resize(maxNumChannels);
	mFeedback.resize(maxNumChannels);
	return init(mDelayMaxInSamples);
}


TTErr TTAllpass::updateSr()
{
	init(long(srMill * mDelayMax));		// allocate a larger delay buffer if neccessary	
	return setDelay(mDelay);			// hold the delay time in ms constant, despite the change of sr
}


TTErr TTAllpass::Clear()
{
	for_each(mFeedforward.begin(), mFeedforward.end(), mem_fun_ref(&TTDelayBuffer::clear));
	for_each(mFeedback.begin(), mFeedback.end(), mem_fun_ref(&TTDelayBuffer::clear));
	return kTTErrNone;
}


TTErr TTAllpass::setGain(const TTValue& newValue)
{	
	mGain = newValue;
	mLinearGain = dbToLinear(mGain);
	return kTTErrNone;
}


TTErr TTAllpass::setLinearGain(const TTValue& newValue)
{	
	mLinearGain = newValue;
	mGain = linearToDb(mLinearGain);
	return kTTErrNone;
}


TTErr TTAllpass::setDelay(const TTValue& newValue)
{
	/*
	delay = TTClip<TTFloat64>(newValue, 0.0, delayMax);
	delayInSamples = long(delay * (sr / 1000.0));
	for (TTUInt16 channel=0; channel<maxNumChannels; channel++) {
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


TTErr TTAllpass::setDelayInSamples(const TTValue& newValue)
{
//	mFractionalDelaySamples = TTClip<TTUInt64>(newValue, 0, mDelayMaxInSamples);
	mDelayInSamples = TTClip<TTUInt64>(newValue, 0, mDelayMaxInSamples);
//	mDelayInSamples = mFractionalDelaySamples;
//	mFractionalDelay = mFractionalDelaySamples - mDelayInSamples;
	
	mDelay = mDelayInSamples * 1000.0 * srInv;
	
	reset();
	return kTTErrNone;
}


TTErr TTAllpass::setDelayMax(const TTValue& newValue)
{
	mDelayMax = newValue;
	mDelayMaxInSamples = mDelayMax * srMill;
	init(mDelayMaxInSamples);
	return kTTErrNone;
}


TTErr TTAllpass::setDelayMaxInSamples(const TTValue& newValue)
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


#define TTDELAY_WRAP_CALCULATE_METHOD(methodName) \
	TTAudioSignal&		in = inputs->getSignal(0); \
	TTAudioSignal&		out = outputs->getSignal(0); \
	TTUInt16			vs; \
	TTSampleValue*		inSample; \
	TTSampleValue*		outSample; \
	TTUInt16			numchannels = TTAudioSignal::getMinChannelCount(in, out); \
	TTPtrSizedInt		channel; \
	TTDelayBufferPtr	buffer; \
	\
	for (channel=0; channel<numchannels; channel++) { \
		inSample = in.mSampleVectors[channel]; \
		outSample = out.mSampleVectors[channel]; \
		vs = in.getVectorSizeAsInt(); \
		buffer = &mFeedforward[channel]; \
		\
		while (vs--) { \
			methodName (*inSample, *outSample, buffer); \
			outSample++; \
			inSample++; \
		} \
	}\
	return kTTErrNone;


inline TTErr TTAllpass::calculateValue(const TTFloat64& x, TTFloat64& y, TTDelayBufferPtr buffers)
{	
	TTDelayBufferPtr	feedforwardBuffer = buffers;
	TTDelayBufferPtr	feedbackBuffer = buffers+1;		// NOTE: This is a little tricky!
	
	// Store the input in the feedforward buffer
	*feedforwardBuffer->mWritePointer = x;
	
	// Apply the filter
	y = (*feedforwardBuffer->mReadPointer) + (x * (-mLinearGain)) + (*feedbackBuffer->mReadPointer * mLinearGain);
    TTZeroDenormal(y); 
	// Store the output in the feedback buffer
	*feedbackBuffer->mWritePointer = y;

	// Move the heads
	feedforwardBuffer->mReadPointer++;
	feedforwardBuffer->mWritePointer++;
	feedbackBuffer->mReadPointer++;
	feedbackBuffer->mWritePointer++;
		
	// wrap the pointers in the buffer, if needed
	if (feedforwardBuffer->mWritePointer > feedforwardBuffer->tail())
		feedforwardBuffer->mWritePointer = feedforwardBuffer->head();
	if (feedforwardBuffer->mReadPointer > feedforwardBuffer->tail())
		feedforwardBuffer->mReadPointer = feedforwardBuffer->head();				
	if (feedbackBuffer->mWritePointer > feedbackBuffer->tail())
		feedbackBuffer->mWritePointer = feedbackBuffer->head();
	if (feedbackBuffer->mReadPointer > feedbackBuffer->tail())
		feedbackBuffer->mReadPointer = feedbackBuffer->head();				
	
	return kTTErrNone;
}


TTErr TTAllpass::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTDELAY_WRAP_CALCULATE_METHOD(calculateValue);
}

/*
// DSP LOOP
TT_INLINE void tt_allpass::dsp_vector_calc(tt_audio_signal *in, tt_audio_signal *out)
{
	tt_sample_value temp;
	temp_vs = in->vectorsize;
	
	while (temp_vs--) {
		temp = anti_denormal(*in->vector++);	// Input	
		*ff_in_ptr = temp;		// Store the input in the feedforward buffer
		
		// Apply the filter
		temp = anti_denormal((*ff_out_ptr) + (temp * (-gain)) + (*fb_out_ptr * gain));	
		
		*fb_in_ptr = temp;		// Store the output in the feedback buffer
		*out->vector++ = temp;	// Output
		
		// Move the heads
		ff_in_ptr++;
		ff_out_ptr++;
		fb_in_ptr++;
		fb_out_ptr++;
		
		// Wrap the heads
		if (ff_in_ptr > ff_end_ptr)
			ff_in_ptr = ff_buffer;
		if (ff_out_ptr > ff_end_ptr)
			ff_out_ptr = ff_buffer;	
		if (fb_in_ptr > fb_end_ptr)
			fb_in_ptr = fb_buffer;
		if (fb_out_ptr > fb_end_ptr)
			fb_out_ptr = fb_buffer;	
	}
}
*/
