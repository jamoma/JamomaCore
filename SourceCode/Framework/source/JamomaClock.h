/* 
 * Jamoma Clock
 * The master timing mechanism that drives the Jamoma Scheduler
 * By Tim Place, Copyright © 2007
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __JAMOMA_CLOCK_H__
#define __JAMOMA_CLOCK_H__

#include "ext.h"
#include "ext_obex.h"				// Max Object Extensions (attributes) Header
#include "z_dsp.h"
#include "commonsyms.h"				// Common symbols used by the Max 4.5 API


typedef struct _jamoma_clock{
	t_pxobject			obj;
	unsigned long		sr;
	double				one_over_sr;
	unsigned long		samples_per_block;
	double				current_time;		// in ticks
	unsigned long long	current_samples;	
	// TODO: some sort of accessor that would set tick period by saying 1000 ticks per second or something
} t_jamoma_clock;


void				jamoma_clock_initclass(void);
t_object*			jamoma_clock_new(t_symbol *s, long argc, t_atom *argv);
void				jamoma_clock_free(t_jamoma_clock *x);
t_int*				jamoma_clock_perform(t_int *w);
void				jamoma_clock_dsp(t_jamoma_clock *x, t_signal **sp, short *count);
unsigned long long	jamoma_clock_tickstosamples(t_object *o, double period);

#endif // __JAMOMA_CLOCK_H__
