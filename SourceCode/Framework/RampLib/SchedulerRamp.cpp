/* 
 * Jamoma RampUnit: scheduler
 * Ramping function using the Max scheduler
 *
 * By Tim Place, Copyright © 2006, 2007
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "Jamoma.h"
#include "SchedulerRamp.h"

// called by the Max queue, and provided to the qelem -- needs to have a C interface
void schedulerramp_clockfn(SchedulerRamp *x)
{
	x->tick();
}


SchedulerRamp::SchedulerRamp(RampUnitCallback aCallbackMethod, void *aBaton)
	: RampUnit("ramp.scheduler", aCallbackMethod, aBaton), stepsize(0.0)
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
	//post("Tutten betutten");
	return kTTErrNone;
}


void SchedulerRamp::go(TTUInt32 inNumValues, TTFloat64 *inValues, TTFloat64 time)
{
	TTUInt32 i;
	
	ramptime = time;
	numgrains = ramptime / attrGranularity;
	stepsize = 1.0 / numgrains;

	setNumValues(inNumValues);
	for(i=0; i<numValues; i++){
		targetValue[i] = inValues[i];
		startValue[i] = currentValue[i];
	}
	normalizedValue = 0.0;				// set the ramp to the beginning
	setclock_fdelay(NULL, clock, 0);	// start now

}


void SchedulerRamp::stop()
{
	clock_unset(clock);
}


void SchedulerRamp::tick()
{
	TTUInt32		i;
	double			mapped;
	double			*current = currentValue;
	double			*target = targetValue;
	double			*start = startValue;

	if(functionUnit){
		// 1. go to the the next step in our ramp
		numgrains--;
		if(numgrains == 0){
			for(i=0; i < numValues; i++)
				currentValue[i] = targetValue[i];
		}
		else{
			normalizedValue += stepsize;
			functionUnit->calculate(normalizedValue, mapped);
			for(i=0; i < numValues; i++)
				current[i] = start[i] + ((target[i] - start[i]) * mapped);
		}
		
		// 2. send the value to the host
		(callback)(baton, numValues, currentValue);

		// 3. set the clock to fire again
		if(numgrains)
			setclock_fdelay(NULL, clock, attrGranularity);
	}
}

