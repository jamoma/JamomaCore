// External Object for Cycling '74's Max/MSP: zero crossing counter
// Demonstrates the wrapping of a TapTools Blue object
// By Timothy Place, Copyright © 2005
// License: GNU LGPL

#include "ext.h"					// Max Header
#include "z_dsp.h"					// MSP Header
#include "ext_strings.h"			// String Functions
#include "commonsyms.h"				// Common symbols used by the Max 4.5 API
#include "ext_obex.h"				// Max Object Extensions (attributes) Header
#include "taptools_base.h"			// Tap.Tools Blue Headers...
#include "taptools_audio_signal.h"
#include "tap_zerox.h"	

// Data Structure for this object
typedef struct _zerox{
	t_pxobject 		x_obj;			// This object - must be first
	void			*obex;			// Pointer to object extensions (for attributes)
	tap_zerox		*my_zerox;		// *** Our member Tap.Tools Blue object ***
	tt_audio_signal	*temp_in, 		// *** Member Tap.Tools audio signal objects...
					*temp_out1, 
					*temp_out2;
	long			attr_size;		// Cached Max attribute value
} t_zerox;

// Prototypes for methods
void *zerox_new(t_symbol *msg, short argc, t_atom *argv);
t_int *zerox_perform(t_int *w);
void zerox_dsp(t_zerox *x, t_signal **sp, short *count);
void zerox_assist(t_zerox *x, void *b, long m, long a, char *s);
t_max_err attr_set_size(t_zerox *x, void *attr, long argc, t_atom *argv);
void zerox_free(t_zerox *x);
float atom_getvalue(long index, short argc, t_atom *argv);

// Globals
t_class *zerox_class;				// Required - global pointer to this class


/************************************************************************************/
// Main() Function

void main(void)				// main recieves a copy of the Max function macros table
{
	long attrflags = 0;
	t_class *c;
	t_object *attr;
	
	common_symbols_init();

	// Define our class
	c = class_new("zerocrosser~",(method)zerox_new, (method)zerox_free, (short)sizeof(t_zerox), 
		(method)0L, A_GIMME, 0);
	class_obexoffset_set(c,calcoffset(t_zerox, obex));

	// Make methods accessible for our class: 
	class_addmethod(c, (method)zerox_dsp, 				"dsp", A_CANT, 0L);
    class_addmethod(c, (method)object_obex_dumpout, 	"dumpout", A_CANT,0);  
    class_addmethod(c, (method)object_obex_quickref,	"quickref", A_CANT, 0);
    class_addmethod(c, (method)zerox_assist, 			"assist", A_CANT, 0L);

	// Add attributes to our object:
	attr = attr_offset_new("size", _sym_long, attrflags,
		(method)0L, (method)attr_set_size, calcoffset(t_zerox, attr_size));
	class_addattr(c, attr);
	
	// Setup our class to work with MSP
	class_dspinit(c);

	// Finalize our class
	class_register(CLASS_BOX, c);
	zerox_class = c;
}


/************************************************************************************/
// Object Life

// Create
void *zerox_new(t_symbol *msg, short argc, t_atom *argv)
{
	t_zerox *x = (t_zerox *)object_alloc(zerox_class);
	if(x){
		object_obex_store((void *)x, _sym_dumpout, (object *)outlet_new(x, NULL));	// dumpout
		dsp_setup((t_pxobject *)x, 1);			// Create Object and 1 Inlet (last argument)
		outlet_new((t_pxobject *)x, "signal");	// Create a signal Outlet
		outlet_new((t_pxobject *)x, "signal");	// Create a signal Outlet
		
		x->my_zerox = new tap_zerox;			// Allocate Member Tap.Tools Blue objects...
		x->temp_in = new tt_audio_signal;		
		x->temp_out1 = new tt_audio_signal; 
		x->temp_out2 = new tt_audio_signal;
		
		x->attr_size = 0;						// Set default
		attr_args_process(x, argc, argv); 		//handle attribute args			
	}
	return (x);									// Return the pointer
}

// Destroy
void zerox_free(t_zerox *x)
{
	dsp_free((t_pxobject *)x);					// Always call dsp_free first in this routine
	delete x->my_zerox;
	delete x->temp_in;		
	delete x->temp_out1; 
	delete x->temp_out2;
}

/************************************************************************************/
// Methods bound to input/inlets

// Method for Assistance Messages
void zerox_assist(t_zerox *x, void *b, long msg, long arg, char *dst)
{
	if(msg==1) 			// Inlet
		strcpy(dst, "(signal) Input");
	else if(msg==2){ 	// Outlet
		switch(arg){
			case 0: strcpy(dst, "(signal) number of zero crossings"); break;
			case 1: strcpy(dst, "(signal) trigger"); break;
			case 2: strcpy(dst, "(signal) dumpout"); break;
		}
	}
}


// ATTRIBUTE: analysis size
t_max_err attr_set_size(t_zerox *x, void *attr, long argc, t_atom *argv)
{
	x->attr_size = atom_getvalue(0L, argc, argv);
	x->my_zerox->set_attr(tap_zerox::k_analysis_size, x->attr_size);
	
	return MAX_ERR_NONE;
	#pragma unused(attr)
}


// Perform (signal) Method
t_int *zerox_perform(t_int *w)
{
   	t_zerox *x = (t_zerox *)(w[1]);				// Pointer
	x->temp_in->vector = (t_float *)(w[2]);   	// Input
	x->temp_out1->vector = (t_float *)(w[3]);	// Output
	x->temp_out2->vector = (t_float *)(w[4]);	// Output
	x->temp_in->vectorsize = (int)(w[5]);		// Vector Size
			
	if (!(x->x_obj.z_disabled))	
		x->my_zerox->dsp_vector_calc(x->temp_in, x->temp_out1, x->temp_out2);

	return (w + 6);	
}


// DSP Method
void zerox_dsp(t_zerox *x, t_signal **sp, short *count)
{
	x->my_zerox->clear();
	x->my_zerox->set_sr(sp[0]->s_sr);
	dsp_add(zerox_perform, 5, x, sp[0]->s_vec, sp[1]->s_vec, sp[2]->s_vec, sp[0]->s_n);	// Add Perform Method to the DSP Call Chain
}


// Utility function for getting the value of a Max atom
float atom_getvalue(long index, short argc, t_atom *argv)
{
	float	val = 0;
	if(argc && argv){
		if(index < argc){
			switch(argv[index].a_type){
				case A_LONG:
					val = atom_getlong(argv+index);
					break;
				case A_FLOAT:
					val = atom_getfloat(argv+index);
					break;
			}
		}	
	}
	return val;
}

