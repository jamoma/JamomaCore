/* 
 * Jamoma RampUnit: none
 * A non-ramping function -- just sets the value immediately
 *
 * By Tim Place, Copyright © 2006, 2007
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */


#ifndef __NONE_H__
#define __NONE_H__

#include "ramplib.h"		// Common definitions used by the RampLib


typedef struct _none {
	rampunit_method_callback_type	callback;	///< usually a function in a Max external
	void							*baton;		///< usually a pointer to the Max external's instance
//	void						*max_clock;		// pointer to a Max clock instance
//	float						ramptime;		// in ms
	double						value_target;
	double							value_current;
//	float						granularity;	// in ms
//	double						stepsize;		// size of the steps we need to take
//	long						numgrains;		// number of steps left to take in this ramp
} t_none;


// prototypes
t_none*		create	(rampunit_method_callback_type in_callback, void *in_baton);
void		destroy	(t_none *rampunit);
ramp_err	attrset	(t_none *rampunit, int selector, double value);
ramp_err	attrget	(t_none *rampunit, int selector, double *value);
void		go		(t_none *rampunit, float value, double time);
void		set		(t_none *rampunit, double value);
void		stop	(t_none *rampunit);
void		tick	(t_none *rampunit);


#endif // __NONE_H__
