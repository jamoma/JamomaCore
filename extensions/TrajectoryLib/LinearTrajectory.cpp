/* 
 * LinearTrajectory Unit for TTBlue
 * Originally written for the Jamoma TrajectoryLib
 * Copyright © 2010 by Nils Peters
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "LinearTrajectory.h"


#define thisTTClass			LinearTrajectory
#define thisTTClassName		"line"
#define thisTTClassTags		"audio, trajectory"


TT_AUDIO_CONSTRUCTOR
{
	setProcessMethod(processAudio);
//	setCalculateMethod(calculateValue);
}


LinearTrajectory::~LinearTrajectory()
{
	;
}


//TTErr LinearTrajectory::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
//{
//	y = x;
//	return kTTErrNone;
//}


TTErr LinearTrajectory::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	if (inputs->getSignal(0).getNumChannelsAsInt() == 2)
		return processAudioFunction2D(inputs, outputs);
	else if (inputs->getSignal(0).getNumChannelsAsInt() > 2) 
		return processAudioFunction3D(inputs, outputs);
}

TTErr LinearTrajectory::processAudioFunction2D(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{	
	
	TTAudioSignal&		in = inputs->getSignal(0);
	TTAudioSignal&		out = outputs->getSignal(0);
	TTUInt16			vs = in.getVectorSizeAsInt();
	
	TTSampleValuePtr	inSampleX			= in.mSampleVectors[0];
	TTSampleValuePtr	inSampleY			= in.mSampleVectors[1];
	TTSampleValuePtr	outSampleX    		= out.mSampleVectors[0];
	TTSampleValuePtr	outSampleY			= out.mSampleVectors[1];

	for (int i=0; i<vs; i++) {	
		outSampleX[i] = inSampleX[i];
		outSampleY[i] = inSampleY[i];
	}
	return kTTErrNone;
}

TTErr LinearTrajectory::processAudioFunction3D(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
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
		outSampleX[i] = inSampleX[i];
		outSampleY[i] = inSampleY[i];			
		outSampleZ[i] = inSampleZ[i];	
	}
	return kTTErrNone;
}
	


