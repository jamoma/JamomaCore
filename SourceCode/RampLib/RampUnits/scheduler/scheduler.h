/* 
 * Jamoma RampUnit: linear.sched
 * Linear ramping function using the Max scheduler
 *
 * By Tim Place, Copyright © 2006, 2007
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __LINEARSCHED_H__
#define __LINEARSCHED_H__

#include "ramplib.h"		// Common definitions used by the RampLib

typedef struct _linear_sched {
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
} t_linear_sched;


// public prototypes
extern "C" {
t_linear_sched*	create	(rampunit_method_callback_type in_callback, void *in_baton);
void			destroy	(t_linear_sched *rampunit);
JamomaError		setFunction(t_linear_sched *rampunit, t_symbol *functionName);
JamomaError		getFunction(t_linear_sched *rampunit, t_symbol **functionName);
JamomaError		setFunctionParameter(t_linear_sched *rampunit, t_symbol *parameterName, long argc, t_atom *argv);
JamomaError		getFunctionParameter(t_linear_sched *rampunit, t_symbol *parameterName, long *argc, t_atom **argv);
ramp_err		attrset	(t_linear_sched *rampunit, t_symbol *attrname, double value);
ramp_err		attrget	(t_linear_sched *rampunit, t_symbol *attrname, double *value);
void			go		(t_linear_sched *rampunit, short numvalues, double *values, double time);
void			set		(t_linear_sched *rampunit, short numvalues, double *values);
void			stop	(t_linear_sched *rampunit);
void			tick	(t_linear_sched *rampunit);
}

// private prototypes
void setnumvalues(t_linear_sched *rampunit, short numvalues);


#endif // __LINEARSCHED_H__
