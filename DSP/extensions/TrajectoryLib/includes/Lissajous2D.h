/** @file
 *
 * @ingroup dspTrajectoryLib
 *
 * @brief Lissajous Knot Function Unit in 2D for Jamoma DSP
 *
 * @details see http://en.wikipedia.org/wiki/Lissajous_knot for details @n
 * 
 * @authors Nils Peters
 *
 * @copyright Copyright © 2011 by Nils Peters @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#ifndef __LISSAJOUS_2D_H__
#define __LISSAJOUS_2D_H__

#include "TTDSP.h"


class Lissajous2D : TTAudioObjectBase {
	TTCLASS_SETUP(Lissajous2D)

protected:

	TTFloat64			mA,mAa, mAb, mDeltaX;

	//inline TTErr calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data);
	TTErr setA(const TTValue& value);
	
	/**	A standard audio processing method as used by Jamoma DSP objects.
	 @param inputs				The input vector that is to be processed.
	 @param outputs				The resulting windowed vector.
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */			
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
		
};


#endif // __LISSAJOUS_2D_H__
