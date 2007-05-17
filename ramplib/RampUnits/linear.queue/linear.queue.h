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
#include "ext.h"			// This unit requires Max headers because we use its queue


typedef struct _linear_queue {
	rampunit_method_callback_type	callback;		///< usually a function in a Max external
	void							*baton;			///< usually a pointer to the Max external's instance
	void							*max_qelem;		///< pointer to a Max queue element instance
	bool							active;			///< is the ramp running?
	float							ramptime;		///< in ms
	float							value_start;
	float							value_target;
	float							value_current;
	unsigned long					time_start;
	unsigned long					time_target;
} t_linear_queue;


// prototypes
t_linear_queue*	create	(rampunit_method_callback_type in_callback, void *in_baton);
void			destroy	(t_linear_queue *rampunit);
ramp_err		attrset	(t_linear_queue *rampunit, int selector, double value);
ramp_err		attrget	(t_linear_queue *rampunit, int selector, double *value);
void			go		(t_linear_queue *rampunit, float value, double time);
void			set		(t_linear_queue *rampunit, double value);
void			stop	(t_linear_queue *rampunit);
void			tick	(t_linear_queue *rampunit);


#endif // __LINEARQUEUE_H__
