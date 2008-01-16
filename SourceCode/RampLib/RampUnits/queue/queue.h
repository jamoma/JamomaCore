/* 
 * Jamoma RampUnit: linear.queue
 * Linear ramping function using the Max queue
 *
 * By Tim Place, Copyright © 2006, 2007
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __LINEARQUEUE_H__
#define __LINEARQUEUE_H__

#include "ramplib.h"		// Common definitions used by the RampLib


typedef struct _linear_queue {
	rampunit_method_callback_type	callback;		///< usually a function in a Max external
	void							*baton;			///< usually a pointer to the Max external's instance
	void							*max_qelem;		///< pointer to a Max queue element instance
	char							active;			///< is the ramp running?
	float							ramptime;		///< in ms
	double							*value_start;
	double							*value_target;
	double							*value_current;
	double							value;			///< normalized progress in the ramp
	short							numvalues;
	unsigned long					time_start;
	unsigned long					time_target;
	
	t_symbol						*functionName;	// FunctionLib stuff
	FunctionLib						*function;		// ...
} t_linear_queue;


// public prototypes
extern "C" {
t_linear_queue*	create	(rampunit_method_callback_type in_callback, void *in_baton);
void			destroy	(t_linear_queue *rampunit);
JamomaError		setFunction(t_linear_queue *rampunit, t_symbol *functionName);
JamomaError		getFunction(t_linear_queue *rampunit, t_symbol **functionName);
JamomaError		setFunctionParameter(t_linear_queue *rampunit, t_symbol *parameterName, long argc, t_atom *argv);
JamomaError		getFunctionParameter(t_linear_queue *rampunit, t_symbol *parameterName, long *argc, t_atom **argv);
ramp_err		attrset	(t_linear_queue *rampunit, t_symbol *attrname, double value);
ramp_err		attrget	(t_linear_queue *rampunit, t_symbol *attrname, double *value);
void			go		(t_linear_queue *rampunit, short numvalues, double *values, double time);
void			set		(t_linear_queue *rampunit, short numvalues, double *values);
void			stop	(t_linear_queue *rampunit);
void			tick	(t_linear_queue *rampunit);
void			setclock(t_linear_queue *rampunit, t_symbol *clockName);
};

// private prototypes
void setnumvalues(t_linear_queue *rampunit, short numvalues);


#endif // __LINEARQUEUE_H__
