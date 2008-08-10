/* 
 * CosineFunction Unit for TTBlue
 * Originally written for the Jamoma FunctionLib
 * Copyright © 2007 by Dave Watson
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "CosineFunction.h"
#include <math.h>
#define thisTTClass CosineFunction


CosineFunction::CosineFunction(TTUInt16 newMaxNumChannels)
	: TTAudioObject("cosine", newMaxNumChannels)
{
	setProcessMethod(processAudio);
	setCalculateMethod(calculateValue);
}


CosineFunction::~CosineFunction()
{
	;
}


TTErr CosineFunction::calculateValue(const TTFloat64& x, TTFloat64& y)
{
	y = -0.5 * cos(x * kTTPi) + 0.5;
	return kTTErrNone;
}


TTErr CosineFunction::processAudio(TTAudioSignal& in, TTAudioSignal& out)
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


