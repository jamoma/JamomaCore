/* 
 * Jamoma RampUnit: async
 * Asyncronuous ramping driven by bangs passed to module (hub) 
 * or Max messages passed to leftmost signal inlet.
 *
 * By Trond Lossius, Copyright © 2007
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __ASYNC_H__
#define __ASYNC_H__

#include "RampLib.h"		// Common definitions used by the RampLib


class AsyncRamp : public RampUnit{
	TTCLASS_SETUP(AsyncRamp)

private:
	float				ramptime;		///< in ms
	unsigned long		startTime;
	unsigned long		targetTime;
	
public:	
	void go(TTUInt32 numValues, TTFloat64 *inValues, TTFloat64 time);
	void stop();
	void tick();
};


#endif // __ASYNC_H__
