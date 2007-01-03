/* 
 * jcom.zerox~
 * External for Jamoma: zero-crossing counter
 * By Tim Place, Copyright © 2006
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "ext.h"					// Max Header
#include "z_dsp.h"					// MSP Header
#include "ext_strings.h"			// String Functions
#include "commonsyms.h"				// Common symbols used by the Max 4.5 API
#include "ext_obex.h"				// Max Object Extensions (attributes) Header
#include "tt_audio_base.h"			// Tap.Tools Blue Headers...
#include "tt_audio_signal.h"
#include "tt_zerox.h"	

#define NUM_INPUTS 1
#define NUM_OUTPUTS 2

// Data Structure for this object
typedef struct _zerox {
	t_pxobject 		x_obj;			// This object - must be first
	void			*obex;			// Pointer to object extensions (for attributes)
	tt_zerox		*my_zerox;		// 
    tt_audio_signal	*signal_in[NUM_INPUTS];
    tt_audio_signal	*signal_out[NUM_OUTPUTS];
	long			attr_size;		// 
} t_zerox;

// Prototypes for methods: need a method for each incoming message type
void *zerox_new(t_symbol *msg, short argc, t_atom *argv);			// New Object Creation Method
t_int *zerox_perform(t_int *w);										// An MSP Perform (signal) Method
void zerox_dsp(t_zerox *x, t_signal **sp, short *count);			// DSP Method
void zerox_assist(t_zerox *x, void *b, long m, long a, char *s);	// Assistance Method
t_max_err attr_set_size(t_zerox *x, void *attr, long argc, t_atom *argv);
void zerox_free(t_zerox *x);

// Globals
t_class *zerox_class;					// Required. Global pointing to this class


/************************************************************************************/
// Main() Function

int main(void)				// main recieves a copy of the Max function macros table
{
	long attrflags = 0;
	t_class *c;
	t_object *attr;
	
	common_symbols_init();

	c = class_new("tap.zerox~",(method)zerox_new, (method)zerox_free, (short)sizeof(t_zerox), 
		(method)0L, A_GIMME, 0);
	class_obexoffset_set(c,calcoffset(t_zerox, obex));

	class_addmethod(c, (method)zerox_dsp, 		"dsp", A_CANT, 0L);		
    class_addmethod(c, (method)zerox_assist, 	"assist", A_CANT, 0L); 

	attr = attr_offset_new("size", _sym_long, attrflags,
		(method)0L, (method)attr_set_size, calcoffset(t_zerox, attr_size));
	class_addattr(c, attr);
	
	class_dspinit(c);				// Setup object's class to work with MSP
	class_register(CLASS_BOX, c);
	zerox_class = c;
	return 0;
}


/************************************************************************************/
// Object Life

// Create
void *zerox_new(t_symbol *msg, short argc, t_atom *argv)
{
	t_zerox *x = (t_zerox *)object_alloc(zerox_class);
	short i;
	
	if(x){
		object_obex_store((void *)x, _sym_dumpout, (object *)outlet_new(x, NULL));	// dumpout
		dsp_setup((t_pxobject *)x, 1);				// Create Object and 1 Inlet (last argument)
		outlet_new((t_pxobject *)x, "signal");		// Create a signal Outlet
		outlet_new((t_pxobject *)x, "signal");		// Create a signal Outlet
		
		x->my_zerox = new tt_zerox;
		for(i=0; i<NUM_INPUTS; i++)
			x->signal_in[i] = new tt_audio_signal;
		for(i=0; i<NUM_OUTPUTS; i++)
			x->signal_out[i] = new tt_audio_signal;

		x->attr_size = 0;
		attr_args_process(x, argc, argv); 			//handle attribute args			
	}
	return (x);										// Return the pointer
}

// Destroy
void zerox_free(t_zerox *x)
{
	short i;
	
	dsp_free((t_pxobject *)x);
	delete x->my_zerox;
	for(i=0; i<NUM_INPUTS; i++)
		delete x->signal_in[i];
	for(i=0; i<NUM_OUTPUTS; i++)
		delete x->signal_out[i];
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
	x->attr_size = atom_getfloat(argv);
	x->my_zerox->set_attr(tt_zerox::k_analysis_size, x->attr_size);
	
	return MAX_ERR_NONE;
	#pragma unused(attr)
}


// Perform (signal) Method
t_int *zerox_perform(t_int *w)
{
   	t_zerox *x = (t_zerox *)(w[1]);						// Pointer
    x->signal_in[0]->set_vector((t_float *)(w[2])); 	// Input
    x->signal_out[0]->set_vector((t_float *)(w[3]));	// Output
    x->signal_out[1]->set_vector((t_float *)(w[4]));	// Output
	x->signal_in[0]->vectorsize = (int)(w[5]);			// Vector Size
			
	if (!(x->x_obj.z_disabled))	
		x->my_zerox->dsp_vector_calc(x->signal_in[0], x->signal_out[0], x->signal_out[1]);

	return (w + 6);	
}


// DSP Method
void zerox_dsp(t_zerox *x, t_signal **sp, short *count)
{
	x->my_zerox->clear();
	x->my_zerox->set_sr(sp[0]->s_sr);
	dsp_add(zerox_perform, 5, x, sp[0]->s_vec, sp[1]->s_vec, sp[2]->s_vec, sp[0]->s_n);	// Add Perform Method to the DSP Call Chain
}
