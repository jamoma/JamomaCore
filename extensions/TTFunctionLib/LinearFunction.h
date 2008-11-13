/* 
 * LinearFunction Unit for TTBlue
 * Originally written for the Jamoma FunctionLib
 * Copyright © 2007 by Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __LINEARFUNCTION_H__
#define __LINEARFUNCTION_H__

#include "TTAudioObject.h"


/****************************************************************************************************/
// Class Specification


/**	This implements a function which basically does nothing: 
	y = f(x)
 */
class LinearFunction : public TTAudioObject {
public:
	LinearFunction(TTUInt16 newMaxNumChannels);
	virtual ~LinearFunction();

	/** y = f(x) for a single value */
	inline TTErr calculateValue(const TTFloat64& x, TTFloat64& y);
	
	/**	A standard audio processing method as used by TTBlue objects.*/
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
};


#endif // __LINEARFUNCTION_H__
