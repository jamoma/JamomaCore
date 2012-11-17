/** @file
 *
 * @ingroup dspTrajectoryLib
 *
 * @brief Circular Function Unit for Jamoma DSP
 *
 * @details simple circular motion in 2D @n
 * 
 * @authors Nils Peters
 *
 * @copyright Copyright © 2011 by Nils Peters @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __CIRCULAR_2D_H__
#define __CIRCULAR_2D_H__

#include "TTDSP.h"


class Circular2D : TTAudioObject {
	TTCLASS_SETUP(Circular2D)

protected:

	TTFloat64 mA;
	
	/**	A standard audio processing method as used by Jamoma DSP objects.
	 @param inputs				The input vector that is to be processed.
	 @param outputs				The resulting windowed vector.
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */	
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
};


#endif // __CIRCULAR_2D_H__
