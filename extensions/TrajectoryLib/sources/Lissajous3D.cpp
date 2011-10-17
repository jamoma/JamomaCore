/* 
 * Lissajous Knot Function Unit for TTBlue
 * http://en.wikipedia.org/wiki/Lissajous_knot
 *
 * Originally written for the Jamoma TrajectoryLib
 * Copyright © 2010 by Nils Peters
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "Lissajous3D.h"

#define thisTTClass			Lissajous3D
#define thisTTClassName		"lissajous.knot.3D"
#define thisTTClassTags		"audio, trajectory, knot, 3D"


TT_AUDIO_CONSTRUCTOR
{   addAttribute(A,				kTypeFloat64);
	addAttribute(B,				kTypeFloat64);
	addAttribute(C,				kTypeFloat64);
	addAttribute(DeltaX,		kTypeFloat64);
	addAttribute(DeltaY,		kTypeFloat64);
	
	setAttributeValue(TT("a"),				3.0);
	setAttributeValue(TT("b"),				2.0);
	setAttributeValue(TT("c"),				7.0);
	setAttributeValue(TT("deltaX"),			0.7);
	setAttributeValue(TT("deltaY"),			0.2);
	
	setProcessMethod(processAudio);
//	setCalculateMethod(calculateValue);
}


Lissajous3D::~Lissajous3D()
{
	;
}

//TTErr Lissajous3D::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
//{
//	y = x;
//	return kTTErrNone;
//}


TTErr Lissajous3D::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
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
	TTFloat64 phi;
	
	for (int i=0; i<vs; i++) {	
		phi = inSampleX[i] * kTTPi;
		outSampleX[i] = cos((inSampleX[i]* mA *kTTTwoPi) + mDeltaX);
		outSampleY[i] = cos((inSampleX[i]* mB *kTTTwoPi) + mDeltaY);
		outSampleZ[i] = cos((inSampleX[i]* mC *kTTTwoPi));
		}
return kTTErrNone;
}
	


