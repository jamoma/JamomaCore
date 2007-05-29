/* 
 * Jamoma RampUnit: linear.queue
 * Linear ramping function using the Max queue
 *
 * By Tim Place, Copyright © 2006, 2007
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "linear.queue.h"


t_linear_queue*	create(rampunit_method_callback_type in_callback, void *in_baton)
{
	t_linear_queue *rampunit = (t_linear_queue *)malloc(sizeof(t_linear_queue));
	if(rampunit){
		rampunit->callback = in_callback;
		rampunit->baton = in_baton;
		rampunit->max_qelem = qelem_new(rampunit, (method)tick);	// install the queue element
		rampunit->value_current = NULL;
		rampunit->value_target = NULL;
		rampunit->value_start = NULL;
		setnumvalues(rampunit, 1);
		rampunit->value_current[0] = 0;
	}
	return rampunit;
}


void destroy(t_linear_queue *rampunit)
{
	qelem_unset(rampunit->max_qelem);
	qelem_free(rampunit->max_qelem);
	free(rampunit->value_current);
	free(rampunit->value_target);
	free(rampunit->value_start);
	free(rampunit);
}


ramp_err attrset(t_linear_queue *rampunit, t_symbol *attrname, double value)
{
	return RAMP_ERR_ATTR_INVALID;
}


ramp_err attrget(t_linear_queue *rampunit, t_symbol *attrname, double *value)
{
	return RAMP_ERR_ATTR_INVALID;
}


void go(t_linear_queue *rampunit, short numvalues, double *values, double time)
{
	short i;
	
	rampunit->ramptime 		= time;
	rampunit->time_start	= systime_ms();
	rampunit->time_target	= rampunit->time_start + time;

	setnumvalues(rampunit, numvalues);
	for(i=0; i<numvalues; i++){
		rampunit->value_start[i] = rampunit->value_current[i];
		rampunit->value_target[i] = values[i];
	}
	rampunit->active = 1;	
	qelem_set(rampunit->max_qelem);					// Start the ramp!	
}


void set(t_linear_queue *rampunit, short numvalues, double *values)
{
	short i;
	
	qelem_unset(rampunit->max_qelem);
	setnumvalues(rampunit, numvalues);
	for(i=0; i<numvalues; i++)
		rampunit->value_current[i] = values[i];
}


void stop(t_linear_queue *rampunit)
{
	qelem_unset(rampunit->max_qelem);
}


void tick(t_linear_queue *rampunit)
{
	unsigned long 	current_time = systime_ms();
	short			i;
	
	if(current_time > rampunit->time_target){
		rampunit->active = 0;
		for(i=0; i < rampunit->numvalues; i++)
			rampunit->value_current[i] = rampunit->value_target[i];
	}
	else{
		float ratio = (current_time - rampunit->time_start) / (float)rampunit->ramptime;
		for(i=0; i < rampunit->numvalues; i++)
			rampunit->value_current[i] = (rampunit->value_target[i] * ratio) + (rampunit->value_start[i] * (1 - ratio));
		qelem_set(rampunit->max_qelem);							// set the qelem element to run again
	}
	(rampunit->callback)(rampunit->baton, rampunit->numvalues, rampunit->value_current);		// send the value to the host
}



// PRIVATE METHOD: memory allocation
void setnumvalues(t_linear_queue *rampunit, short numvalues)
{
	if(numvalues != rampunit->numvalues){
		if(rampunit->numvalues == 0){
			rampunit->value_current = (double *)malloc(numvalues * sizeof(double));
			rampunit->value_target = (double *)malloc(numvalues * sizeof(double));
			rampunit->value_start = (double *)malloc(numvalues * sizeof(double));
		}
		else{
			rampunit->value_current = (double *)realloc(rampunit->value_current, numvalues * sizeof(double));
			rampunit->value_target = (double *)realloc(rampunit->value_target, numvalues * sizeof(double));
			rampunit->value_start = (double *)realloc(rampunit->value_start, numvalues * sizeof(double));
		}
		rampunit->numvalues = numvalues;
	}	
}


