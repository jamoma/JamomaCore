/* 
 * jcom.metro
 * External for Jamoma: send bangs at regular intervals
 * By Tim Place, Copyright © 2007
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "Jamoma.h"

// Data Structure for this object
typedef struct _jcom_metro{
	t_pxobject 	obj;
	void		*outlet;
	double		attr_period;
	long		attr_active;
	t_object	*event;
} t_jcom_metro;

// Prototypes for methods
void*		jcom_metro_new(t_symbol *s, long argc, t_atom *argv);
void		jcom_metro_free(t_jcom_metro *x);
void		jcom_metro_int(t_jcom_metro *x, long toggle);
void		jcom_metro_tick(t_jcom_metro *x);
t_max_err	metro_attr_setperiod(t_jcom_metro *x, void *attr, long argc, t_atom *argv);

// Globals
static t_class*	jcom_metro_class;


/************************************************************************************/
// Main() Function

int main(void)				// main recieves a copy of the Max function macros table
{
	t_class *c;
	
	jamoma_init();

	// Define our class
	c = class_new("jcom.metro", (method)jcom_metro_new, (method)jcom_metro_free, 
		sizeof(t_jcom_metro), (method)NULL, A_GIMME, 0);

	// Make methods accessible for our class:
	class_addmethod(c, (method)jcom_metro_int,			"int",		A_FLOAT,	0);
 	class_addmethod(c, (method)jamoma_time_dsp,			"dsp",		A_CANT,		0L);
	class_addmethod(c, (method)object_obex_dumpout,		"dumpout",	A_CANT,		0);

	// Add attributes to our class:
	CLASS_ATTR_DOUBLE(c,	"period",	0, t_jcom_metro, attr_period);
	CLASS_ATTR_ACCESSORS(c,	"period",	0, metro_attr_setperiod);
	CLASS_ATTR_LABEL(c,		"period",	0, "Interval");
	
	// Setup our class to work with MSP
	class_dspinit(c);

	// Finalize our class
	class_register(CLASS_BOX, c);
	jcom_metro_class = c;
	return 0;
}


/************************************************************************************/
// Object Life

// Create
void *jcom_metro_new(t_symbol *s, long argc, t_atom *argv)
{
	t_jcom_metro	*x = (t_jcom_metro*)object_alloc(jcom_metro_class);
	long			attrstart = attr_args_offset(argc, argv);

	if(x){
		object_obex_store((void *)x, _sym_dumpout, (t_object*)outlet_new(x, NULL));
		dsp_setup((t_pxobject *)x, 1);			// Create Object and Inlets
		x->outlet = outlet_new(x, 0L);
		x->event = NULL;

		if(attrstart && argv)
			x->attr_period = atom_getlong(argv);
		else
			x->attr_period = 1000.0;
		attr_args_process(x, argc, argv);		
	}
	return x;
}

// Destroy
void jcom_metro_free(t_jcom_metro *x)
{	
	if(x->event)
		jamoma_time_removeevent(NULL, x->event);
}


/************************************************************************************/
// Methods bound to input/inlets

void jcom_metro_int(t_jcom_metro *x, long toggle)
{
	if(toggle && (x->attr_active != toggle))
		x->event = jamoma_time_delay((t_object*)x, NULL, (method)jcom_metro_tick, &x->attr_period, true, JCOM_TIME_PRIORITY_SCHEDULER);
	else if(!toggle && (x->attr_active != toggle)){
		jamoma_time_removeevent(NULL, x->event);
		x->event = NULL;
	}

	x->attr_active = toggle;
}


void jcom_metro_tick(t_jcom_metro *x)
{
	outlet_bang(x->outlet);
}


t_max_err metro_attr_setperiod(t_jcom_metro *x, void *attr, long argc, t_atom *argv)
{
	x->attr_period = atom_getfloat(argv);
	
	return MAX_ERR_NONE;
}

