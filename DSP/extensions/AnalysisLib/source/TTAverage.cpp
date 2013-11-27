/** @file
 *
 * @ingroup dspAnalysisLib
 *
 * @brief TTAverage - measuring of averaged and RMS signal energy
 *
 * @details
 *
 * @authors Nils Peters, Tim Place, Trond Lossius
 *
 * @copyright Copyright © 2011, Nils Peters, Tim Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTAverage.h"

#define thisTTClass			TTAverage
#define thisTTClassName		"average"
#define thisTTClassTags		"dspAnalysisLib, audio, analysis, rms, energy, movingAverage"


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


TTErr TTAverage::updateMaxNumChannels(const TTValue& aNotUsed1, TTValue& aNotUsed2)
{
	mAccumulator.resize(mMaxNumChannels);
	mBins.resize(mMaxNumChannels);
	return init(mMaxInterval);
}

void TTAverage::reset()
{
	for (TTDelayBufferIter buffer = mBins.begin(); buffer != mBins.end(); ++buffer)
		buffer->setDelay(mInterval);	

}


TTErr TTAverage::clear()
{   
	for_each(mBins.begin(), mBins.end(), std::mem_fun_ref(&TTDelayBuffer::clear));
	mAccumulator.assign(mMaxNumChannels, 0.0);
	return kTTErrNone;
}


TTErr TTAverage::setMode(const TTValue& aNewMode)
{
	TTSymbol newMode = aNewMode;
	
	if (mMode != newMode) {
		clear();
		reset();
		mMode = newMode;
	}
	
	if (mMode == TT("bipolar"))
		return setProcessMethod(processBipolarAverage);
	if (mMode == TT("absolute"))
		return setProcessMethod(processAbsoluteAverage);
	if (mMode == TT("rms"))
		return setProcessMethod(processRmsAverage);
	else {
		setProcessMethod(processBipolarAverage);
		return kTTErrInvalidValue;
	}
}

TTErr TTAverage::setInterval(const TTValue& aNewInterval)
{
	mInterval = aNewInterval;
	mIntervalReciprocal = 1.0/mInterval;
	reset();
	clear();
	return kTTErrNone;
}

TTErr TTAverage::setMaxInterval(const TTValue& aNewMaxInterval)
{
	mMaxInterval = aNewMaxInterval; 
	
	return init(mMaxInterval);
}


TTErr TTAverage::updateSampleRate(const TTValue& aNotUsed1, TTValue& aNotUsed2)
{
	//TODO: See header file for details
	return kTTErrNone; 
}

#if 0
#pragma mark -
#pragma mark dsp routines
#endif


// Macro that is used to wrap the various processing methods for one channel as methods processing all channels.
#define TTAVERAGE_WRAP_CALCULATE_METHOD(methodName) \
TTAudioSignal&		in = anInputs->getSignal(0); \
TTAudioSignal&		out = anOutputs->getSignal(0); \
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


TTErr TTAverage::calculateAbsoluteValue(const TTFloat64& anInput, TTFloat64& anOutput, TTPtrSizedInt aChannel)
{
	TTDelayBufferPtr buffer = &mBins[aChannel];
	return calculateAbsoluteValue(anInput, anOutput, buffer, aChannel);
}


TTErr TTAverage::processAbsoluteAverage(TTAudioSignalArrayPtr anInputs, TTAudioSignalArrayPtr anOutputs)
{
	TTAVERAGE_WRAP_CALCULATE_METHOD(calculateAbsoluteValue);

}

inline TTErr TTAverage::calculateAbsoluteValue(const TTFloat64& anInput, TTFloat64& anOutput, TTDelayBufferPtr aDelayBuffer, TTPtrSizedInt aChannel)
{
	mAccumulator[aChannel] -= *aDelayBuffer->mReadPointer++;
	mAccumulator[aChannel] += *aDelayBuffer->mWritePointer++ = fabs(anInput);
	anOutput = mAccumulator[aChannel] * mIntervalReciprocal;
	
	// wrap the pointers in the buffer, if needed
	if (aDelayBuffer->mWritePointer > aDelayBuffer->tail())
		aDelayBuffer->mWritePointer = aDelayBuffer->head();
	if (aDelayBuffer->mReadPointer > aDelayBuffer->tail())
		aDelayBuffer->mReadPointer = aDelayBuffer->head();
	
	
	return kTTErrNone;
}

TTErr TTAverage::calculateBipolarValue(const TTFloat64& anInput, TTFloat64& anOutput, TTPtrSizedInt aChannel)
{
	TTDelayBufferPtr buffer = &mBins[aChannel];
	return calculateBipolarValue(anInput, anOutput, buffer, aChannel);
}

TTErr TTAverage::processBipolarAverage(TTAudioSignalArrayPtr anInputs, TTAudioSignalArrayPtr anOutputs)
{
	TTAVERAGE_WRAP_CALCULATE_METHOD(calculateBipolarValue);
}

inline TTErr TTAverage::calculateBipolarValue(const TTFloat64& anInput, TTFloat64& anOutput, TTDelayBufferPtr aDelayBuffer, TTPtrSizedInt aChannel)
{
	mAccumulator[aChannel] -= *aDelayBuffer->mReadPointer++;
	mAccumulator[aChannel] += *aDelayBuffer->mWritePointer++ = anInput;
	anOutput = mAccumulator[aChannel] * mIntervalReciprocal;
	
	// wrap the pointers in the buffer, if needed
	if (aDelayBuffer->mWritePointer > aDelayBuffer->tail())
		aDelayBuffer->mWritePointer = aDelayBuffer->head();
	if (aDelayBuffer->mReadPointer > aDelayBuffer->tail())
		aDelayBuffer->mReadPointer = aDelayBuffer->head();
	
	return kTTErrNone;
}


TTErr TTAverage::calculateRmsValue(const TTFloat64& anInput, TTFloat64& anOutput, TTPtrSizedInt aChannel)
{
	TTDelayBufferPtr buffer = &mBins[aChannel];
	return calculateRmsValue(anInput, anOutput, buffer, aChannel);
}

TTErr TTAverage::processRmsAverage(TTAudioSignalArrayPtr anInputs, TTAudioSignalArrayPtr anOutputs)
{
	TTAVERAGE_WRAP_CALCULATE_METHOD(calculateRmsValue);

}

inline TTErr TTAverage::calculateRmsValue(const TTFloat64& anInput, TTFloat64& anOutput, TTDelayBufferPtr aDelayBuffer, TTPtrSizedInt aChannel)
{
	mAccumulator[aChannel] -= *aDelayBuffer->mReadPointer++;
	mAccumulator[aChannel] += *aDelayBuffer->mWritePointer++ = anInput*anInput;
	anOutput = sqrt(mAccumulator[aChannel] * mIntervalReciprocal);
	
	// wrap the pointers in the buffer, if needed
	if (aDelayBuffer->mWritePointer > aDelayBuffer->tail())
		aDelayBuffer->mWritePointer = aDelayBuffer->head();
	if (aDelayBuffer->mReadPointer > aDelayBuffer->tail())
		aDelayBuffer->mReadPointer = aDelayBuffer->head();
		
	return kTTErrNone;
}





