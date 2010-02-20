/* 
 * Jamoma RampUnit: async
 * Asyncronuous ramping driven by bangs passed to module (hub) 
 * or Max messages passed to leftmost signal inlet.
 *
 * By Trond Lossius, Copyright © 2007
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __ASYNC_H__
#define __ASYNC_H__

#include "RampLib.h"		// Common definitions used by the RampLib


class AsyncRamp : public RampUnit{
private:
	char				active;			///< is the ramp running?
	float				ramptime;		///< in ms
	unsigned long		startTime;
	unsigned long		targetTime;
	
public:
	AsyncRamp(RampUnitCallback aCallbackMethod, void *aBaton);
	~AsyncRamp();
	
	void go(TTUInt32 numValues, TTFloat64 *inValues, TTFloat64 time);
	void stop();
	void tick();
};


#endif // __ASYNC_H__
