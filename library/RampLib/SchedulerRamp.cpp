/* 
 * Jamoma RampUnit: scheduler
 * Ramping function using the Max scheduler
 *
 * By Tim Place, Copyright © 2006, 2007
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "SchedulerRamp.h"

#define thisTTClass			SchedulerRamp
#define thisTTClassName		"SchedulerRamp"
#define thisTTClassTags		"modular, max, rampunit"


// called by the Max queue, and provided to the qelem -- needs to have a C interface
void schedulerramp_clockfn(SchedulerRamp *x)
{
	x->tick();
}


TT_RAMPUNIT_CONSTRUCTOR,
	stepsize(0.0), 
	isRunning(false)
{
	clock = clock_new(this, (method)&schedulerramp_clockfn);	// install the max timer

	registerAttribute(TT("granularity"), kTypeFloat32, &attrGranularity);	
	registerAttribute(TT("clock"), kTypeSymbol, &attrClock, (TTSetterMethod)&SchedulerRamp::setClock);	

	setAttributeValue(TT("granularity"), 20.0);
	setAttributeValue(TT("clock"), TT(""));
}


SchedulerRamp::~SchedulerRamp()
{
	clock_unset(clock);
	object_free((t_object*)clock);
}


// TODO: setclock is deprecated in Max 5, so we may wish to remove this feature at some point?
TTErr SchedulerRamp::setClock(const TTValue& newValue)
{
	attrClock = newValue;
	return kTTErrNone;
}


void SchedulerRamp::go(TTUInt32 inNumValues, TTFloat64 *inValues, TTFloat64 time)
{
	TTUInt32 i;
	
	ramptime = time;
	setNumValues(inNumValues);
	
	// Test: Do we need to ramp at all?
	if (ramptime<=0.) {
		for (i=0; i<numValues; i++)
			currentValue[i] = inValues[i];
		isRunning = false;
		(callback)(baton, numValues, currentValue);		// output end values
	}
	else {
		numgrains = ramptime / attrGranularity;
		stepsize = 1.0 / numgrains;		
		for (i=0; i<numValues; i++) {
			targetValue[i] = inValues[i];
			startValue[i] = currentValue[i];
		}
		normalizedValue = 0.0;							// set the ramp to the beginning
		isRunning = true;
		(callback)(baton, numValues, currentValue);		// output start values
		setclock_fdelay(NULL, clock, attrGranularity);	// and schedule first tick
	}
}


void SchedulerRamp::stop()
{
	clock_unset(clock);
	isRunning = false;
}


void SchedulerRamp::tick()
{
	TTUInt32		i;
	double			mapped;
	double			*current = currentValue;
	double			*target = targetValue;
	double			*start = startValue;

	if (functionUnit && isRunning) {
		// 1. go to the the next step in our ramp
		numgrains--;
		
		// Safety measure at end of ramp in case of accumulated numeric errors. Setting the input value to the function ensures that it works with regular functions as well as window functions.
		if (numgrains <= 0.)
			normalizedValue = 1.0;
		else
			normalizedValue += stepsize;
		
		functionUnit->calculate(normalizedValue, mapped);
		for (i=0; i < numValues; i++)
			current[i] = start[i] + ((target[i] - start[i]) * mapped);
		
		// 2. send the value to the host
		(callback)(baton, numValues, currentValue);

		// 3. set the clock to fire again
		if (numgrains > 0.)
			setclock_fdelay(NULL, clock, attrGranularity);
		else
			isRunning = false;
	}
}

