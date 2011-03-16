/* 
 * EpitrochoidFunction Unit for TTBlue
 * http://mathworld.wolfram.com/Epitrochoid.html
 * Originally written for the Jamoma TrajectoryLib
 * Copyright © 2010 by Nils Peters
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "Epitrochoid2D.h"


#define thisTTClass			Epitrochoid2D
#define thisTTClassName		"epitrochoid.2D"
#define thisTTClassTags		"audio, trajectory, 2D"


TT_AUDIO_CONSTRUCTOR
{   addAttributeWithSetter(A,				kTypeFloat64);
	addAttribute(B,				kTypeFloat64);
	setAttributeValue(TT("a"),	0.0);

	
	setProcessMethod(processAudio);
//	setCalculateMethod(calculateValue);
}


Epitrochoid2D::~Epitrochoid2D()
{
	;
}

TTErr Epitrochoid2D::setA(const TTValue& newValue)
{
	mA = newValue;
	aPlusOne = mA + 1.0;
	
	return kTTErrNone;
}

//TTErr Epitrochoid2D::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
//{
//	y = x;
//	return kTTErrNone;
//}


TTErr Epitrochoid2D::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
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
    TTFloat64 phi;
	
	for (int i=0; i<vs; i++) {	

		phi = inSampleX[i] * kTTPi; // 0 .. 2Pi
		
		outSampleX[i] = aPlusOne * cos(phi) - mB * cos(aPlusOne * phi);
		outSampleY[i] = aPlusOne * sin(phi) - mB * sin(aPlusOne * phi);
		

	}
return kTTErrNone;
}
