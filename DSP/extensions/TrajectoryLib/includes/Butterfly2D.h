/** @file
 *
 * @ingroup dspTrajectoryLib
 *
 * @brief Butterfly2D Unit for Jamoma DSP
 *
 * @details Implementation of the buterfly trajectory function http://mathworld.wolfram.com/ButterflyCurve.html @n
 * 
 * @authors Nils Peters
 *
 * @copyright Copyright © 2011 by Nils Peters @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */
 
#ifndef __BUTTERFLY_2D_H__
#define __BUTTERFLY_2D_H__

#include "TTDSP.h"


class Butterfly2D : TTAudioObjectBase {
	TTCLASS_SETUP(Butterfly2D)

protected:

	/**	A standard audio processing method as used by Jamoma DSP objects.
	@param inputs				The input vector that is to be processed.
	@param outputs				The resulting windowed vector.
	@return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	*/
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
};


#endif // __BUTTERFLY_2D_H__
