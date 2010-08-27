/* 
 * Jamoma RampUnit: none
 * A non-ramping function -- just sets the value immediately
 *
 * By Tim Place, Copyright © 2006, 2007
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __NONE_H__
#define __NONE_H__

#include "RampLib.h"		// Common definitions used by the RampLib


class NoneRamp : public RampUnit{
	TTCLASS_SETUP(NoneRamp)
	
public:
	void go(TTUInt32 numValues, TTFloat64 *inValues, TTFloat64 time);
	void stop();
	void tick();
};


#endif // __NONE_H__
