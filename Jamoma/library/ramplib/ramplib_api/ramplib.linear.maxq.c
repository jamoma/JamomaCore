/* 
 * Jamoma RampLib Unit 
 * Perform a linear ramp in Max's low-priority queue
 * By Tim Place, Copyright © 2006
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "ramplib.linear.maxq.h"


#pragma mark -
#pragma mark Unit life-cycle
void *ramplib_linear_maxq_create(ramplib_method_callback callback, void *x)
{
	t_ramplib_linear_maxq *ramp = NULL;

	// Because this unit only works with Max, we'll use Max's API for memory allocation:
	ramp = (t_ramplib_linear_maxq *)sysmem_newptrclear(sizeof(t_ramplib_linear_maxq));
	if(ramp){
		ramp->callback = callback;
		ramp->x = x;
		ramp->max_qelem = qelem_new(ramp, (method)ramplib_linear_maxq_tick);	// install the queue element
		ramplib_linear_maxq_attrset(ramp, k_value_current, 0.0);				// init to zero
	
		return ramp;		
	}
	return NULL;
}


void ramplib_linear_maxq_free(void *ramp)
{
	t_ramplib_linear_maxq *thisramp = (t_ramplib_linear_maxq *)ramp;
	
	qelem_free(thisramp->max_qelem);
	sysmem_freeptr(thisramp);
}


#pragma mark -
#pragma mark Attributes
void ramplib_linear_maxq_attrset(void *ramp, int selector, double value)
{
	t_ramplib_linear_maxq *thisramp = (t_ramplib_linear_maxq *)ramp;
	
	switch (selector){			
		case k_value_current:
			thisramp->value_current = value;	
			break;
	}
}


double ramplib_linear_maxq_attrget(void *ramp, int selector)
{
	t_ramplib_linear_maxq *thisramp = (t_ramplib_linear_maxq *)ramp;
	
	switch (selector){
		case k_value_current:
			return thisramp->value_current;
		default:
			return 0;
	}
}


#pragma mark -
#pragma mark Standard Methods
void ramplib_linear_maxq_go(void *ramp, float value, double time)
{
	t_ramplib_linear_maxq *thisramp = (t_ramplib_linear_maxq *)ramp;
	
	thisramp->value_start 	= thisramp->value_current;
	thisramp->value_target	= value;
	thisramp->ramptime 		= time;

	thisramp->time_start = systime_ms();
	thisramp->time_target = thisramp->time_start + time;

	thisramp->active = 1;	
	qelem_set(thisramp->max_qelem);					// Start the ramp!	
}


void ramplib_linear_maxq_set(void *ramp, double value)
{
	t_ramplib_linear_maxq *thisramp = (t_ramplib_linear_maxq *)ramp;
	
	qelem_unset(thisramp->max_qelem);
	thisramp->value_current = value;
}


void ramplib_linear_maxq_stop(void *ramp)
{
	t_ramplib_linear_maxq *thisramp = (t_ramplib_linear_maxq *)ramp;
	
	qelem_unset(thisramp->max_qelem);
}


void ramplib_linear_maxq_tick(void *ramp)
{
	t_ramplib_linear_maxq 	*thisramp = (t_ramplib_linear_maxq *)ramp;
	unsigned long 			current_time = systime_ms();
	
	if(current_time > thisramp->time_target){
		thisramp->active = 0;
		thisramp->value_current = thisramp->value_target;
	}
	else{
		float ratio = (current_time - thisramp->time_start) / (float)thisramp->ramptime;
		thisramp->value_current = (thisramp->value_target * ratio) + (thisramp->value_start * (1 - ratio));
		qelem_set(thisramp->max_qelem);							// set the qelem element to run again
	}
	(thisramp->callback)(thisramp->x, thisramp->value_current);		// send the value to the host
}



