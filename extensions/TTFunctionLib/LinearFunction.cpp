/* 
 * LinearFunction Unit for TTBlue
 * Originally written for the Jamoma FunctionLib
 * Copyright © 2007 by Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "LinearFunction.h"
#define thisTTClass LinearFunction


LinearFunction::LinearFunction(TTUInt16 newMaxNumChannels)
	: TTAudioObject("linear", newMaxNumChannels)
{
	setProcessMethod(processAudio);
	setCalculateMethod(calculateValue);
}


LinearFunction::~LinearFunction()
{
	;
}


TTErr LinearFunction::calculateValue(const TTFloat64& x, TTFloat64& y)
{
	y = x;
	return kTTErrNone;
}


TTErr LinearFunction::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
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

