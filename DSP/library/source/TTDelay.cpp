/** @file
 *
 * @ingroup dspLibrary
 *
 * @brief Basic audio delay unit with 4 interpolation options.
 * 
 * @authors Timothy Place & Nathan Wolek
 *
 * @copyright Copyright © 2003-2012, Timothy Place & Nathan Wolek @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTDelay.h"

#define thisTTClass			TTDelay
#define thisTTClassName		"delay"
#define thisTTClassTags		"dspLibrary, audio, processor, delay"

#ifndef TT_PLATFORM_MAC
#include <algorithm>
#endif

TT_AUDIO_CONSTRUCTOR,
	mDelay(0),
	mDelayInSamples(0),
	mDelayMax(0),
	mDelayMaxInSamples(0)
{
	// declare attributes
	addAttributeWithSetter(Delay,				kTypeFloat64);
	addAttributeWithSetter(DelayInSamples,		kTypeFloat64);
	addAttributeWithSetter(DelayMax,			kTypeFloat64);
	addAttributeWithSetter(DelayMaxInSamples,	kTypeInt64);
	addAttributeWithSetter(Interpolation,		kTypeSymbol);

	// declare messages
	addMessage(clear);

	// updates from the parent class
	addUpdates(SampleRate);
	addUpdates(MaxNumChannels);

	// Set Defaults...
	setAttributeValue(kTTSym_maxNumChannels,	arguments);
	setAttributeValue("delayMaxInSamples", 256);
	setAttributeValue("delayInSamples", 100);
	setAttributeValue("interpolation", "cubic");
}


TTDelay::~TTDelay()
{
	;
}


// This is called every time that:
// 1. sr changes
// 2. maxNumChannels changes
// 3. maxNumSamples change
TTErr TTDelay::init(TTUInt64 newDelayMaxInSamples)
{
	if (newDelayMaxInSamples) {
		mDelayMaxInSamples = newDelayMaxInSamples;
		mDelayMax = mDelayMaxInSamples / srMill;

		for (TTDelayBufferIter buffer = mBuffers.begin(); buffer != mBuffers.end(); ++buffer) {
			buffer->resize(size_t(mDelayMaxInSamples));
			buffer->clear();
		}
		reset();
	}
	return kTTErrNone;
}


TTErr TTDelay::updateMaxNumChannels(const TTValue& oldMaxNumChannels, TTValue&)
{
	mBuffers.resize(mMaxNumChannels);
	return init(mDelayMaxInSamples);
}


TTErr TTDelay::updateSampleRate(const TTValue& oldSampleRate, TTValue&)
{
	init(long(srMill * mDelayMax));		// allocate a larger delay buffer if neccessary
	return setDelay(mDelay);			// hold the delay time in ms constant, despite the change of sr
}


TTErr TTDelay::clear()
{
	for_each(mBuffers.begin(), mBuffers.end(), std::mem_fun_ref(&TTDelayBuffer::clear));
	return kTTErrNone;
}


void TTDelay::reset()
{
	for (TTDelayBufferIter buffer = mBuffers.begin(); buffer != mBuffers.end(); ++buffer)
		buffer->setDelay(TTUInt32(mIntegralDelay)); // TTDelayBuffer requires the integer portion of the delay in samples
}


TTErr TTDelay::setDelay(const TTValue& newValue)
{
	mDelay = TTClip<TTFloat64>(newValue, 0.0, mDelayMax);
	mDelayInSamples = mDelay * srMill;
	mIntegralDelay = mDelayInSamples;
	mFractionalDelay = mDelayInSamples - mIntegralDelay;

	reset();
	return kTTErrNone;
}


TTErr TTDelay::setDelayInSamples(const TTValue& newValue)
{
	mDelayInSamples = TTClip<TTFloat64>(newValue, 0, mDelayMaxInSamples);
	mIntegralDelay = mDelayInSamples;
	mFractionalDelay = mDelayInSamples - mIntegralDelay;

	mDelay = mDelayInSamples * 1000.0 * srInv;

	reset();
	return kTTErrNone;
}


TTErr TTDelay::setDelayMax(const TTValue& newValue)
{
	mDelayMax = newValue;
	mDelayMaxInSamples = mDelayMax * srMill;
	init(mDelayMaxInSamples);
	return kTTErrNone;
}


TTErr TTDelay::setDelayMaxInSamples(const TTValue& newValue)
{
	mDelayMaxInSamples = newValue;
	mDelayMax = mDelayMaxInSamples * 1000.0 * srInv;
	init(mDelayMaxInSamples);
	return kTTErrNone;
}


TTErr TTDelay::setInterpolation(const TTValue& newValue)
{
	mInterpolation = newValue;

	if (mInterpolation == "none") {
		setProcessMethod(processAudioNoInterpolation);
	}
	else if (mInterpolation == "linear") {
		setProcessMethod(processAudioLinearInterpolation);
	}
	else if (mInterpolation == "cosine") {
		setProcessMethod(processAudioCosineInterpolation);
	}
	else if (mInterpolation == "cubic") {
		setProcessMethod(processAudioCubicInterpolation);
	}
	else {
		setProcessMethod(processAudioLinearInterpolation);
		return kTTErrInvalidValue;
	}
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
		buffer = &mBuffers[channel]; \
		\
		while (vs--) { \
			methodName (*inSample, *outSample, buffer); \
			outSample++; \
			inSample++; \
		} \
	}\
	return kTTErrNone;
//////////////////////////////////////////////////////////////////////////////////////////
// No Interpolation

inline TTErr TTDelay::calculateNoInterpolation(const TTFloat64& x, TTFloat64& y, TTDelayBufferPtr buffer)
{
	*(buffer->mWritePointer) = x;		// write the input into our buffer
	y = *(buffer->mReadPointer);		// fetch the output from our buffer

	// advance the pointers
	buffer->mWritePointer++;
	buffer->mReadPointer++;

	// wrap the pointers in the buffer, if needed
	if (buffer->mWritePointer > buffer->tail())
		buffer->mWritePointer = buffer->head();
	if (buffer->mReadPointer > buffer->tail())
		buffer->mReadPointer = buffer->head();

	return kTTErrNone;
}

TTErr TTDelay::calculateNoInterpolation(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel)
{
	TTDelayBufferPtr buffer = &mBuffers[channel];
	return calculateNoInterpolation(x, y, buffer);
}


TTErr TTDelay::processAudioNoInterpolation(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTDELAY_WRAP_CALCULATE_METHOD(calculateNoInterpolation);
}

//////////////////////////////////////////////////////////////////////////////////////////
// Linear Interpolation


inline TTErr TTDelay::calculateLinearInterpolation(const TTFloat64& x, TTFloat64& y, TTDelayBufferPtr buffer)
{
	*(buffer->mWritePointer) = x;		// write the input into our buffer

	// move the record head, since we are done with it
	buffer->mWritePointer++;
	if (buffer->mWritePointer > buffer->tail())
		buffer->mWritePointer = buffer->head();

	// store the value of the integer part of delayInSamples
	TTSampleValue delaySample0 = *(buffer->mReadPointer);
	
	// store the value of the sample *before* it for interpolation
	TTSampleValuePtr delaySample1Ptr = buffer->mReadPointer - 1;
	delaySample1Ptr = buffer->wrapPointer(delaySample1Ptr);
	TTSampleValue delaySample1 = *(delaySample1Ptr);

	// now you are ready to interpolate
	y = TTInterpolateLinear(delaySample0, delaySample1, mFractionalDelay);
	
	// then move the play head
	buffer->mReadPointer++;
	if (buffer->mReadPointer > buffer->tail())
		buffer->mReadPointer = buffer->head();

	return kTTErrNone;
}

TTErr TTDelay::calculateLinearInterpolation(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel)
{
	TTDelayBufferPtr buffer = &mBuffers[channel];
	return calculateLinearInterpolation(x, y, buffer);
}

TTErr TTDelay::processAudioLinearInterpolation(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTDELAY_WRAP_CALCULATE_METHOD(calculateLinearInterpolation);
}

//////////////////////////////////////////////////////////////////////////////////////////
// Cosine Interpolation


TTErr TTDelay::calculateCosineInterpolation(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel)
{
	TTDelayBufferPtr buffer = &mBuffers[channel];
	return calculateCosineInterpolation(x, y, buffer);
}

inline TTErr TTDelay::calculateCosineInterpolation(const TTFloat64& x, TTFloat64& y, TTDelayBufferPtr buffer)
{   //http://freespace.virgin.net/hugo.elias/models/m_perlin.htm
	
	*buffer->mWritePointer = x;		// write the input into our buffer
	
	// move the record head, since we are done with it
	buffer->mWritePointer++;
	if (buffer->mWritePointer > buffer->tail())
		buffer->mWritePointer = buffer->head();
	
	// store the value of the integer part of delayInSamples
	TTSampleValue delaySample0 = *(buffer->mReadPointer);
	
	// store the value of the sample *before* it for interpolation
	TTSampleValuePtr delaySample1Ptr = buffer->mReadPointer - 1;
	delaySample1Ptr = buffer->wrapPointer(delaySample1Ptr);
	TTSampleValue delaySample1 = *(delaySample1Ptr);

	// now you are ready to interpolate
	y = TTInterpolateCosine(delaySample0, delaySample1, mFractionalDelay);
	
	// then move the play head
	buffer->mReadPointer++;
	if (buffer->mReadPointer > buffer->tail())
		buffer->mReadPointer = buffer->head();
	
	return kTTErrNone;
}


TTErr TTDelay::processAudioCosineInterpolation(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTDELAY_WRAP_CALCULATE_METHOD(calculateCosineInterpolation);
}


//////////////////////////////////////////////////////////////////////////////////////////
// f-point Interpolation

// NW: not sure these references are valid anymore, now that TTInterpolate method is used
// Four-point interpolation as described @ http://crca.ucsd.edu/~msp/techniques/latest/book-html/node114.html
// and http://crca.ucsd.edu/~msp/techniques/latest/book-html/node31.html#tab02.1
// Additional reading on cubic interpolation can be found
// here: http://www.paulinternet.nl/?page=bicubic
// and here: http://paulbourke.net/miscellaneous/interpolation/
// similar to what is implemented in Pd's vd~ object
// note that in initial tests there appears to be slight signal boost

inline TTErr TTDelay::calculateCubicInterpolation(const TTFloat64& x, TTFloat64& y, TTDelayBufferPtr buffer)
{
	
	*buffer->mWritePointer = x;		// write the input into our buffer

	// move the record head, since we are done with it
	buffer->mWritePointer++;
	if (buffer->mWritePointer > buffer->tail())
		buffer->mWritePointer = buffer->head();
		
	// sneak a zero into the buffer so that delayInSamples between 0 and 1 will work
	*buffer->mWritePointer = 0;

	// store the value of the integer part of delayInSamples
	TTSampleValue delaySample0 = *(buffer->mReadPointer);
	
	// store the value from 1 sample *before* mReadPointer for interpolation
	TTSampleValuePtr delaySample1Ptr = buffer->mReadPointer - 1;
	delaySample1Ptr = buffer->wrapPointer(delaySample1Ptr);
	TTSampleValue delaySample1 = *(delaySample1Ptr);
	
	// store the value from 2 samples *before* mReadPointer for interpolation
	TTSampleValuePtr delaySample2Ptr = buffer->mReadPointer - 2;
	delaySample2Ptr = buffer->wrapPointer(delaySample2Ptr);
	TTSampleValue delaySample2 = *(delaySample2Ptr);
	
	// store the value from 1 sample *after* mReadPointer for interpolation
	TTSampleValuePtr delaySampleMinus1Ptr = buffer->mReadPointer + 1;
	delaySampleMinus1Ptr = buffer->wrapPointer(delaySampleMinus1Ptr);
	TTSampleValue delaySampleMinus1 = *(delaySampleMinus1Ptr);

	// now you are ready to interpolate
	y = TTInterpolateCubic(delaySampleMinus1, delaySample0, delaySample1, delaySample2, mFractionalDelay);
	
	// then move the play head
	buffer->mReadPointer++;
	if (buffer->mReadPointer > buffer->tail())
		buffer->mReadPointer = buffer->head();
	
	return kTTErrNone;
}

TTErr TTDelay::calculateCubicInterpolation(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel)
{
	TTDelayBufferPtr buffer = &mBuffers[channel];
	return calculateCubicInterpolation(x, y, buffer);
}

TTErr TTDelay::processAudioCubicInterpolation(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTDELAY_WRAP_CALCULATE_METHOD(calculateCubicInterpolation);
}







// Process with a delay time set by a signal
//TTErr TTDelay::processAudioNoInterpolationWithDelaySignal(TTAudioSignal& in, TTAudioSignal& delayIn, TTAudioSignal& out, TTAudioSignal&)
//{
	/*	temp_vs = in->vectorsize;

	 // CALCULATE THE DELAY TIME
	 delay_ms = *in2->vector;		// Because this is the Lo-Fi loop, just do this at the vector...
	 fdelay_samples = delay_ms * m_sr;
	 delay_samples = (tt_attribute_value_discrete)fdelay_samples;
	 fractional_delay = fdelay_samples - delay_samples;

	 while (temp_vs--) {
	 *in_ptr++ = *in->vector++;		// Store Input
	 *out->vector++ = *out_ptr++;	// Find Output

	 if (in_ptr > end_ptr)	// Buffer Managment...
	 in_ptr = buffer;
	 if (out_ptr > end_ptr)
	 out_ptr = buffer;
	 }
	 in->reset(); in2->reset(); out->reset();
	 */
//	return kTTErrNone;
//}


//TTErr TTDelay::processAudioLinearInterpolationWithDelaySignal(TTAudioSignal& in, TTAudioSignal& delayIn, TTAudioSignal& out, TTAudioSignal&)
//{
/*
 tt_sample_value	temp;
 tt_sample_value	*next;

 if (buffer == NULL)
 return;

 temp_vs = in1->vectorsize;
 while (temp_vs--) {
 *in_ptr = *in1->vector++;		// Store the audio input @ the record head
 delay_ms = *in2->vector++;		// Store the delay time input
 //		delay_ms = clip(*in2->vector++, 0.f, delay_ms_max);		// Store the delay time input

 // CALCULATE THE DELAY TIME
 // delay_samples = clip(long(delay_ms * m_sr), long(0), delay_samples_max);
 //		delay_samples = delay_ms * m_sr;
 fdelay_samples = delay_ms * m_sr;
 delay_samples = (tt_attribute_value_discrete)fdelay_samples;
 fractional_delay = fdelay_samples - delay_samples;

 //		end_ptr = buffer + delay_samples;					// set pointer to the end of the buffer

 // MOVE THE RECORD HEAD
 in_ptr++;
 if (in_ptr > end_ptr)
 in_ptr = buffer;
 //		*in_ptr = *in1->vector++;		// Store the audio input @ the record head

 // MOVE THE PLAY HEAD
 out_ptr = in_ptr - delay_samples;
 if (out_ptr > end_ptr)
 out_ptr = buffer + (out_ptr - end_ptr);
 else if (out_ptr < buffer)
 out_ptr = end_ptr + (out_ptr - buffer) + 1;

 // STORE THE VALUE OF THE NEXT SAMPLE IN THE BUFFER FOR INTERPOLATION
 next = out_ptr + 1;
 if (next > end_ptr)
 next = buffer + (next - end_ptr);
 else if (next < buffer)
 next = end_ptr + (next - buffer) + 1;
 temp = *next;

 // Interpolate between the play head value (from above) and the next value in the buffer
 *out->vector++ = (temp * (1.0 - fractional_delay)) + (*out_ptr * fractional_delay);
 }
 in1->reset(); in2->reset(); out->reset();
 //log_post("delay_signal_ms: %f, samples: %f (%i)", delay_ms, fdelay_samples, delay_samples);
 */
//	return kTTErrNone;
//}


//TTErr TTDelay::processAudioCubicInterpolationWithDelaySignal(TTAudioSignal& in, TTAudioSignal& delayIn, TTAudioSignal& out, TTAudioSignal&)
//{
//	return kTTErrNone;
//}



