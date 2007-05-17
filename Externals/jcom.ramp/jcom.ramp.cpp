/* 
 * jcom.ramp
 * External for Jamoma: ramp values using Jamoma's RampLib library
 * By Tim Place, Copyright © 2006
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "ext.h"					// Max Header
#include "ext_obex.h"				// Max Object Extensions (attributes) Header
#include "commonsyms.h"				// Common symbols used by the Max 4.5 API
#include "RampUnitWrap.h"

enum outlets{
	k_outlet_value = 0,
	k_outlet_dumpout,
	num_outlets
};


typedef struct _ramp{
	t_object				 ob;
	void					*obex;
	void					*outlets[num_outlets];
//	t_ramplib_linear_max	*ramper;				// data structure for a ramp unit
	rampunit				*my_ramp;
} t_ramp;


// Prototypes
void*	ramp_new(t_symbol *s, long argc, t_atom *argv);
void	ramp_free(t_ramp *x);
void	ramp_assist(t_ramp *x, void *b, long msg, long arg, char *dst);
void	ramp_int(t_ramp *x, long n);
void	ramp_float(t_ramp *x, double f);
void	ramp_set(t_ramp *x, double value);
void	ramp_list(t_ramp *x, t_symbol *msg, short argc, t_atom *argv);
void	ramp_callback(void *v, float value);
void 	ramp_granularity(t_ramp *x, double value);
void 	ramp_granularity_get(t_ramp *x);


// Globals
t_class		*ramp_class;				// Required: Global pointer for our class


/************************************************************************************/
// Class Definition

int main(void)				// main recieves a copy of the Max function macros table
{
//	long attrflags = 0;
	t_class *c;
//	t_object *attr;
	
	// Initialize Globals
	common_symbols_init();

	// Define our class
	c = class_new("jcom.ramp",(method)ramp_new, (method)ramp_free, (short)sizeof(t_ramp), (method)0L, A_GIMME, 0);
	class_obexoffset_set(c, calcoffset(t_ramp, obex));
	
	// Make methods accessible for our class:
	class_addmethod(c, (method)ramp_int,				"int",			A_DEFLONG,	0);
	class_addmethod(c, (method)ramp_float,				"float",		A_DEFFLOAT,	0);
 	class_addmethod(c, (method)ramp_list,				"list",			A_GIMME,	0);
	class_addmethod(c, (method)ramp_set,				"set",			A_DEFFLOAT,	0);
	class_addmethod(c, (method)ramp_granularity,		"granularity",	A_DEFFLOAT, 0);
	class_addmethod(c, (method)ramp_granularity_get,	"granularity_get",			0);
	class_addmethod(c, (method)ramp_assist,				"assist",		A_CANT,		0); 
    class_addmethod(c, (method)object_obex_dumpout,		"dumpout",		A_CANT,		0);  
    class_addmethod(c, (method)object_obex_quickref,	"quickref",		A_CANT,		0);

	// Finalize our class
	class_register(CLASS_BOX, c);
	ramp_class = c;
	
	return 0;
}


/************************************************************************************/
// Object Life

void *ramp_new(t_symbol *s, long argc, t_atom *argv)
{
	t_ramp	*x = (t_ramp *)object_alloc(ramp_class);
//	char	rampunitname[256];
	
//	strcpy(rampunitname, "linearsched.bundle");

	if(x){
		x->outlets[k_outlet_dumpout] = outlet_new(x, 0L);
		x->outlets[k_outlet_value]   = outlet_new(x, 0L);
		object_obex_store((void *)x, _sym_dumpout, (t_object *)x->outlets[k_outlet_dumpout]);

//		x->my_ramp = new rampunit(rampunitname, ramp_callback, (void *)x);						// create ramp unit
		x->my_ramp = new rampunit("linear.sched", ramp_callback, (void *)x);						// create ramp unit
		
		attr_args_process(x, argc, argv);	// handle attribute args
	}
	return (x);		// return the pointer to our new instantiation
}


void ramp_free(t_ramp *x)
{
	delete x->my_ramp;
	x->my_ramp = NULL;
}


/************************************************************************************/
// Methods bound to input/inlets

// Method for Assistance Messages
void ramp_assist(t_ramp *x, void *b, long msg, long arg, char *dst)
{
	if(msg==1) 						// Inlet
		strcpy(dst, "input");
	else{							// Outlets
		switch(arg){
			case k_outlet_value:
					strcpy(dst, "ramping value");
					break;
			case k_outlet_dumpout:
					strcpy(dst, "dumpout");
					break;
		}
 	}		
}


// Triggered by our Ramp Unit's tick function
void ramp_callback(void *v, float value)
{	
	t_ramp *x = (t_ramp *)v;
	outlet_float(x->outlets[k_outlet_value], value);
}


// INT INPUT
void ramp_int(t_ramp *x, long value)
{
	x->my_ramp->set(value);
	outlet_float(x->outlets[k_outlet_value], value);
}


// FLOAT INPUT
void ramp_float(t_ramp *x, double value)
{
	x->my_ramp->set(value);
	outlet_float(x->outlets[k_outlet_value], value);
}


// SET FLOAT INPUT
void ramp_set(t_ramp *x, double value)
{
	x->my_ramp->set(value);
}


// LIST INPUT <value, ramptime>
void ramp_list(t_ramp *x, t_symbol *msg, short argc, t_atom *argv)
{
	x->my_ramp->go(atom_getfloat(argv), atom_getfloat(argv+1));
}


// RAMP UNIT ATTRIBUTES
void ramp_granularity(t_ramp *x, double value)
{
	x->my_ramp->attrset(k_granularity, value);
}


void ramp_granularity_get(t_ramp *x)
{
	double value;
	
	x->my_ramp->attrget(k_granularity, &value);
	outlet_float(x->outlets[k_outlet_dumpout], value);
}
