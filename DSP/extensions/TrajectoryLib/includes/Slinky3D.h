/** @file
 *
 * @ingroup dspTrajectoryLib
 *
 * @brief Slinky Space Curve Unit in 3D for Jamoma DSP
 *
 * @details see http://mathworld.wolfram.com/Slinky.html for details @n
 * 
 * @authors Nils Peters
 *
 * @copyright Copyright © 2011 by Nils Peters @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#ifndef __SLINKY_3D_H__
#define __SLINKY_3D_H__

#include "TTDSP.h"


class Slinky3D : TTAudioObjectBase {
	TTCLASS_SETUP(Slinky3D)

protected:

	TTFloat64	mA, mB, mC;
	
	/**	A standard audio processing method as used by Jamoma DSP objects.
	 @param inputs				The input vector that is to be processed.
	 @param outputs				The resulting windowed vector.
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */			
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
};


#endif // __SLINKY_3D_H__
