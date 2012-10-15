/* 
 * Jamoma RampUnit: linear.sched
 * Linear ramping function using the Max scheduler
 *
 * By Tim Place, Copyright © 2006, 2007
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __SCHEDULER_H__
#define __SCHEDULER_H__

#include "RampLib.h"		// Common definitions used by the RampLib


class SchedulerRamp : public RampUnit{
	TTCLASS_SETUP(SchedulerRamp)

private:
	float				ramptime;			///< in ms
	unsigned long		startTime;
	unsigned long		targetTime;
	void				*clock;				///< Pointer to a Max clock instance
	TTFloat32			attrGranularity;	///< The granularity or time intervals between successive values in ms
	TTSymbol			attrClock;			///< The name of the setclock object to use
	TTFloat32			numgrains;			///< The number of steps left to take in this ramp. We use float value to cope with ramps shorter than the duration of attrGranularity
	double				stepsize;			///< The size of the steps we need to take in the normalized range
	TTBoolean			isRunning;			///< Is this running right now?
	
	/** Attribute setter. */
	TTErr setClock(const TTValue& newValue);

public:
	void go(TTUInt32 numValues, TTFloat64 *inValues, TTFloat64 time);
	void stop();
	void tick();
};


#endif // __SCHEDULER_H__
