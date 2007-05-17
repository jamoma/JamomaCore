/* 
 * Jamoma RampUnit: LinearSched (linear.sched) 
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
#include "ext.h"			// This unit requires Max headers because we use its scheduler


typedef struct LinearSched {
	ramplib_method_callback		callback;	///< usually a function in a Max external
	void						*baton;		///< usually a pointer to the Max external's instance
	void						*max_clock;		// pointer to a Max clock instance
	float						ramptime;		// in ms
	double						value_target;
	double						value_current;
	float						granularity;	// in ms
	double						stepsize;		// size of the steps we need to take
	long						numgrains;		// number of steps left to take in this ramp
} t_linear_sched;


// prototypes
t_linear_sched*	create	(ramplib_method_callback in_callback, void *in_baton);
void			destroy	(t_linear_sched *rampunit);
void			attrset	(t_linear_sched *rampunit, int selector, double value);
double			attrget	(t_linear_sched *rampunit, int selector);
void			go		(t_linear_sched *rampunit, float value, double time);
void			set		(t_linear_sched *rampunit, double value);
void			stop	(t_linear_sched *rampunit);
void			tick	(t_linear_sched *rampunit);


#endif // #ifndef __LINEARSCHED_H__
