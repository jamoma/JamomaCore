/* 
 * Jamoma RampUnit: linear.sched
 * Linear ramping function using the Max scheduler
 *
 * By Tim Place, Copyright © 2006, 2007
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __SCHEDULER_H__
#define __SCHEDULER_H__

#include "RampLib.h"		// Common definitions used by the RampLib


class SchedulerRamp : public RampUnit{
private:
	float				ramptime;			///< in ms
	unsigned long		startTime;
	unsigned long		targetTime;
	void				*clock;				///< Pointer to a Max clock instance
	TTFloat32			attrGranularity;	///< The granularity or time intervals between successive values in ms
	TTSymbol			attrClock;			///< The name of the setclock object to use
	long				numgrains;			///< The number of steps left to take in this ramp
	double				stepsize;			///< The size of the steps we need to take in the normalized range
	
	/** Attribute setter. */
	TTErr setClock(const TTValue& newValue);

public:
	SchedulerRamp(RampUnitCallback aCallbackMethod, void *aBaton);
	~SchedulerRamp();
	
	void go(TTUInt32 numValues, TTFloat64 *inValues, TTFloat64 time);
	void stop();
	void tick();
};


#endif // __SCHEDULER_H__
