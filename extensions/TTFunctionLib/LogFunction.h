/* 
 * LogFunction Unit for TTBlue
 * Originally written for the Jamoma FunctionLib
 * Copyright © 2009 by Trond Lossius
 * Formula based on exscale (for ISPW and later for Max/MSP) by Norbert Schnell
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __LOGFUNCTION_H__
#define __LOGFUNCTION_H__

#include "TTBlueAPI.h"


/**	A function unit providing logaritmic mapping with variable base
	y = (log(x)/log(base)-1) / (base - 1)
 */
TTAUDIOCLASS(LogFunction)

	TTFloat64	base;			///< Base for the exponential function
	double		inScale;		///< Internal coefficient
	double		outScale;		///< Internal coefficient
		
	/** Calculate coefficients when this attr is set */
	TTErr setbase(const TTValue& value);
		
	/** y = f(x) for a single value */
	inline TTErr calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data);
	
	/**	A standard audio processing method as used by TTBlue objects.*/
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

};


#endif // __LOGFUNCTION_H__
