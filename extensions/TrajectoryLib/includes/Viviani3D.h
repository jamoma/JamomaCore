/** @file
 *
 * @ingroup dspTrajectoryLib
 *
 * @brief Viviani curve Unit in 3D for Jamoma DSP
 *
 * @details see http://mathworld.wolfram.com/VivianisCurve.html for details @n
 * 
 * @authors Nils Peters
 *
 * @copyright Copyright © 2011 by Nils Peters @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __VIVIANI_3D_H__
#define __VIVIANI_3D_H__

#include "TTDSP.h"


class Viviani3D : TTAudioObject {
	TTCLASS_SETUP(Viviani3D)

protected:

	/**	A standard audio processing method as used by Jamoma DSP objects.
	 @param inputs				The input vector that is to be processed.
	 @param outputs				The resulting windowed vector.
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */			
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
};


#endif // __VIVIANI_3D_H__
