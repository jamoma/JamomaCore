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
	rampunit_method_callback_type	callback;		///< usually a function in a Max external
	void							*baton;			///< usually a pointer to the Max external's instance
	void							*max_clock;		// pointer to a Max clock instance
	float							ramptime;		// in ms
	float							granularity;	// in ms
	long							numgrains;		// number of steps left to take in this ramp
	short							numvalues;
	double							*value_target;
	double							*value_current;
	double							*stepsize;		// size of the steps we need to take
} t_linear_sched;


// public prototypes
t_linear_sched*	create	(rampunit_method_callback_type in_callback, void *in_baton);
void			destroy	(t_linear_sched *rampunit);
ramp_err		attrset	(t_linear_sched *rampunit, t_symbol *attrname, double value);
ramp_err		attrget	(t_linear_sched *rampunit, t_symbol *attrname, double *value);
void			go		(t_linear_sched *rampunit, short numvalues, double *values, double time);
void			set		(t_linear_sched *rampunit, short numvalues, double *values);
void			stop	(t_linear_sched *rampunit);
void			tick	(t_linear_sched *rampunit);

// private prototypes
void setnumvalues(t_linear_sched *rampunit, short numvalues);


#endif // __LINEARSCHED_H__
