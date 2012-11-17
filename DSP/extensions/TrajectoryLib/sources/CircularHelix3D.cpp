/** @file
 *
 * @ingroup dspTrajectoryLib
 *
 * @brief Circular Helix Function Unit for Jamoma DSP
 *
 * @details circular helix function in 3D @n
 * 
 * @authors Nils Peters
 *
 * @copyright Copyright © 2011 by Nils Peters @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#include "CircularHelix3D.h"


#define thisTTClass			CircularHelix3D
#define thisTTClassName		"circular.helix.3D"
#define thisTTClassTags		"audio, trajectory, 3D, helix"


TT_AUDIO_CONSTRUCTOR
{   addAttribute(A,				kTypeFloat64);	
	setAttributeValue(TT("a"),				1.0);

	setProcessMethod(processAudio);
}


CircularHelix3D::~CircularHelix3D()
{
	;
}

//TTErr CircularHelix3D::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
//{
//	y = x;
//	return kTTErrNone;
//}


TTErr CircularHelix3D::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&		out = outputs->getSignal(0);
	TTUInt16			numOutputChannels = out.getNumChannelsAsInt();
	
	if (numOutputChannels != 3) {
		TTValue v = 3;		
		out.setMaxNumChannels(v);
		out.setNumChannels(v);		
	}
	
	TTAudioSignal&		in0 = inputs->getSignal(0);
	TTUInt16			 vs = in0.getVectorSizeAsInt();
	
	TTSampleValuePtr	inSampleX			= in0.mSampleVectors[0];
	TTSampleValuePtr	outSampleX    		= out.mSampleVectors[0];
	TTSampleValuePtr	outSampleY			= out.mSampleVectors[1];
    TTSampleValuePtr	outSampleZ			= out.mSampleVectors[2];
    
	TTFloat64 phi;
	
	for (int i=0; i<vs; i++) {	
						
		phi = inSampleX[i] * kTTPi; // 0 .. 2Pi
		outSampleX[i] = sin(phi);
		outSampleY[i] = cos(phi);
		outSampleZ[i] = mA * (inSampleX[i]-1.0); //scaling 0 ..2 to -1.. 1

	}
return kTTErrNone;
}
