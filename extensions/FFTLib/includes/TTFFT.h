/* 
 * Jamoma DSP FFT Object
 * Copyright © 2010, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TT_FFT_H__
#define __TT_FFT_H__

#include "TTDSP.h"


/**	TTOperator performs basic mathematical operations on an input signal, or a pair of input signals */
class TTfft : TTAudioObject {
	TTCLASS_SETUP(TTfft)

	/**	A standard audio processing method as used by Jamoma DSP objects. */
	TTErr process(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	
};


#endif // __TT_FFT_H__
