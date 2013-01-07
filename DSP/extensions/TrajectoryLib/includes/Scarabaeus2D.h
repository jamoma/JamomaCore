/** @file
 *
 * @ingroup dspTrajectoryLib
 *
 * @brief Scarabaeus Function Unit for Jamoma DSP
 *
 * @details see http://mathworld.wolfram.com/Scarabaeus.html for details @n
 * 
 * @authors Nils Peters
 *
 * @copyright Copyright © 2011 by Nils Peters @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __SCARABAEUS_2D_H__
#define __SCARABAEUS_2D_H__

#include "TTDSP.h"


class Scarabaeus2D : TTAudioObjectBase {
	TTCLASS_SETUP(Scarabaeus2D)

protected:

	TTFloat64	mA, mB;

	/**	A standard audio processing method as used by Jamoma DSP objects.
	 @param inputs				The input vector that is to be processed.
	 @param outputs				The resulting windowed vector.
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */			
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
};


#endif // __SCARABAEUS_2D_H__
