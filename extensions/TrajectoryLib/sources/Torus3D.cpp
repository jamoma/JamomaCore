/* 
 * Torus Knot Function Unit for TTBlue
 * http://en.wikipedia.org/wiki/Torus_knot
 *
 * Originally written for the Jamoma TrajectoryLib
 * Copyright © 2010 by Nils Peters
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "Torus3D.h"

#define thisTTClass			Torus3D
#define thisTTClassName		"torus.knot.3D"
#define thisTTClassTags		"audio, trajectory, knot, 3D"


TT_AUDIO_CONSTRUCTOR
{   addAttribute(A,				kTypeFloat64);
	addAttribute(B,				kTypeFloat64);
		
	setAttributeValue(TT("a"),				3.0);
	setAttributeValue(TT("b"),				7.0);
	

	
	setProcessMethod(processAudio);
//	setCalculateMethod(calculateValue);
}


Torus3D::~Torus3D()
{
	;
}

//TTErr Torus3D::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
//{
//	y = x;
//	return kTTErrNone;
//}


TTErr Torus3D::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
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
	TTFloat64 phi, r;
	
	for (int i=0; i<vs; i++) {	
		phi = inSampleX[i] * kTTPi; // 0 .. 2Pi
		r = cos(mB * phi) + 2.0;
		outSampleX[i] = r * cos(mA * phi);
		outSampleY[i] = r * sin(mA * phi);
		outSampleZ[i] = sin(mB * phi);
		}
return kTTErrNone;
}
	


