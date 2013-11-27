/* 
 * TTPowerFunction Unit for TTBlue
 * Originally written for the Jamoma FunctionLib
 * Copyright © 2007 by Trond Lossius
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTPowerFunction.h"

#define thisTTClass			TTPowerFunction
#define thisTTClassName		"power"
#define thisTTClassTags		"dspFunctionLib, audio, processor, function"


TT_AUDIO_CONSTRUCTOR
{
	addAttributeWithSetter(Symmetry,	kTypeSymbol);
	addAttributeWithSetter(PowerValue,	kTypeFloat64);
	
	setAttributeValue(TT("powerValue"), 1.0);
	setAttributeValue(TT("symmetry"), TT("none"));
	
	setProcessMethod(processAudio);
}


TTPowerFunction::~TTPowerFunction()
{
	;
}


TTErr TTPowerFunction::setSymmetry(const TTValue& newValue)
{
	mSymmetry = newValue;
	
	if (mSymmetry == TT("point"))
		setCalculateMethod(calculatePoint);
	else if (mSymmetry == TT("axis"))
		setCalculateMethod(calculateAxis);
	else // none
		setCalculateMethod(calculateNoSymmetry);
	return kTTErrNone;
}


TTErr TTPowerFunction::setPowerValue(const TTValue& newValue)
{
	mPowerValue = newValue;
	mK = pow(2, mPowerValue);
	return kTTErrNone;
}


TTErr TTPowerFunction::calculatePoint(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
{
	TTFloat64	sign;	
	
	y = 2*x-1;
	if (y<0)
		sign = -1;
	else
		sign = 1;
	y = 0.5 * (sign * pow(fabs(y), mK) + 1);

	return kTTErrNone;
}


TTErr TTPowerFunction::calculateAxis(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
{
	y = pow(fabs(2*x-1), mK);
	return kTTErrNone;
}


TTErr TTPowerFunction::calculateNoSymmetry(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
{
	y = pow(x, mK);
	return kTTErrNone;
}


TTErr TTPowerFunction::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&	in = inputs->getSignal(0);
	TTAudioSignal&	out = outputs->getSignal(0);
	TTUInt16		vs;
	TTSampleValue*	inSample;
	TTSampleValue*	outSample;
	TTUInt16		numchannels = TTAudioSignal::getMinChannelCount(in, out);
	TTPtrSizedInt	channel;
	
	for (channel=0; channel<numchannels; channel++) {
		inSample = in.mSampleVectors[channel];
		outSample = out.mSampleVectors[channel];
		vs = in.getVectorSizeAsInt();
		
		while (vs--) {
			(this->*calculateMethod)(*outSample, *inSample, TTPtr(channel));
			outSample++;
			inSample++;
		}
	}
	return kTTErrNone;
}


