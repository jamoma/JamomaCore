/** @file
 *
 * @ingroup dspWindowFunctionLib
 *
 * @brief Expodec (Exponential Decay) Window Function Unit for Jamoma DSP
 *
 * @details This implements an exponential decay window that applies principles described here: @n
 * http://en.wikipedia.org/wiki/Exponential_decay @n
 * @n
 * This window is intended for microsound applications as described by Roads (2001 p 88-90).
 * Ratio variable allows this single class to produce BOTH expodec and rexpodec windows with options between.
 * Lambda variable is set so that the quietest point in the decay will be -60 dB.
 * @n
 * Where 0. <= x <= 1. and 0. <= mRatio <= 1.: @n
 * y = e^ ( ( 1 - ( x / mRatio ) ) * lambda )        : for the attack (approaching peak) @n
 * 	 = e^ ( ((x - mRatio) / (1 - mRatio)) * lambda ) : for the release (leaving peak)
 *
 * @authors Nathan Wolek, Tim Place, Trond Lossius
 *
 * @copyright Copyright © 2011 by Nathan Wolek @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#ifndef __EXPODECWINDOW_H__
#define __EXPODECWINDOW_H__

#include "TTDSP.h"


/**	This implements an exponential decay window that applies principles described here: @n
 * http://en.wikipedia.org/wiki/Exponential_decay @n
 * @n
 * This window is intended for microsound applications as described by Roads (2001 p 88-90).
 * Ratio variable allows this single class to produce BOTH expodec and rexpodec windows with options between.
 * Lambda variable is set so that the quietest point in the decay will be -60 dB.
 * @n
 * Where 0. <= x <= 1. and 0. <= mRatio <= 1.: @n
 * y = e^ ( ( 1 - ( x / mRatio ) ) * lambda )        : for the attack (approaching peak) @n
 * 	 = e^ ( ((x - mRatio) / (1 - mRatio)) * lambda ) : for the release (leaving peak)
 */
class ExpodecWindow : TTAudioObject {
	TTCLASS_SETUP(ExpodecWindow)
	
protected:
	
	TTFloat64	mRatio;			///< ratio expresses where to place the loudest sample 0 <= ratio <= 1., 0 = no attack, 1 = no release
	
	/** y = f(x) for a single value */
	inline TTErr calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data);
	
	/**	A standard audio processing method as used by TTBlue objects.*/
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	
};


#endif // __EXPODECWINDOW_H__