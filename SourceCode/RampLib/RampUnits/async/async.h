/* 
 * Jamoma RampUnit: async
 * Asyncronuous ramping driven by bangs passed to module (hub) 
 * or Max messages passed to leftmost signal inlet.
 *
 * By Trond Lossius, Copyright © 2007
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __ASYNC_H__
#define __ASYNC_H__

#include "ramplib.h"		// Common definitions used by the RampLib


typedef struct _async {
	rampunit_method_callback_type	callback;		///< usually a function in a Max external
	void							*baton;			///< usually a pointer to the Max external's instance
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
} t_async;


// public prototypes
extern "C" {
t_async*		create	(rampunit_method_callback_type in_callback, void *in_baton);
void			destroy	(t_async *rampunit);
JamomaError		setFunction(t_async *rampunit, t_symbol *functionName);
JamomaError		getFunction(t_async *rampunit, t_symbol **functionName);
JamomaError		setFunctionParameter(t_async *rampunit, t_symbol *parameterName, long argc, t_atom *argv);
JamomaError		getFunctionParameter(t_async *rampunit, t_symbol *parameterName, long *argc, t_atom **argv);
ramp_err		attrset	(t_async *rampunit, t_symbol *attrname, double value);
ramp_err		attrget	(t_async *rampunit, t_symbol *attrname, double *value);
void			go		(t_async *rampunit, short numvalues, double *values, double time);
void			set		(t_async *rampunit, short numvalues, double *values);
void			stop	(t_async *rampunit);
void			tick	(t_async *rampunit);
};

// private prototypes
void setnumvalues(t_async *rampunit, short numvalues);


#endif // __LINEARQUEUE_H__
