/* 
 * VivianiCurve Unit for TTBlue
 * http://mathworld.wolfram.com/VivianisCurve.html
 *
 * Originally written for the Jamoma TrajectoryLib
 * Copyright © 2010 by Nils Peters
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "Viviani3D.h"


#define thisTTClass			Viviani3D
#define thisTTClassName		"viviani.3D"
#define thisTTClassTags		"audio, trajectory, 3D"


TT_AUDIO_CONSTRUCTOR
{   	
	setProcessMethod(processAudio);
//	setCalculateMethod(calculateValue);
}


Viviani3D::~Viviani3D()
{
	;
}

//TTErr Viviani3D::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
//{
//	y = x;
//	return kTTErrNone;
//}


TTErr Viviani3D::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
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
						
		phi = inSampleX[i] * kTTTwoPi; // 0 .. 4Pi
		outSampleX[i] = 0.5 + 0.5 * cos(phi);
		outSampleY[i] = 0.5 * sin(phi);
		outSampleZ[i] =	sin(0.5 * phi);

	}
return kTTErrNone;
}
