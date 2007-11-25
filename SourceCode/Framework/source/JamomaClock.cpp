/* 
 * Jamoma Clock
 * The master timing mechanism that drives the Jamoma Scheduler
 * By Tim Place, Copyright © 2007
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "Jamoma.h"

// TODO: figure a method for updating the time when dsp isn't running

static t_class	*class_jamoma_clock = NULL;
static long		dsp_called = false;


/************************************************************************************/
// Object Life

void jamoma_clock_initclass()
{
	t_class *c = class_new("jamoma.clock", 
							(method)jamoma_clock_new, 
							(method)jamoma_clock_free, 
							sizeof(t_jamoma_clock), 
							(method)NULL, 
							A_GIMME, 0);

	class_addmethod(c, (method)jamoma_clock_dsp,	"dsp",		A_CANT, 0L);
	
	class_dspinit(c);
	class_register(CLASS_NOBOX, c);	
	class_jamoma_clock = c;
}


t_object* jamoma_clock_new(t_symbol *s, long argc, t_atom *argv)
{
	t_jamoma_clock *x = (t_jamoma_clock*)object_alloc(class_jamoma_clock);
	if(x){
		x->sr = DEFAULT_SAMPLE_RATE;
		x->one_over_sr = 1.0 / DEFAULT_SAMPLE_RATE;
		x->samples_per_block = 64;
		
		dsp_setup((t_pxobject *)x, 1);
		x->obj.z_misc = Z_PUT_LAST;			// ... because our perform routine advances time to the next frame
		attr_args_process(x, argc, argv);
	}
	return (t_object*)x;
}


void jamoma_clock_free(t_jamoma_clock *x)
{
	dsp_free((t_pxobject *)x);
}


/************************************************************************************/
// Methods

t_int* jamoma_clock_perform(t_int *w)
{
	t_jamoma_clock *x = (t_jamoma_clock *)(w[1]);
		
	// Move the clocks ahead for the next cycle
	x->current_samples += x->samples_per_block;
	x->current_time = ((x->current_samples * x->one_over_sr) * DEFAULT_TICKS_PER_SECOND);

	// TODO: do this for each scheduler -- but for now we just service the global scheduler
	jamoma_scheduler_update((t_jamoma_scheduler*)obj_jamoma_scheduler, &x->current_time);
//	jamoma_scheduler_doevents((t_jamoma_scheduler*)obj_jamoma_scheduler);

	// TODO: is there another way to this:
	// reset the hack that we use in the dsp method to make sure this method isn't called multiple times
	dsp_called = false;

	return(w+2);
}


void jamoma_clock_dsp(t_jamoma_clock *x, t_signal **sp, short *count)
{
	if(!dsp_called){
		if(object_classname(x) != gensym("jamoma.clock"))
			x = (t_jamoma_clock*)obj_jamoma_clock;

		if(sp){
			x->sr = (double)sp[0]->s_sr;
			x->one_over_sr = 1.0 / (double)sp[0]->s_sr;
			x->samples_per_block = sp[0]->s_n;
		}
		
		dsp_add(jamoma_clock_perform, 1, x);
		dsp_called = true;
	}
}


unsigned long long jamoma_clock_tickstosamples(t_object *o, double period)
{
	t_jamoma_clock *x = (t_jamoma_clock*)o;
	return x->sr * (period / DEFAULT_TICKS_PER_SECOND);
}


