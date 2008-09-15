/* 
 * LowpassFunction Unit for TTBlue
 * Originally written for the Jamoma FunctionLib
 * Copyright © 2007 by Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "LowpassFunction.h"
#define thisTTClass LowpassFunction


LowpassFunction::LowpassFunction(TTUInt16 newMaxNumChannels)
	: TTAudioObject("lowpass", newMaxNumChannels)
{
	registerAttributeWithSetter(coefficient, kTypeFloat64);
	registerMessageSimple(clear);
	
	// Set Defaults...
	setAttributeValue(TT("coefficient"), 0.75);
	sendMessage(TT("clear"));
	
	setProcessMethod(processAudio);
	setCalculateMethod(calculateValue);
}

LowpassFunction::~LowpassFunction()
{
	;
}



TTErr LowpassFunction::clear()
{
	feedback = 0.0;
	return kTTErrNone;
}


TTErr LowpassFunction::setcoefficient(const TTValue& newValue)
{
	coefficient = newValue;
	one_minus_coefficient = 1.0 - coefficient;
	return kTTErrNone;
}



TTErr LowpassFunction::calculateValue(const TTFloat64& x, TTFloat64& y)
{
	y = feedback = TTAntiDenormal((feedback * coefficient) + (x * one_minus_coefficient));
	return kTTErrNone;
}


TTErr LowpassFunction::processAudio(TTAudioSignal& in, TTAudioSignal& out)
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
			calculateValue(*outSample, *inSample);
			outSample++;
			inSample++;
		}
	}
	return kTTErrNone;
}


