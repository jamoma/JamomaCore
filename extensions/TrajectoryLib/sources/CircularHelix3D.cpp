/* 
 * CircularHelixFunction Unit for TTBlue
 * Originally written for the Jamoma TrajectoryLib
 * Copyright © 2010 by Nils Peters
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "CircularHelix3D.h"


#define thisTTClass			CircularHelix3D
#define thisTTClassName		"circular.helix.3D"
#define thisTTClassTags		"audio, trajectory, 3D, helix"


TT_AUDIO_CONSTRUCTOR
{   addAttribute(A,				kTypeFloat64);	
	setAttributeValue(TT("a"),				1.0);

	setProcessMethod(processAudio);
//	setCalculateMethod(calculateValue);
}


CircularHelix3D::~CircularHelix3D()
{
	;
}

//TTErr CircularHelix3D::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
//{
//	y = x;
//	return kTTErrNone;
//}


TTErr CircularHelix3D::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&		out = outputs->getSignal(0);
	TTUInt16			numOutputChannels = out.getNumChannelsAsInt();
	
	if (numOutputChannels != 3) {
		TTValue v = 3;		
		out.setMaxNumChannels(v);
		out.setNumChannels(v);		
	}
	
	TTAudioSignal&		in0 = inputs->getSignal(0);
	TTUInt16			 vs = in0.getVectorSizeAsInt();
	
	TTSampleValuePtr	inSampleX			= in0.mSampleVectors[0];
	TTSampleValuePtr	outSampleX    		= out.mSampleVectors[0];
	TTSampleValuePtr	outSampleY			= out.mSampleVectors[1];
    TTSampleValuePtr	outSampleZ			= out.mSampleVectors[2];
    
	TTFloat64 phi;
	
	for (int i=0; i<vs; i++) {	
						
		phi = inSampleX[i] * kTTPi; // 0 .. 2Pi
		outSampleX[i] = sin(phi);
		outSampleY[i] = cos(phi);
		outSampleZ[i] = mA * (inSampleX[i]-1.0); //scaling 0 ..2 to -1.. 1

	}
return kTTErrNone;
}
