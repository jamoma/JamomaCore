/** @file
 *
 * @ingroup dspTrajectoryLib
 *
 * @brief Hypocycloid Function Unit in 2D for Jamoma DSP
 *
 * @details see http://en.wikipedia.org/wiki/Hypocycloid fo details @n
 * 
 * @authors Nils Peters
 *
 * @copyright Copyright © 2011 by Nils Peters @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __HYPOCYCLOID_2D_H__
#define __HYPOCYCLOID_2D_H__

#include "TTDSP.h"


class Hypocycloid2D : TTAudioObject {
	TTCLASS_SETUP(Hypocycloid2D)

protected:

	TTFloat64	mA, aMinusOne;

	/**	Set the trajectory parameter k of the rendering equation in http://en.wikipedia.org/wiki/Hypocycloid
	@param Value				The new value to apply.
	@return						#TTErr error code if the method fails to execute, else #kTTErrNone.
	*/	
	TTErr setA(const TTValue& value);

	/**	A standard audio processing method as used by Jamoma DSP objects.
	 @param inputs				The input vector that is to be processed.
	 @param outputs				The resulting windowed vector.
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */		
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
};


#endif // __HYPOCYCLOID_2D_H__
