/* 
 * LowpassFunction Unit for TTBlue
 * Originally written for the Jamoma FunctionLib
 * Copyright © 2007 by Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __LOWPASSFUNCTION_H__
#define __LOWPASSFUNCTION_H__

#include "TTBlueAPI.h"


/**	A simple one-pole lowpass function.
	This is most useful as a way of smoothing the input according to a coefficient.
	At a basic level it is the same as the TTLowpassOnepole class, however this version
	is much simpler and is optimized for calls to calculate a single output rather than
	multichannel audio signals.
 */
TTAUDIOCLASS(LowpassFunction)

	TTFloat64		coefficient;
	TTFloat64		one_minus_coefficient;
	TTFloat64*		feedback;

	TTErr updateMaxNumChannels(const TTValue& oldMaxNumChannels);
	TTErr clear();
	TTErr setcoefficient(const TTValue& newValue);

	/** y = f(x) for a single value */
	TTErr calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data);
	
	/**	A standard audio processing method as used by TTBlue objects.*/
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

};


#endif // __LOWPASSFUNCTION_H__
