/* 
 * Spherical Spiral Unit for TTBlue
 * http://mathworld.wolfram.com/LogarithmicSpiral.html
 *
 * Originally written for the Jamoma TrajectoryLib
 * Copyright © 2010 by Nils Peters
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "LogSpiral2D.h"


#define thisTTClass			LogSpiral2D
#define thisTTClassName		"log.spiral.2D"
#define thisTTClassTags		"audio, trajectory, sprial, logarithmic, 2D"


TT_AUDIO_CONSTRUCTOR
{   
	addAttribute(A,	kTypeFloat64);
	setProcessMethod(processAudio);
//	setCalculateMethod(calculateValue);
}


LogSpiral2D::~LogSpiral2D()
{
	;
}

//TTErr LogSpiral2D::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
//{
//	y = x;
//	return kTTErrNone;
//}


TTErr LogSpiral2D::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
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
    
	TTFloat64 phi, r;
	
	for (int i=0; i<vs; i++) {	
						
		phi = inSampleX[i] * kTTPi; // 0 .. 2Pi
		r = exp(mA * phi);
		outSampleX[i] = r * cos(phi);
		outSampleY[i] = r * sin(phi);

	}
return kTTErrNone;
}
