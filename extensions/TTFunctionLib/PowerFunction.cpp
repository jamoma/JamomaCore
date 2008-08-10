/* 
 * PowerFunction Unit for TTBlue
 * Originally written for the Jamoma FunctionLib
 * Copyright © 2007 by Trond Lossius
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "PowerFunction.h"
#define thisTTClass PowerFunction


PowerFunction::PowerFunction(TTUInt16 newMaxNumChannels)
	: TTAudioObject("power", newMaxNumChannels)
{
	registerAttributeWithSetter(symmetry,	kTypeSymbol);
	registerAttributeWithSetter(powerValue,	kTypeFloat64);
	
	setAttributeValue(TT("powerValue"), 0.0);
	setAttributeValue(TT("symmetry"), TT("none"));
	
	setProcessMethod(processAudio);
}


PowerFunction::~PowerFunction()
{
	;
}


TTErr PowerFunction::setsymmetry(const TTValue& newValue)
{
	symmetry = newValue;
	if(symmetry == TT("point"))
		setCalculateMethod(calculatePoint);
	else if(symmetry == TT("axis"))
		setCalculateMethod(calculateAxis);
	else // none
		setCalculateMethod(calculateNoSymmetry);
	return kTTErrNone;
}


TTErr PowerFunction::setpowerValue(const TTValue& newValue)
{
	powerValue = newValue;
	k = pow(2, powerValue);
	return kTTErrNone;
}


TTErr PowerFunction::calculatePoint(const TTFloat64& x, TTFloat64& y)
{
	TTFloat64	sign;	
	
	y = 2*x-1;
	if(y<0)
		sign = -1;
	else
		sign = 1;
	y = 0.5 * (sign * pow(fabs(y), k) + 1);

	return kTTErrNone;
}


TTErr PowerFunction::calculateAxis(const TTFloat64& x, TTFloat64& y)
{
	y = pow(fabs(2*x-1), k);
	return kTTErrNone;
}


TTErr PowerFunction::calculateNoSymmetry(const TTFloat64& x, TTFloat64& y)
{
	y = pow(x, k);
	return kTTErrNone;
}


TTErr PowerFunction::processAudio(TTAudioSignal& in, TTAudioSignal& out)
{
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
			(this->*calculateMethod)(*outSample, *inSample);
			outSample++;
			inSample++;
		}
	}
	return kTTErrNone;
}


