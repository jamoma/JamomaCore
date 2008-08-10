/* 
 * CosineFunction Unit for TTBlue
 * Originally written for the Jamoma FunctionLib
 * Copyright © 2007 by Dave Watson
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __COSINEFUNCTION_H__
#define __COSINEFUNCTION_H__

#include "TTAudioObject.h"


/****************************************************************************************************/
// Class Specification


/**	A simple function unit the implements the following:
	y = cos(x)
 */
class CosineFunction : public TTAudioObject {
public:
	CosineFunction(TTUInt16 newMaxNumChannels);
	virtual ~CosineFunction();

	/** y = f(x) for a single value */
	inline TTErr calculateValue(const TTFloat64& x, TTFloat64& y);
	
	/**	A standard audio processing method as used by TTBlue objects.*/
	TTErr processAudio(TTAudioSignal& in, TTAudioSignal& out);

};


#endif // __COSINEFUNCTION_H__
