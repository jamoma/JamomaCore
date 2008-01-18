/* 
 * Jamoma RampUnit: linear.sched
 * Linear ramping function using the Max scheduler
 *
 * By Tim Place, Copyright © 2006, 2007
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __SCHEDULER_H__
#define __SCHEDULER_H__

#include "ramplib.h"		// Common definitions used by the RampLib

typedef struct _scheduler {
	rampunit_method_callback_type	callback;		///< Pointer til a function, usually a function in a Max external that the ramp is feeding values back to
	void							*baton;			///< usually a pointer to the Max external's instance
	void							*max_clock;		///< Pointer to a Max clock instance
	float							ramptime;		///< The ramp time in ms
	float							granularity;	///< The granularity or time intervals between successive values in ms
	long							numgrains;		///< The number of steps left to take in this ramp
	
	short							numvalues;
	double							*value_target;	///< Destination value(s)
	double							*value_current; ///< The current value(s)
	double							*value_start;	///< The original starting value(s) of the ramp
	
	double							value;			///< The current value of the ramp in a normalized range [0,1]
	double							stepsize;		///< The size of the steps we need to take in the normalized range
	
	t_symbol						*functionName;	///< FunctionLib stuff
	FunctionLib						*function;		///< ...
} t_scheduler;


// public prototypes
extern "C" {
t_scheduler*	create	(rampunit_method_callback_type in_callback, void *in_baton);
void			destroy	(t_scheduler *rampunit);
JamomaError		setFunction(t_scheduler *rampunit, t_symbol *functionName);
JamomaError		getFunction(t_scheduler *rampunit, t_symbol **functionName);
JamomaError		setFunctionParameter(t_scheduler *rampunit, t_symbol *parameterName, long argc, t_atom *argv);
JamomaError		getFunctionParameter(t_scheduler *rampunit, t_symbol *parameterName, long *argc, t_atom **argv);
ramp_err		attrset	(t_scheduler *rampunit, t_symbol *attrname, long argc, t_atom *argv);
ramp_err		attrget	(t_scheduler *rampunit, t_symbol *attrname, long *argc, t_atom **argv);
void			go		(t_scheduler *rampunit, short numvalues, double *values, double time);
void			set		(t_scheduler *rampunit, short numvalues, double *values);
void			stop	(t_scheduler *rampunit);
void			tick	(t_scheduler *rampunit);
}

// private prototypes
void setnumvalues(t_scheduler *rampunit, short numvalues);


#endif // __SCHEDULER_H__
