/* 
 * linear3D Unit for TTBlue
 * Originally written for the Jamoma TrajectoryLib
 * Copyright © 2010 by Nils Peters
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "Linear3D.h"


#define thisTTClass			Linear3D
#define thisTTClassName		"linear.3D"
#define thisTTClassTags		"audio, trajectory"


TT_AUDIO_CONSTRUCTOR
{   addAttribute(A,				kTypeFloat64);
	addAttribute(B,				kTypeFloat64);
	setProcessMethod(processAudio);
//	setCalculateMethod(calculateValue);
}


Linear3D::~Linear3D()
{
	;
}

TTErr Linear3D::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&		out = outputs->getSignal(0);
	TTUInt16			numOutputChannels = out.getNumChannelsAsInt();
	
	if (numOutputChannels != 3) {
		TTValue v = 3;		
		out.setMaxNumChannels(v);
		out.setNumChannels(v);		
	}
	
	TTAudioSignal&		in0 = inputs->getSignal(0);

	
	TTUInt16			vs = in0.getVectorSizeAsInt();
	
	TTSampleValuePtr	inSampleX			= in0.mSampleVectors[0];
	TTSampleValuePtr	outSampleX    		= out.mSampleVectors[0];
	TTSampleValuePtr	outSampleY			= out.mSampleVectors[1];
	TTSampleValuePtr	outSampleZ			= out.mSampleVectors[2];

	for (int i=0; i<vs; i++) {	
		outSampleX[i] = inSampleX[i]-1.0;
		outSampleY[i] = mA * outSampleX[i];			
		outSampleZ[i] = mB * outSampleX[i];
	}
	return kTTErrNone;
}
	


