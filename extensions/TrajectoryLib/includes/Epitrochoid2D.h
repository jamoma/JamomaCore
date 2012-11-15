/** @file
 *
 * @ingroup dspTrajectoryLib
 *
 * @brief Epitrochoid Function Unit for Jamoma DSP
 *
 * @details http://mathworld.wolfram.com/Epitrochoid.html in 2D @n
 * 
 * @authors Nils Peters
 *
 * @copyright Copyright © 2011 by Nils Peters @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __EPITROCHOID_2D_H__
#define __EPITROCHOID_2D_H__

#include "TTDSP.h"


class Epitrochoid2D : TTAudioObject {
	TTCLASS_SETUP(Epitrochoid2D)

protected:

	TTFloat64	mA, mB, aPlusOne;

	/**	Set the trajectory parameter a of the rendering equation in http://mathworld.wolfram.com/Epitrochoid.html
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


#endif // __EPITROCHOID_2D_H__
