/* 
 * Slinky Space Curve Unit for TTBlue
 * http://mathworld.wolfram.com/Slinky.html
 *
 * Originally written for the Jamoma TrajectoryLib
 * Copyright © 2010 by Nils Peters
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "Slinky3D.h"


#define thisTTClass			Slinky3D
#define thisTTClassName		"slinky.3D"
#define thisTTClassTags		"audio, trajectory, 3D"


TT_AUDIO_CONSTRUCTOR
{   
	addAttribute(A,	kTypeFloat64);
	addAttribute(B,	kTypeFloat64);
	addAttribute(C,	kTypeFloat64);
	setProcessMethod(processAudio);
//	setCalculateMethod(calculateValue);
}


Slinky3D::~Slinky3D()
{
	;
}

//TTErr Slinky3D::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
//{
//	y = x;
//	return kTTErrNone;
//}


TTErr Slinky3D::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
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
    
	TTFloat64 phi, temp;
	
	for (int i=0; i<vs; i++) {	
						
		phi = inSampleX[i] * kTTTwoPi - kTTTwoPi; // -2Pi .. 2Pi
		temp = mB + mA*cos(phi);
		outSampleX[i] = temp*cos(phi);
		outSampleY[i] = temp*sin(phi);
		outSampleZ[i] = mC*(inSampleX[i]-1.0) + mA*sin(phi);

	}
return kTTErrNone;
}
