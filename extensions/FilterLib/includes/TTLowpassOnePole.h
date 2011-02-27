/* 
 * Jamoma DSP 1-Pole Lowpass Filter Object
 * Copyright © 2008, Tim Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_LOWPASS_ONEPOLE_H__
#define __TT_LOWPASS_ONEPOLE_H__

#include "TTOnePole.h"


/**	The simplest of lowpass filters: a single-pole, no-zero algorithm. */
class TTLowpassOnePole : public TTOnePole {
	TTCLASS_SETUP(TTLowpassOnePole)
};


#endif // __TT_LOWPASS_ONEPOLE_H__
