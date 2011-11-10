/*
 * TTAverage - measuring of aveaged and RMS signal energy 
 * Copyright © 2011, Tim Place, Nils Peters
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTAverage.h"

#define thisTTClass			TTAverage
#define thisTTClassName		"average"
#define thisTTClassTags		"audio, analysis, rms, energy, movingAverage"


#ifndef TT_PLATFORM_MAC
#include <algorithm>
#endif


TT_AUDIO_CONSTRUCTOR,
mMaxInterval(2000),
mInterval(100)
{
	TTUInt16	initialMaxNumChannels = arguments;
    
	addAttributeWithSetter(Mode,			kTypeSymbol); //absolute, bipolar, rms
	addAttributeWithSetter(MaxInterval,		kTypeInt64);
	addAttributeWithSetter(Interval,		kTypeInt64);
		addAttributeProperty(Interval,			range,			TTValue(1, mMaxInterval));
		addAttributeProperty(Interval,			rangeChecking,	TT("clip"));
	addMessage(clear);
	addUpdates(SampleRate);
	addUpdates(MaxNumChannels);

   	// Set Defaults
	setAttributeValue(kTTSym_maxNumChannels,	initialMaxNumChannels);
	setAttributeValue(TT("maxInterval"), 2000);
	setAttributeValue(TT("mode"), TT("bipolar")); //absolute, bipolar, rms
	setAttributeValue(TT("interval"), 100); //100 sample window length of moving average window
	//TODO: add attribute to set interval in ms, rather than in samples
	
}


TTAverage::~TTAverage()
{
	;
}


TTErr TTAverage::init(TTUInt64 newDelayMaxInSamples)
{
	
		for (TTDelayBufferIter buffer = mBins.begin(); buffer != mBins.end(); ++buffer) {
			buffer->resize(mMaxInterval);
			buffer->clear();
		}
		reset();

return kTTErrNone;
}


TTErr TTAverage::updateMaxNumChannels(const TTValue& oldMaxNumChannels, TTValue&)
{
	mAccumulator.resize(maxNumChannels);
	mBins.resize(maxNumChannels);
	return init(mMaxInterval);
}

void TTAverage::reset()
{
	for (TTDelayBufferIter buffer = mBins.begin(); buffer != mBins.end(); ++buffer)
		buffer->setDelay(mInterval);	

}


TTErr TTAverage::clear()
{   
	for_each(mBins.begin(), mBins.end(), mem_fun_ref(&TTDelayBuffer::clear));
	mAccumulator.assign(maxNumChannels, 0.0);
	return kTTErrNone;
}


TTErr TTAverage::setMode(const TTValue& newValue)
{
	if (mMode != newValue){
		clear();
		reset();
		mMode = newValue;
	}
	
	if (mMode == TT("bipolar"))
		return setProcessMethod(processBipolarAverage);
	if (mMode == TT("absolute"))
		return setProcessMethod(processAbsoluteAverage);
	if (mMode == TT("rms"))
		return setProcessMethod(processRmsAverage);
	else{
		setProcessMethod(processBipolarAverage);
		return kTTErrInvalidValue;
	}
}

TTErr TTAverage::setInterval(const TTValue& newValue)
{
	mInterval = newValue; 
	mIntervalReciprocal = 1.0/mInterval;
	reset();
	clear();
	return kTTErrNone;
}

TTErr TTAverage::setMaxInterval(const TTValue& newValue)
{
	mMaxInterval = newValue; 
	
	return init(mMaxInterval);
}


TTErr TTAverage::updateSampleRate(const TTValue&, TTValue&)
{
	//TODO: when window length is set with time, we have to recompute the length in samples and resize mBins
	return kTTErrNone; 
}

#if 0
#pragma mark -
#pragma mark dsp routines
#endif


#define TTAVERAGE_WRAP_CALCULATE_METHOD(methodName) \
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
buffer = &mBins[channel]; \
\
while (vs--) { \
methodName (*inSample, *outSample, buffer, channel); \
outSample++; \
inSample++; \
} \
}\
return kTTErrNone;


TTErr TTAverage::calculateAbsoluteValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel)
{
	TTDelayBufferPtr buffer = &mBins[channel];
	return calculateAbsoluteValue(x, y, buffer, channel);
}


TTErr TTAverage::processAbsoluteAverage(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAVERAGE_WRAP_CALCULATE_METHOD(calculateAbsoluteValue);

}

inline TTErr TTAverage::calculateAbsoluteValue(const TTFloat64& x, TTFloat64& y, TTDelayBufferPtr buffer, TTPtrSizedInt channel)
{
	mAccumulator[channel] -= *buffer->mReadPointer++; 
	mAccumulator[channel] += *buffer->mWritePointer++ = fabs(x); 
	y = mAccumulator[channel] * mIntervalReciprocal;
	
	// wrap the pointers in the buffer, if needed
	if (buffer->mWritePointer > buffer->tail())
		buffer->mWritePointer = buffer->head();
	if (buffer->mReadPointer > buffer->tail())
		buffer->mReadPointer = buffer->head();
	
	
	return kTTErrNone;
}

TTErr TTAverage::calculateBipolarValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel)
{
	TTDelayBufferPtr buffer = &mBins[channel];
	return calculateBipolarValue(x, y, buffer, channel);
}

TTErr TTAverage::processBipolarAverage(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAVERAGE_WRAP_CALCULATE_METHOD(calculateBipolarValue);
}

inline TTErr TTAverage::calculateBipolarValue(const TTFloat64& x, TTFloat64& y, TTDelayBufferPtr buffer, TTPtrSizedInt channel)
{
	mAccumulator[channel] -= *buffer->mReadPointer++; 
	mAccumulator[channel] += *buffer->mWritePointer++ = x;	
	y = mAccumulator[channel] * mIntervalReciprocal;
	
	// wrap the pointers in the buffer, if needed
	if (buffer->mWritePointer > buffer->tail())
		buffer->mWritePointer = buffer->head();
	if (buffer->mReadPointer > buffer->tail())
		buffer->mReadPointer = buffer->head();
	
	return kTTErrNone;
}


TTErr TTAverage::calculateRmsValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel)
{
	TTDelayBufferPtr buffer = &mBins[channel];
	return calculateRmsValue(x, y, buffer, channel);
}

TTErr TTAverage::processRmsAverage(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAVERAGE_WRAP_CALCULATE_METHOD(calculateRmsValue);

}

inline TTErr TTAverage::calculateRmsValue(const TTFloat64& x, TTFloat64& y, TTDelayBufferPtr buffer, TTPtrSizedInt channel)
{
	mAccumulator[channel] -= *buffer->mReadPointer++; 
	mAccumulator[channel] += *buffer->mWritePointer++ = x*x;
	y = sqrt(mAccumulator[channel] * mIntervalReciprocal);
	
	// wrap the pointers in the buffer, if needed
	if (buffer->mWritePointer > buffer->tail())
		buffer->mWritePointer = buffer->head();
	if (buffer->mReadPointer > buffer->tail())
		buffer->mReadPointer = buffer->head();
		
	return kTTErrNone;
}





