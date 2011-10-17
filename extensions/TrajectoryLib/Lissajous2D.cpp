/* 
 * LissajousFunction Unit for TTBlue
 * Originally written for the Jamoma TrajectoryLib
 * Copyright © 2010 by Nils Peters
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "Lissajous2D.h"
#

#define thisTTClass			Lissajous2D
#define thisTTClassName		"lissajous.2D"
#define thisTTClassTags		"audio, trajectory, 2D"


TT_AUDIO_CONSTRUCTOR
{   addAttributeWithSetter(A,	kTypeFloat64);
	addAttribute(DeltaX,		kTypeFloat64); 

	setProcessMethod(processAudio);
//	setCalculateMethod(calculateValue);
}


Lissajous2D::~Lissajous2D()
{
	;
}

//TTErr Lissajous2D::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
//{
//	y = x;
//	return kTTErrNone;
//}

TTErr Lissajous2D::setA(const TTValue& newValue)
{
	mA = newValue;
	if (mA > 0){
	mAa = mA;	
	mAb = mAa + 1.0;
	}
	else{
		mAa = -1.0 * mA;
		mAb = mAa - 1.0;  
	}
	return kTTErrNone;
}

TTErr Lissajous2D::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
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
	TTFloat64 omega;
	
	for (int i=0; i<vs; i++) {	
		omega = inSampleX[i] * kTTPi;
		
		outSampleX[i] = sin(omega * mAa + mDeltaX);
		outSampleY[i] = sin(omega * mAb);
		}
return kTTErrNone;
}