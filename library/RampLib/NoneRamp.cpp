/* 
 * Jamoma RampUnit: none
 * A non-ramping function -- just sets the value immediately
 *
 * By Tim Place, Copyright © 2006, 2007
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "NoneRamp.h"

#define thisTTClass			NoneRamp
#define thisTTClassName		"NoneRamp"
#define thisTTClassTags		"modular, max, rampunit"


TT_RAMPUNIT_CONSTRUCTOR
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
	for (i =0; i <numValues; i++)
		targetValue[i] = inValues[i];
	
	mIsRunning = YES;
	
	tick();		// no ramping, just call tick() directly
}


void NoneRamp::stop()
{
	mIsRunning = NO;
}


void NoneRamp::tick()
{
	TTUInt32 i;

	for (i =0; i < numValues; i++)
		currentValue[i] = targetValue[i];			// set the current value
	(callback)(baton, numValues, currentValue);		// send the value to the host
}

