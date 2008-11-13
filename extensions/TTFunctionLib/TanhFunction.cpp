/* 
 * TanhFunction Unit for TTBlue
 * Originally written for the Jamoma FunctionLib
 * Copyright © 2007 by Trond Lossius
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TanhFunction.h"
#include <math.h>
#define thisTTClass TanhFunction


TanhFunction::TanhFunction(TTUInt16 newMaxNumChannels)
	: TTAudioObject("tanh", newMaxNumChannels)
{
	// Register Attributes...
	registerAttributeWithSetter(offset,	kTypeFloat64);
	registerAttributeWithSetter(width,	kTypeFloat64);
		
	// Set Defaults...
	setAttributeValue(TT("offset"),	0.0);
	setAttributeValue(TT("width"), 1.0);
	
	setProcessMethod(processAudio);
	setCalculateMethod(calculateValue);
}


TanhFunction::~TanhFunction()
{
	;
}


TTErr TanhFunction::setoffset(const TTValue& newValue)
{
	offset = newValue;
	b = 0.5*(offset+1);
	calculateOutputScaling();
	return kTTErrNone;
}


TTErr TanhFunction::setwidth(const TTValue& newValue)
{
	width = newValue;
	if(width <= 0)
		a = log(7.0);
	else 
		a = log(7.0)/width;
	calculateOutputScaling();
	return kTTErrNone;
}


void TanhFunction::calculateOutputScaling(void)
{
	double f0, f1;
	
	f0=tanh(a*(-b));
	f1=tanh(a*(1-b));
	// This will never be division by zero, due to the fact that we always have width > 0
	alpha = 1/(f1-f0);
	beta = f0;
}


TTErr TanhFunction::calculateValue(const TTFloat64& x, TTFloat64& y)
{
	y = alpha * (tanh(a * (x-b)) - beta);
	return kTTErrNone;
}


TTErr TanhFunction::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&	in = inputs->getSignal(0);
	TTAudioSignal&	out = outputs->getSignal(0);
	TTUInt16		vs;
	TTSampleVector	inSample;
	TTSampleVector	outSample;
	TTUInt16		numchannels = TTAudioSignal::getMinChannelCount(in, out);
	TTUInt16		channel;
	
	for(channel=0; channel<numchannels; channel++){
		inSample = in.sampleVectors[channel];
		outSample = out.sampleVectors[channel];
		vs = in.getVectorSize();
		
		while(vs--){
			calculateValue(*outSample, *inSample);
			outSample++;
			inSample++;
		}
	}
	return kTTErrNone;
}

