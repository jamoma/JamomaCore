/* 
 * GearFunction Unit for TTBlue
 * http://mathworld.wolfram.com/GearCurve.html
 * Originally written for the Jamoma TrajectoryLib
 * Copyright © 2010 by Nils Peters
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "Gear2D.h"


#define thisTTClass			Gear2D
#define thisTTClassName		"gear.2D"
#define thisTTClassTags		"audio, trajectory, 2D"


TT_AUDIO_CONSTRUCTOR
{   
	addAttribute(A,	kTypeFloat64);
	addAttribute(B,	kTypeFloat64);
	addAttribute(C,	kTypeFloat64);
	
	setProcessMethod(processAudio);
//	setCalculateMethod(calculateValue);
}


Gear2D::~Gear2D()
{
	;
}

//TTErr Gear2D::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
//{
//	y = x;
//	return kTTErrNone;
//}


TTErr Gear2D::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
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
    TTFloat64 phi,r, temp1;
	
	temp1 = mA + 1.0/mB;
	
	for (int i=0; i<vs; i++) {	
						
		phi = inSampleX[i] * kTTPi; // 0 .. 2Pi
		r = temp1 * tanh(mB * sin(mC * phi));
		outSampleX[i] = r * sin(phi);
		outSampleY[i] = r * cos(phi);

	}
return kTTErrNone;
}
