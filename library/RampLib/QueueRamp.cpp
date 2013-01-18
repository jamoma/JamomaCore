/* 
 * Jamoma RampUnit: linear.queue
 * Linear ramping function using the Max queue
 *
 * By Tim Place, Copyright � 2006, 2007
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "QueueRamp.h"

#define thisTTClass			QueueRamp
#define thisTTClassName		"QueueRamp"
#define thisTTClassTags		"modular, max, rampunit"


// called by the Max queue, and provided to the qelem -- needs to have a C interface
void queueramp_qfn(QueueRamp *x)
{
	x->tick();
}


TT_RAMPUNIT_CONSTRUCTOR
{
	qelem = qelem_new(this, (method)queueramp_qfn);	// install the queue element
}


QueueRamp::~QueueRamp()
{
	qelem_unset(qelem);
	qelem_free(qelem);
}


void QueueRamp::go(TTUInt32 inNumValues, TTFloat64 *inValues, TTFloat64 time)
{
	TTUInt32 i;
	
	ramptime 	= time;
	startTime	= systime_ms();
	targetTime	= startTime + time;

	setNumValues(inNumValues);
	for (i =0; i <numValues; i++) {
		targetValue[i] = inValues[i];
		startValue[i] = currentValue[i];
	}
	normalizedValue = 0.0;	// set the ramp to the beginning
	mIsRunning = YES;
	qelem_set(qelem);		// Start the ramp!
}


void QueueRamp::stop()
{
	mIsRunning = NO;
	qelem_unset(qelem);
}


void QueueRamp::tick()
{
	unsigned long 	currentTime = systime_ms();
	TTUInt32		i;
	double			mapped;
	double			*current = currentValue;
	double			*target = targetValue;
	double			*start = startValue;
	float			ratio;
	
	if (mIsRunning && functionUnit) {
		
		// Ensure that we get right value at end of ramp. This approach caters for regular functions as well as window functions.
		if (currentTime > targetTime) {
			mIsRunning = NO;
			ratio = 1.;
		}
		else {
			ratio = (currentTime - startTime) / (float)ramptime;
			qelem_set(qelem);							// set the qelem element to run again
		}
		functionUnit->calculate(ratio, mapped);
		
		for (i =0; i < numValues; i++)
			current[i] = start[i] + ((target[i] - start[i]) * mapped);
		
		(callback)(baton, numValues, currentValue);		// send the value to the host
	}
}

