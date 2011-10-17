/* 
 * linear2D Unit for TTBlue
 * Originally written for the Jamoma TrajectoryLib
 * Copyright © 2010 by Nils Peters
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "Linear2D.h"


#define thisTTClass			Linear2D
#define thisTTClassName		"linear.2D"
#define thisTTClassTags		"audio, trajectory, 2D"


TT_AUDIO_CONSTRUCTOR
{   addAttribute(A,				kTypeFloat64);
	setProcessMethod(processAudio);
//	setCalculateMethod(calculateValue);
}


Linear2D::~Linear2D()
{
	;
}

TTErr Linear2D::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
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

	for (int i=0; i<vs; i++) {	
		outSampleX[i] = inSampleX[i]-1.0; //Phasor runs from 0 .. 2
		outSampleY[i] = mA * outSampleX[i];
	}
	return kTTErrNone;
}