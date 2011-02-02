/* 
 * LissajousFunction Unit for TTBlue
 * Originally written for the Jamoma TrajectoryLib
 * Copyright © 2010 by Nils Peters
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "LissajousTrajectory.h"
#

#define thisTTClass			LissajousTrajectory
#define thisTTClassName		"lissajous"
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


LissajousTrajectory::~LissajousTrajectory()
{
	;
}

TTErr LissajousTrajectory::setA(const TTValue& newValue)
{
	mA = newValue;
	return kTTErrNone;
}

TTErr LissajousTrajectory::setB(const TTValue& newValue)
{
	mB = newValue;
	return kTTErrNone;
}

TTErr LissajousTrajectory::setC(const TTValue& newValue)
{
	mC = newValue;
	return kTTErrNone;
}

TTErr LissajousTrajectory::setDeltaX(const TTValue& newValue)
{
	mDeltaX = newValue;
	return kTTErrNone;
}

TTErr LissajousTrajectory::setDeltaY(const TTValue& newValue)
{
	mDeltaY = newValue;
	return kTTErrNone;
}

TTErr LissajousTrajectory::setDeltaZ(const TTValue& newValue)
{
	mDeltaZ = newValue;
	return kTTErrNone;
}


//TTErr LissajousTrajectory::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
//{
//	y = x;
//	return kTTErrNone;
//}


TTErr LissajousTrajectory::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	if (inputs->getSignal(0).getNumChannelsAsInt() == 2)
		return processAudioFunction2D(inputs, outputs);
	else if (inputs->getSignal(0).getNumChannelsAsInt() > 2) 
		return processAudioFunction3D(inputs, outputs);
}

TTErr LissajousTrajectory::processAudioFunction2D(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&		in = inputs->getSignal(0);
	TTAudioSignal&		out = outputs->getSignal(0);
	TTUInt16			vs = in.getVectorSizeAsInt();
	
	TTSampleValuePtr	inSampleX			= in.mSampleVectors[0];
	TTSampleValuePtr	inSampleY			= in.mSampleVectors[1];
	TTSampleValuePtr	outSampleX    		= out.mSampleVectors[0];
	TTSampleValuePtr	outSampleY			= out.mSampleVectors[1];

	for (int i=0; i<vs; i++) {	
			outSampleX[i] = cos((inSampleX[i]*mA+ mDeltaX)*kTTTwoPi);
			outSampleY[i] = cos(inSampleY[i]* mB * kTTTwoPi);
		}
return kTTErrNone;
}

TTErr LissajousTrajectory::processAudioFunction3D(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&		in = inputs->getSignal(0);
	TTAudioSignal&		out = outputs->getSignal(0);
	TTUInt16			vs = in.getVectorSizeAsInt();
	
	TTSampleValuePtr	inSampleX			= in.mSampleVectors[0];
	TTSampleValuePtr	inSampleY			= in.mSampleVectors[1];
	TTSampleValuePtr	inSampleZ			= in.mSampleVectors[2];
	TTSampleValuePtr	outSampleX    		= out.mSampleVectors[0];
	TTSampleValuePtr	outSampleY			= out.mSampleVectors[1];
	TTSampleValuePtr	outSampleZ			= out.mSampleVectors[2];
	
	for (int i=0; i<vs; i++) {	
		outSampleX[i] = cos((inSampleX[i]*mA+ mDeltaX)*kTTTwoPi);
		outSampleY[i] = cos( inSampleY[i]* mB * kTTTwoPi);
		outSampleZ[i] = cos( inSampleZ[i]* mC * kTTTwoPi);
		}
return kTTErrNone;
}
	


