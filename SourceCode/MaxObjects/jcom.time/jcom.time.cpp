/* 
 * jcom.time
 * External for Jamoma: control Jamoma's internal time system
 * By Tim Place, Copyright © 2007
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "Jamoma.h"

// Data Structure for this object
typedef struct _jcom_time{
	t_object 	obj;
} t_jcom_time;

// Prototypes for methods
void*	jcom_time_new(t_symbol *s, long argc, t_atom *argv);
void	jcom_time_free(t_jcom_time *x);
void	jcom_time_rewind(t_jcom_time *x);
//t_max_err	phasor_attr_setperiod(t_phasor *x, void *attr, long argc, t_atom *argv);

// Globals
static t_class*	jcom_time_class;


/************************************************************************************/
// Main() Function

int main(void)				// main recieves a copy of the Max function macros table
{
	t_class *c;
	
	common_symbols_init();
	jamoma_init();

	// Define our class
	c = class_new("jcom.time", (method)jcom_time_new, (method)jcom_time_free, 
		sizeof(t_jcom_time), (method)NULL, A_GIMME, 0);

	// Make methods accessible for our class:
	class_addmethod(c, (method)jcom_time_rewind,		"rewind",	0);
    class_addmethod(c, (method)object_obex_dumpout, 	"dumpout",	A_CANT, 0);

	// Add attributes to our class:
	//CLASS_ATTR_DOUBLE(c,	"period",	0, t_phasor, attr_period);
	//CLASS_ATTR_ACCESSORS(c,	"period",	0, phasor_attr_setperiod);
	
	// Finalize our class
	class_register(CLASS_BOX, c);
	jcom_time_class = c;
	return 0;
}


/************************************************************************************/
// Object Life

// Create
void *jcom_time_new(t_symbol *s, long argc, t_atom *argv)
{
	t_jcom_time *x = (t_jcom_time*)object_alloc(jcom_time_class);
	if(x){
		object_obex_store((void *)x, _sym_dumpout, (t_object*)outlet_new(x, NULL));

		attr_args_process(x, argc, argv);			
	}
	return x;
}

// Destroy
void jcom_time_free(t_jcom_time *x)
{	
	;
}

/************************************************************************************/
// Methods bound to input/inlets

void jcom_time_rewind(t_jcom_time *x)
{
	jamoma_time_rewind(NULL);
}


/*
t_max_err phasor_attr_setperiod(t_phasor *x, void *attr, long argc, t_atom *argv)
{
	x->attr_period = atom_getfloat(argv);
	x->frequency = DEFAULT_TICKS_PER_SECOND / x->attr_period;
	
	return MAX_ERR_NONE;
}
*/
