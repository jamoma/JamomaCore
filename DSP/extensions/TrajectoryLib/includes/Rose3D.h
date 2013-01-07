/** @file
 *
 * @ingroup dspTrajectoryLib
 *
 * @brief Rose Function Unit in 3D for Jamoma DSP
 *
 * @details see http://mathworld.wolfram.com/Rose.html for details @n
 * 
 * @authors Nils Peters
 *
 * @copyright Copyright © 2011 by Nils Peters @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#ifndef __ROSE_3D_H__
#define __ROSE_3D_H__

#include "TTDSP.h"


class Rose3D : TTAudioObjectBase {
	TTCLASS_SETUP(Rose3D)

protected:

	TTFloat64			mA, mB, mC, mDeltaX, mDeltaY, mDeltaZ;
		
	/**	A standard audio processing method as used by Jamoma DSP objects.
	 @param inputs				The input vector that is to be processed.
	 @param outputs				The resulting windowed vector.
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */			
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
		
	TTErr setA(const TTValue& value);
	TTErr setB(const TTValue& value);
	TTErr setC(const TTValue& value);
	TTErr setDeltaX(const TTValue& value);
	TTErr setDeltaY(const TTValue& value);
	TTErr setDeltaZ(const TTValue& value);
};


#endif // __Rose3D_H__
