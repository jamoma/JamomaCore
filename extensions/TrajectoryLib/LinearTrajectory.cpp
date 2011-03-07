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


TT_AUDIO_CONSTRUCTOR,
mDimension(2)
{   addAttribute(Dimension,	kTypeFloat64);
	setProcessMethod(processAudio);
//	setCalculateMethod(calculateValue);
}


LinearTrajectory::~LinearTrajectory()
{
	;
}

/*TTErr LinearTrajectory::setDimension(const TTValue& newValue)
{
	mDimension = newValue;
	return kTTErrNone;
}*/

TTErr LinearTrajectory::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	//if (inputs->getSignal(0).getNumChannelsAsInt() == 2)
	if (mDimension == 2)
		return processAudioFunction2D(inputs, outputs);
	else //(mDimension == 3) 
	return processAudioFunction3D(inputs, outputs);

}

TTErr LinearTrajectory::processAudioFunction2D(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
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
		outSampleX[i] = inSampleX[i]-1.0; //Phasor runs from 0 .. 2
		outSampleY[i] = inSampleY[i]-1.0;
	}
	return kTTErrNone;
}

TTErr LinearTrajectory::processAudioFunction3D(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
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
		outSampleX[i] = inSampleX[i]-1.0;
		outSampleY[i] = inSampleY[i]-1.0;			
		outSampleZ[i] = inSampleZ[i]-1.0;
	}
	return kTTErrNone;
}
	


