/* 
 * Jamoma RampUnit: async
 * Asyncronuous ramping driven by bangs passed to module (hub) 
 * or Max messages passed to leftmost signal inlet.
 *
 * By Trond Lossius, (c) 2007
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "Jamoma.h"
#include "AsyncRamp.h"


AsyncRamp::AsyncRamp(RampUnitCallback aCallbackMethod, void *aBaton)
	: RampUnit("ramp.async", aCallbackMethod, aBaton)
{
	active = 0;
}


AsyncRamp::~AsyncRamp()
{
	;
}


void AsyncRamp::go(TTUInt32 inNumValues, TTFloat64 *inValues, TTFloat64 time)
{
	TTUInt32 i;
	
	ramptime 	= time;
	startTime	= systime_ms();
	targetTime	= startTime + time;

	setNumValues(inNumValues);
	for(i=0; i<numValues; i++){
		targetValue[i] = inValues[i];
		startValue[i] = currentValue[i];
	}
	normalizedValue = 0.0;	// set the ramp to the beginning
	active = 1;		
}


void AsyncRamp::stop()
{
	active = 0;
}


void AsyncRamp::tick()
{
	unsigned long 	currentTime = systime_ms();
	TTUInt32		i;
	double			mapped;
	double			*current = currentValue;
	double			*target = targetValue;
	double			*start = startValue;
	float			ratio;
	
	if(active){
		if(currentTime > targetTime){
			active = 0;
			for(i=0; i < numValues; i++)
				currentValue[i] = targetValue[i];
		}
		else{
			ratio = (currentTime - startTime) / (float)ramptime;
			mapped = functionUnit->map(ratio);
			for(i=0; i < numValues; i++)
				current[i] = (target[i] * mapped) + (start[i] * (1 - mapped));
		}
		(callback)(baton, numValues, currentValue);		// send the value to the host
	}
}

