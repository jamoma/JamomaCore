/* 
 * Jamoma RampUnit: none
 * A non-ramping function -- just sets the value immediately
 *
 * By Tim Place, Copyright � 2006, 2007
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "Jamoma.h"
#include "none.h"


t_none*	create(rampunit_method_callback_type in_callback, void *in_baton)
{
	t_none *rampunit = (t_none *)malloc(sizeof(t_none));
	if(rampunit){
		rampunit->callback = in_callback;
		rampunit->baton = in_baton;
		rampunit->value_current = NULL;
		rampunit->value_target = NULL;
		rampunit->numvalues = 0;
		setnumvalues(rampunit, 1);
		rampunit->value_current[0] = 0;
	}
	return rampunit;
}


void destroy(t_none *rampunit)
{
	free(rampunit->value_current);
	free(rampunit->value_target);
	free(rampunit);
}


ramp_err attrset(t_none *rampunit, t_symbol *attrname, double value)
{
	return RAMP_ERR_ATTR_INVALID;
}


ramp_err attrget(t_none *rampunit, t_symbol *attrname, double *value)
{
	return RAMP_ERR_ATTR_INVALID;
}


JamomaError setFunction(t_none *rampunit, t_symbol *functionName)
{
	return JAMOMA_ERR_NONE;
}


JamomaError getFunction(t_none *rampunit, t_symbol **functionName)
{
	return JAMOMA_ERR_NONE;
}


void go(t_none *rampunit, short numvalues, double *values, double time)
{
	short i;
	
	setnumvalues(rampunit, numvalues);
	for(i=0; i<numvalues; i++)
		rampunit->value_target[i] = values[i];
	
	tick(rampunit);						// no ramping, just call tick() directly
}


void set(t_none *rampunit, short numvalues, double *values)
{
	short i;

	setnumvalues(rampunit, numvalues);
	for(i=0; i<numvalues; i++)
		rampunit->value_current[i] = values[i];
}


void stop(t_none *rampunit)
{
	;	// no ramping, nothing to do
}


void tick(t_none *rampunit)
{
	short i;

	for(i=0; i < rampunit->numvalues; i++)
		rampunit->value_current[i] = rampunit->value_target[i];								// set the current value
	(rampunit->callback)(rampunit->baton, rampunit->numvalues, rampunit->value_current);	// send the value to the host
}


// PRIVATE METHOD: memory allocation
void setnumvalues(t_none *rampunit, short numvalues)
{
	if(numvalues != rampunit->numvalues){
		if(rampunit->numvalues == 0){
			rampunit->value_current = (double *)malloc(numvalues * sizeof(double));
			rampunit->value_target = (double *)malloc(numvalues * sizeof(double));
		}
		else{
			rampunit->value_current = (double *)realloc(rampunit->value_current, numvalues * sizeof(double));
			rampunit->value_target = (double *)realloc(rampunit->value_target, numvalues * sizeof(double));
		}
		rampunit->numvalues = numvalues;
	}	
}

