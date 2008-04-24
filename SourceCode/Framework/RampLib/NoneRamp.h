/* 
 * Jamoma RampUnit: none
 * A non-ramping function -- just sets the value immediately
 *
 * By Tim Place, Copyright © 2006, 2007
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __NONE_H__
#define __NONE_H__

#include "RampLib.h"		// Common definitions used by the RampLib


class NoneRamp : public RampUnit{
private:
	
public:
	NoneRamp(RampUnitCallback aCallbackMethod, void *aBaton);
	~NoneRamp();
	
	void go(TTUInt32 numValues, TTFloat64 *inValues, TTFloat64 time);
	void stop();
	void tick();
};


#endif // __NONE_H__
