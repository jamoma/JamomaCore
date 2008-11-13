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

#include "TTAudioObject.h"


/****************************************************************************************************/
// Class Specification


/**	A simple one-pole lowpass function.
	This is most useful as a way of smoothing the input according to a coefficient.
	At a basic level it is the same as the TTLowpassOnepole class, however this version
	is much simpler and is optimized for calls to calculate a single output rather than
	multichannel audio signals.
 */
class LowpassFunction : public TTAudioObject {
private:
	TTFloat64		coefficient;
	TTFloat64		one_minus_coefficient;
	TTFloat64		feedback;

	TTErr clear();
	TTErr setcoefficient(const TTValue& newValue);

public:
	LowpassFunction(TTUInt16 newMaxNumChannels);
	virtual ~LowpassFunction();
	
	/** y = f(x) for a single value */
	inline TTErr calculateValue(const TTFloat64& x, TTFloat64& y);
	
	/**	A standard audio processing method as used by TTBlue objects.*/
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
};


#endif // __LOWPASSFUNCTION_H__
