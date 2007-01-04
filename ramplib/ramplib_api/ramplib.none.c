/* 
 * Jamoma RampLib Unit 
 * Just pass the data through with no ramping.
 * By Tim Place, Copyright © 2006
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "ramplib.none.h"


#pragma mark -
#pragma mark Unit life-cycle
void *ramplib_none_create(ramplib_method_callback callback, void *x)
{
	t_ramplib_none *ramp = NULL;

	ramp = (t_ramplib_none *)malloc(sizeof(t_ramplib_none));
	if(ramp){
		ramp->callback = callback;
		ramp->x = x;
		ramplib_none_attrset(ramp, k_value_current, 100.0);		// default value = 100		
		return ramp;		
	}
	return NULL;
}


void ramplib_none_free(void *ramp)
{
	free((t_ramplib_none *)ramp);
}


#pragma mark -
#pragma mark Attributes
void ramplib_none_attrset(void *ramp, int selector, double value)
{
	t_ramplib_none *thisramp = (t_ramplib_none *)ramp;
	
	switch (selector){			
		case k_value_current:
			thisramp->value_current = value;	
			break;
	}
}


double ramplib_none_attrget(void *ramp, int selector)
{
	t_ramplib_none *thisramp = (t_ramplib_none *)ramp;

	switch (selector){
		case k_value_current:
			return thisramp->value_current;
		default:
			return 0;
	}
}


#pragma mark -
#pragma mark Standard Methods
void ramplib_none_go(void *ramp, float value, double time)
{	
	t_ramplib_none *thisramp = (t_ramplib_none *)ramp;

	thisramp->value_target = value;
	ramplib_none_tick(ramp); 	// no ramping, just call tick() directly
}


void ramplib_none_set(void *ramp, double value)
{
	t_ramplib_none *thisramp = (t_ramplib_none *)ramp;

	thisramp->value_current = value;
}


void ramplib_none_stop(void *ramp)
{
	;	// no ramping, nothing to do
}


void ramplib_none_tick(void *ramp)
{
	t_ramplib_none *thisramp = (t_ramplib_none *)ramp;

	thisramp->value_current = thisramp->value_target;			// set the current value
	(thisramp->callback)(thisramp->x, thisramp->value_current);	// send the value to the host
}
