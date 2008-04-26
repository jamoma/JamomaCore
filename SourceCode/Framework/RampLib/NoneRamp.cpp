/* 
 * Jamoma RampUnit: none
 * A non-ramping function -- just sets the value immediately
 *
 * By Tim Place, Copyright © 2006, 2007
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "Jamoma.h"
#include "NoneRamp.h"

NoneRamp::NoneRamp(RampUnitCallback aCallbackMethod, void *aBaton)
	: RampUnit("ramp.none", aCallbackMethod, aBaton)
{
	;
}


NoneRamp::~NoneRamp()
{
	;
}


void NoneRamp::go(TTUInt32 inNumValues, TTFloat64 *inValues, TTFloat64 time)
{	
	TTUInt32 i;
	
	setNumValues(inNumValues);
	for(i=0; i<numValues; i++)
		targetValue[i] = inValues[i];
	tick();		// no ramping, just call tick() directly
}


void NoneRamp::stop()
{
	;
}


void NoneRamp::tick()
{
	TTUInt32 i;

	for(i=0; i < numValues; i++)
		currentValue[i] = targetValue[i];			// set the current value
	(callback)(baton, numValues, currentValue);		// send the value to the host
}

