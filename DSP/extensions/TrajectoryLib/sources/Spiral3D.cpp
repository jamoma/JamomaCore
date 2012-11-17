/** @file
 *
 * @ingroup dspTrajectoryLib
 *
 * @brief Spiral Unit in 3D for Jamoma DSP
 *
 * @details see http://mathworld.wolfram.com/SpiralsCurve.html and http://www.wolframalpha.com/entities/space_curves/spherical_spiral/lu/g9/pv/ for details @n
 * 
 * @authors Nils Peters
 *
 * @copyright Copyright © 2011 by Nils Peters @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#include "Spiral3D.h"


#define thisTTClass			Spiral3D
#define thisTTClassName		"spherical.spiral.3D"
#define thisTTClassTags		"audio, trajectory, 3D, Spiral"


TT_AUDIO_CONSTRUCTOR
{   
	addAttribute(A,	kTypeFloat64);
	setProcessMethod(processAudio);
//	setCalculateMethod(calculateValue);
}


Spiral3D::~Spiral3D()
{
	;
}

//TTErr Spiral3D::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
//{
//	y = x;
//	return kTTErrNone;
//}


TTErr Spiral3D::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
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
    
	TTFloat64 phi, c;
	
	for (int i=0; i<vs; i++) {	
						
		phi = inSampleX[i] * kTTTwoPi - kTTTwoPi; // -2Pi .. 2Pi
		c = sqrt(1 + mA*mA*phi*phi);
		outSampleX[i] = cos(phi)/c;
		outSampleY[i] = sin(phi)/c;
		outSampleZ[i] = -mA * phi/c;

	}
return kTTErrNone;
}
