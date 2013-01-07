/** @file
 *
 * @ingroup dspTrajectoryLib
 *
 * @brief Linear Function Unit in 3D for Jamoma DSP
 *
 * @details a simple linear function in three dimensions @n
 * 
 * @authors Nils Peters
 *
 * @copyright Copyright © 2011 by Nils Peters @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __LINEAR_3D_H__
#define __LINEAR_3D_H__

#include "TTDSP.h"


/**	This implements a function which basically does nothing: 
 y = f(x)
 */
class Linear3D : TTAudioObjectBase {
	TTCLASS_SETUP(Linear3D)
	
protected:	
	
	TTFloat64 mA, mB;
	//inline TTErr calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data);
	
	/**	A standard audio processing method as used by Jamoma DSP objects.
	 @param inputs				The input vector that is to be processed.
	 @param outputs				The resulting windowed vector.
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */			
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
};


#endif // __LINEAR_3D_H__
