/* 
 * Butterfly2D Unit for TTBlue
 * http://mathworld.wolfram.com/ButterflyCurve.html
 * Originally written for the Jamoma TrajectoryLib
 * Copyright © 2010 by Nils Peters
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "Butterfly2D.h"


#define thisTTClass			Butterfly2D
#define thisTTClassName		"butterfly.2D"
#define thisTTClassTags		"audio, trajectory, 2D"


TT_AUDIO_CONSTRUCTOR
{   	
	setProcessMethod(processAudio);
//	setCalculateMethod(calculateValue);
}


Butterfly2D::~Butterfly2D()
{
	;
}

//TTErr Butterfly2D::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
//{
//	y = x;
//	return kTTErrNone;
//}


TTErr Butterfly2D::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&		out = outputs->getSignal(0);
	TTUInt16			numOutputChannels = out.getNumChannelsAsInt();
	
	if (numOutputChannels != 2) {
		TTValue v = 2;		
		out.setMaxNumChannels(v);
		out.setNumChannels(v);		
	}
	
	TTAudioSignal&		in0 = inputs->getSignal(0);
	TTUInt16			 vs = in0.getVectorSizeAsInt();
	
	TTSampleValuePtr	inSampleX			= in0.mSampleVectors[0];
	TTSampleValuePtr	outSampleX    		= out.mSampleVectors[0];
	TTSampleValuePtr	outSampleY			= out.mSampleVectors[1];
    TTFloat64 phi, r, temp;
	
	for (int i=0; i<vs; i++) {	
		
		phi = inSampleX[i] * kTTPi; // 0 .. 2Pi
		temp = sin(1/24*(2*phi-kTTPi));
		r = exp(sin(phi)) - 2*cos(4*phi)+pow(temp,5);
		
		outSampleX[i] = sin(phi) * r;
		outSampleY[i] = cos(phi) * r;

	}
return kTTErrNone;
}
