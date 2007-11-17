/* 
 * jcom.phasor~
 * External for Jamoma: signal control source
 * By Tim Place, Copyright © 2007
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "Jamoma.h"


// Data Structure for this object
typedef struct _phasor{
	t_pxobject 	obj;
	double		attr_period;
	double		frequency;
	double		one_over_sr;
	double		lastoutput;
} t_phasor;


// Prototypes for methods
void*		phasor_new(t_symbol *s, long argc, t_atom *argv);
void		phasor_free(t_phasor *x);
t_int*		phasor_perform(t_int *w);
void		phasor_dsp(t_phasor *x, t_signal **sp, short *count);
t_max_err	phasor_attr_setperiod(t_phasor *x, void *attr, long argc, t_atom *argv);


// Globals
static t_class*	phasor_class;


/************************************************************************************/
// Main() Function

int main(void)				// main recieves a copy of the Max function macros table
{
	t_class *c;
	
	jamoma_init();

	// Define our class
	c = class_new("jcom.phasor~", (method)phasor_new, (method)phasor_free, 
		sizeof(t_phasor), (method)NULL, A_GIMME, 0);

	// Make methods accessible for our class: 
	class_addmethod(c, (method)phasor_dsp, 				"dsp",		A_CANT, 0L);
    class_addmethod(c, (method)object_obex_dumpout, 	"dumpout",	A_CANT,0);  

	// Add attributes to our class:
	CLASS_ATTR_DOUBLE(c,	"period",	0, t_phasor, attr_period);
	CLASS_ATTR_ACCESSORS(c,	"period",	0, phasor_attr_setperiod);
	
	// Setup our class to work with MSP
	class_dspinit(c);

	// Finalize our class
	class_register(CLASS_BOX, c);
	phasor_class = c;
	return 0;
}


/************************************************************************************/
// Object Life

// Create
void *phasor_new(t_symbol *s, long argc, t_atom *argv)
{
	long	attrstart = attr_args_offset(argc, argv);
	
	t_phasor *x = (t_phasor *)object_alloc(phasor_class);
	if(x){
		object_obex_store((void *)x, _sym_dumpout, (t_object*)outlet_new(x, NULL));

		x->one_over_sr = 1.0 / DEFAULT_SAMPLE_RATE;
		x->lastoutput = 0.0;
		if(attrstart && argv)
			x->attr_period = atom_getlong(argv);
		else
			x->attr_period = 1000.0;

		dsp_setup((t_pxobject *)x, 1);			// Create Object and Inlets
		outlet_new((t_pxobject *)x, "signal");	// Create a signal Outlet

		attr_args_process(x, argc, argv);			
	}
	return x;
}

// Destroy
void phasor_free(t_phasor *x)
{	
	dsp_free((t_pxobject *)x);					// Always call dsp_free first in this routine
}

/************************************************************************************/
// Methods bound to input/inlets


// Perform Method
t_int *phasor_perform(t_int *w)
{
	t_phasor	*x = (t_phasor *)(w[1]);
	t_float		*out = (t_float *)(w[2]);
	int			n = (int)(w[3]);
	double		phase, 
				slope, 
				prev = x->lastoutput;

	if(x->obj.z_disabled)
		goto exit;
	
	jamoma_time_getphase(x->attr_period, &phase, &slope);

	while(n--){
		if(phase > 1.0)
			prev = phase = phase - 1.0;
		if(phase < prev)
			phase = prev;
		*out++ = prev = phase;
		phase += slope;
	}
	x->lastoutput = phase;
	
exit:
	return (w+4);
}


// DSP Method
void phasor_dsp(t_phasor *x, t_signal **sp, short *count)
{
	jamoma_time_dsp(NULL, sp, count);

	x->one_over_sr = 1.0 / (double)sp[0]->s_sr;
	dsp_add(phasor_perform, 3, x, sp[1]->s_vec, sp[1]->s_n);
}


t_max_err phasor_attr_setperiod(t_phasor *x, void *attr, long argc, t_atom *argv)
{
	x->attr_period = atom_getfloat(argv);
	x->frequency = DEFAULT_TICKS_PER_SECOND / x->attr_period;
	
	return MAX_ERR_NONE;
}
