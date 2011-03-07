/* 
 * RoseFunction Unit for TTBlue
 * Originally written for the Jamoma TrajectoryLib
 * Copyright © 2010 by Nils Peters
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "Rose2D.h"


#define thisTTClass			Rose2D
#define thisTTClassName		"rose.2D"
#define thisTTClassTags		"audio, trajectory"


TT_AUDIO_CONSTRUCTOR
{   addAttributeWithSetter(A,				kTypeFloat64);
	addAttributeWithSetter(B,				kTypeFloat64);
	addAttributeWithSetter(DeltaX,			kTypeFloat64);
	
	setAttributeValue(TT("a"),				0.5);
	setAttributeValue(TT("b"),				0.5);
	setAttributeValue(TT("deltaX"),			kTTPi/2); //1.5708
	
	setProcessMethod(processAudio);
//	setCalculateMethod(calculateValue);
}


Rose2D::~Rose2D()
{
	;
}

TTErr Rose2D::setA(const TTValue& newValue)
{
	mA = newValue;
	return kTTErrNone;
}

TTErr Rose2D::setB(const TTValue& newValue)
{
	mB = newValue;
	return kTTErrNone;
}



TTErr Rose2D::setDeltaX(const TTValue& newValue)
{
	mDeltaX = newValue;
	return kTTErrNone;
}

//TTErr Rose2D::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
//{
//	y = x;
//	return kTTErrNone;
//}


TTErr Rose2D::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&		out = outputs->getSignal(0);
	TTUInt16			numOutputChannels = out.getNumChannelsAsInt();
	
	if (numOutputChannels != 2) {
		TTValue v = 2;		
		out.setMaxNumChannels(v);
		out.setNumChannels(v);		
	}
	
	TTAudioSignal&		in0 = inputs->getSignal(0);
	TTAudioSignal&		in1 = inputs->getSignal(1);
	TTUInt16			 vs = in0.getVectorSizeAsInt();
	
	TTSampleValuePtr	inSampleX			= in0.mSampleVectors[0];
	TTSampleValuePtr	inSampleY			= in1.mSampleVectors[0];
	TTSampleValuePtr	outSampleX    		= out.mSampleVectors[0];
	TTSampleValuePtr	outSampleY			= out.mSampleVectors[1];

	for (int i=0; i<vs; i++) {	
			outSampleX[i] = cos(((inSampleX[i]-1.0 + mDeltaX)* mA )*kTTTwoPi);
			outSampleY[i] = cos( (inSampleY[i]-1.0)* mB * kTTTwoPi);
		}
return kTTErrNone;
}
