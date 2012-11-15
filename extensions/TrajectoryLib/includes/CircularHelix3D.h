/** @file
 *
 * @ingroup dspTrajectoryLib
 *
 * @brief Circular Helix Function Unit for Jamoma DSP
 *
 * @details circular helix function in 3D @n
 * 
 * @authors Nils Peters
 *
 * @copyright Copyright © 2011 by Nils Peters @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#ifndef __CIRCULARHELIX_3D_H__
#define __CIRCULARHELIX_3D_H__

#include "TTDSP.h"


class CircularHelix3D : TTAudioObject {
	TTCLASS_SETUP(CircularHelix3D)

protected:

	TTFloat64 mA;
	//inline TTErr calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data);
	
	/**	A standard audio processing method as used by Jamoma DSP objects.
	 @param inputs				The input vector that is to be processed.
	 @param outputs				The resulting windowed vector.
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */	
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
};


#endif // __CIRCULARHELIX_3D_H__
