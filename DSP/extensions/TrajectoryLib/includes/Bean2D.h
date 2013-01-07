/** @file
 *
 * @ingroup dspTrajectoryLib
 *
 * @brief Bean2D Trajectory Unit for Jamoma DSP
 *
 * @details see http://mathworld.wolfram.com/Bean.html for details @n
 * 
 * @authors Nils Peters
 *
 * @copyright Copyright © 2011 by Nils Peters @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __BEAN_2D_H__
#define __BEAN_2D_H__

#include "TTDSP.h"


class Bean2D : TTAudioObjectBase {
	TTCLASS_SETUP(Bean2D)

protected:

	//inline TTErr calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data);
	
	/**	A standard audio processing method as used by Jamoma DSP objects.
	 @param inputs				The input vector that is to be processed.
	 @param outputs				The resulting windowed vector.
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
};


#endif // __BEAN_2D_H__
