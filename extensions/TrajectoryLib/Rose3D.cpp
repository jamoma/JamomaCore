/* 
 * RoseFunction Unit for TTBlue
 * Originally written for the Jamoma TrajectoryLib
 * Copyright © 2010 by Nils Peters
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "Rose3D.h"

#define thisTTClass			Rose3D
#define thisTTClassName		"rose.3D"
#define thisTTClassTags		"audio, trajectory"


TT_AUDIO_CONSTRUCTOR
{   addAttributeWithSetter(A,				kTypeFloat64);
	addAttributeWithSetter(B,				kTypeFloat64);
	addAttributeWithSetter(C,				kTypeFloat64);
	addAttributeWithSetter(DeltaX,			kTypeFloat64);
	addAttributeWithSetter(DeltaY,			kTypeFloat64);
	addAttributeWithSetter(DeltaZ,			kTypeFloat64);
	
	setAttributeValue(TT("a"),				0.0);
	setAttributeValue(TT("b"),				0.5);
	setAttributeValue(TT("c"),				0.2);
	setAttributeValue(TT("deltaX"),			kTTPi/2);
	setAttributeValue(TT("deltaY"),			0.0);
	setAttributeValue(TT("deltaZ"),			0.0);
	
	setProcessMethod(processAudio);
//	setCalculateMethod(calculateValue);
}


Rose3D::~Rose3D()
{
	;
}

TTErr Rose3D::setA(const TTValue& newValue)
{
	mA = newValue;
	return kTTErrNone;
}

TTErr Rose3D::setB(const TTValue& newValue)
{
	mB = newValue;
	return kTTErrNone;
}

TTErr Rose3D::setC(const TTValue& newValue)
{
	mC = newValue;
	return kTTErrNone;
}

TTErr Rose3D::setDeltaX(const TTValue& newValue)
{
	mDeltaX = newValue;
	return kTTErrNone;
}

TTErr Rose3D::setDeltaY(const TTValue& newValue)
{
	mDeltaY = newValue;
	return kTTErrNone;
}

TTErr Rose3D::setDeltaZ(const TTValue& newValue)
{
	mDeltaZ = newValue;
	return kTTErrNone;
}


//TTErr Rose3D::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
//{
//	y = x;
//	return kTTErrNone;
//}


TTErr Rose3D::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&		out = outputs->getSignal(0);
	TTUInt16			numOutputChannels = out.getNumChannelsAsInt();
	
	if (numOutputChannels != 3) {
		TTValue v = 3;		
		out.setMaxNumChannels(v);
		out.setNumChannels(v);		
	}
	
	TTAudioSignal&		in0 = inputs->getSignal(0);
	TTAudioSignal&		in1 = inputs->getSignal(1);
	TTAudioSignal&		in2 = inputs->getSignal(2);
	
	TTUInt16			vs = in0.getVectorSizeAsInt();
	
	TTSampleValuePtr	inSampleX			= in0.mSampleVectors[0];
	TTSampleValuePtr	inSampleY			= in1.mSampleVectors[0];
	TTSampleValuePtr	inSampleZ			= in2.mSampleVectors[0];
	TTSampleValuePtr	outSampleX    		= out.mSampleVectors[0];
	TTSampleValuePtr	outSampleY			= out.mSampleVectors[1];
	TTSampleValuePtr	outSampleZ			= out.mSampleVectors[2];
	
	for (int i=0; i<vs; i++) {	
		outSampleX[i] = cos(((inSampleX[i]-1.0 + mDeltaX) * mA) * kTTTwoPi);
		outSampleY[i] = cos( (inSampleY[i]-1.0) * mB * kTTTwoPi);
		outSampleZ[i] = cos( (inSampleZ[i]-1.0) * mC * kTTTwoPi);
		}
return kTTErrNone;
}
	


