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

#ifndef __Spiral_3D_H__
#define __Spiral_3D_H__

#include "TTDSP.h"


class Spiral3D : TTAudioObject {
	TTCLASS_SETUP(Spiral3D)

protected:

	TTFloat64	mA;
	
	/**	A standard audio processing method as used by Jamoma DSP objects.
	 @param inputs				The input vector that is to be processed.
	 @param outputs				The resulting windowed vector.
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */			
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
};


#endif // __Spiral_3D_H__
