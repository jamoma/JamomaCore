/* 
 * Jamoma RampUnit: external External
 * Propagate the command of a ramp (as a temporary solution before having a real parameter~)
 *
 * By Théo de la Hogue, Copyright © 2012
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __EXTERNAL_H__
#define __EXTERNAL_H__

#include "RampLib.h"		// Common definitions used by the RampLib

class ExternalRamp : public RampUnit{
	TTCLASS_SETUP(ExternalRamp)

private:
	float				ramptime;			///< in ms
	unsigned long		startTime;
	unsigned long		targetTime;
	void				*clock;				///< Pointer to a Max clock instance
	TTFloat32			attrGranularity;	///< The granularity or time intervals between successive values in ms
	TTSymbol			attrClock;			///< The name of the setclock object to use
	TTFloat32			numgrains;			///< The number of steps left to take in this ramp. We use float value to cope with ramps shorter than the duration of attrGranularity
	double				stepsize;			///< The size of the steps we need to take in the normalized range
	
	/** Attribute setter. */
	TTErr setClock(const TTValue& newValue);
    
public:
	void go(TTUInt32 numValues, TTFloat64 *inValues, TTFloat64 time);
	void stop();
	void tick();
};


#endif // __EXTERNAL_H__
