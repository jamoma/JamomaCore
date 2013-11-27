/* 
 * TTBlue State Variable Filter Object
 * Copyright © 2008, Tim Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTSvf.h"

#define thisTTClass			TTSvf
#define thisTTClassName		"svf"
#define thisTTClassTags		"dspFilterLib, audio, processor, filter, lowpass, highpass, bandpass, notch"


TT_AUDIO_CONSTRUCTOR
{
	// register attributes
	addAttributeWithSetter(Frequency,		kTypeFloat64);
	addAttributeProperty(Frequency,			range,			TTValue(2.0, 20000.0));
	addAttributeProperty(Frequency,			rangeChecking,	TT("clip"));

	addAttributeWithSetter(Resonance,		kTypeFloat64);
	addAttributeProperty(Resonance,			range,			TTValue(0.001, 100.0));
	addAttributeProperty(Resonance,			rangeChecking,	TT("clip"));
	
	addAttributeWithSetter(Mode,		kTypeSymbol);

	// register methods
	addMessage(clear);
	addUpdates(MaxNumChannels);
	addUpdates(SampleRate);

	// Set Defaults...
	setAttributeValue(kTTSym_maxNumChannels,	arguments);			// This attribute is inherited
	setAttributeValue(TT("mode"),			TT("lowpass"));
	setAttributeValue(TT("frequency"),		1000.0);
	setAttributeValue(TT("resonance"),		1.0);
}


TTSvf::~TTSvf()
{
	;
}


TTErr TTSvf::updateMaxNumChannels(const TTValue& oldMaxNumChannels, TTValue&)
{
	mLowpass_output.resize(mMaxNumChannels);
	mHighpass_output.resize(mMaxNumChannels);
	mBandpass_output.resize(mMaxNumChannels);
	mNotch_output.resize(mMaxNumChannels);
	mPeak_output.resize(mMaxNumChannels);
	clear();
	return kTTErrNone;
}


TTErr TTSvf::updateSampleRate(const TTValue& oldSampleRate, TTValue&)
{
	TTValue	v(mFrequency);
	return setFrequency(v);
}


TTErr TTSvf::clear()
{
	mLowpass_output.assign(mMaxNumChannels, 0.0);
	mHighpass_output.assign(mMaxNumChannels, 0.0);
	mBandpass_output.assign(mMaxNumChannels, 0.0);
	mNotch_output.assign(mMaxNumChannels, 0.0);
	mPeak_output.assign(mMaxNumChannels, 0.0);
	return kTTErrNone;
}


TTErr TTSvf::setMode(const TTValue& newValue)
{
	TTSymbol newMode = newValue;
	
	if (newMode == TT("lowpass")) {
		setProcessMethod(processLowpass);
		setCalculateMethod(calculateLowpass);
	}
	else if (newMode == TT("highpass")) {
		setProcessMethod(processHighpass);
		setCalculateMethod(calculateHighpass);
	}
else if (newMode == TT("bandpass")) {
		setProcessMethod(processBandpass);
		setCalculateMethod(calculateBandpass);
	}
else if (newMode == TT("notch")) {
		setProcessMethod(processNotch);
		setCalculateMethod(calculateNotch);
	}
else if (newMode == TT("peak")) {
		setProcessMethod(processPeak);
		setCalculateMethod(calculatePeak);
	}
	else {
		logError("bad mode specified for TTSvf: %s", newMode.c_str());
		return kTTErrInvalidValue;
	}
	
	mMode = newMode;
	return kTTErrNone;
}


TTErr TTSvf::setFrequency(const TTValue& newValue)
{	
    mFrequency = newValue;
	mF = 2.0 * sin(kTTHalfPi * mFrequency / sr ); // equivalent to mF = 2.0 * sin(kTTPi * mFrequency / double(sr * 2)); 
	if (mF > 0.25)
		mF = 0.25;
	calculateCoefficients();
	return kTTErrNone;
}


TTErr TTSvf::setResonance(const TTValue& newValue)
{	
	mResonance = newValue;
	mR = mResonance * 0.1;
	calculateCoefficients();
	return kTTErrNone;
}


void TTSvf::calculateCoefficients()
{
	TTFloat64 temp1 = 2.0 / mF - mF * 0.5;
	TTFloat64 temp2 = 2.0 * (1.0 - pow(mR, 0.25));
	
	TTLimitMax(temp1, 2.0);
	
	if (temp1 < temp2)
		mDamp = temp1;
	else
		mDamp = temp2;
}


void TTSvf::tick(TTSampleValue value, TTUInt16 channel)
{
	// UNROLLED (oversampling) FOR LOOP FOR SPEED
	mNotch_output[channel]		= value - mDamp * mBandpass_output[channel];
	TTZeroDenormal(mNotch_output[channel]);
	
	mLowpass_output[channel]	+= TTAntiDenormal(mFrequency * mBandpass_output[channel]);
	
	mHighpass_output[channel]	= mNotch_output[channel] - mLowpass_output[channel];
	TTZeroDenormal(mHighpass_output[channel]);
	
	mBandpass_output[channel]	= mFrequency * mHighpass_output[channel] + mBandpass_output[channel];
	TTZeroDenormal(mBandpass_output[channel]);
	
	mNotch_output[channel]		= value - mDamp * mBandpass_output[channel];
	TTZeroDenormal(mNotch_output[channel]);
	
	mLowpass_output[channel]	+= TTAntiDenormal(mFrequency * mBandpass_output[channel]);
	
	mHighpass_output[channel]	= mNotch_output[channel] - mLowpass_output[channel];
	TTZeroDenormal(mHighpass_output[channel]);
	
	mBandpass_output[channel]	= mFrequency * mHighpass_output[channel] + mBandpass_output[channel];
	TTZeroDenormal(mBandpass_output[channel]);
}


inline TTErr TTSvf::calculateLowpass(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel)
{   
	tick(x, channel);
	y = 0.5 * mLowpass_output[channel];
	return kTTErrNone;
}


TTErr TTSvf::processLowpass(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateLowpass);
}



inline TTErr TTSvf::calculateHighpass(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel)
{   
	tick(x, channel);
	y = 0.5 * mHighpass_output[channel];
	return kTTErrNone;
}


TTErr TTSvf::processHighpass(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateHighpass);
}



inline TTErr TTSvf::calculateBandpass(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel)
{   
	tick(x, channel);
	y = 0.5 * mBandpass_output[channel];
	return kTTErrNone;
}


TTErr TTSvf::processBandpass(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateBandpass);
}



inline TTErr TTSvf::calculateNotch(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel)
{   
	tick(x, channel);
	y = 0.5 * mNotch_output[channel];
	return kTTErrNone;
}


TTErr TTSvf::processNotch(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateNotch);
}




inline TTErr TTSvf::calculatePeak(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel)
{   
	tick(x, channel);
	y = 0.5 * (mLowpass_output[channel] - mHighpass_output[channel]);
	return kTTErrNone;
}


TTErr TTSvf::processPeak(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculatePeak);
}
