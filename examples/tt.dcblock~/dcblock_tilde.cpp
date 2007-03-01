/* 
	tt.dcblock~
	External object for Max/MSP
	Remove DC Offsets from a signal
	Example project for TTBlue
	Copyright © 2007 by Timothy Place
*/

#include "ext.h"					// Max Header
#include "z_dsp.h"					// MSP Header
#include "ext_strings.h"			// String Functions
#include "commonsyms.h"				// Common symbols used by the Max 4.5 API
#include "ext_obex.h"				// Max Object Extensions (attributes) Header

#include "tt_dcblock.h"				// TTBlue Interfaces...
#include "tt_copy.h"

#define NUM_INPUTS 2
#define NUM_OUTPUTS 2


// Data Structure for this object
typedef struct _dcblock	{
    t_pxobject 		x_obj;
    void			*obex;
	tt_dcblock		*dcblock;
	tt_copy			*copy;
    tt_audio_signal	*signal_in[NUM_INPUTS];
    tt_audio_signal	*signal_out[NUM_OUTPUTS];
	long			attr_bypass;
} t_dcblock;


// Prototypes for methods: need a method for each incoming message type
void *dcblock_new(t_symbol *msg, short argc, t_atom *argv);					// New Object Creation Method
t_int *dcblock_perform(t_int *w);											// An MSP Perform (signal) Method
t_int *dcblock_perform2(t_int *w);											// An MSP Perform (signal) Method
void dcblock_dsp(t_dcblock *x, t_signal **sp, short *count);				// DSP Method
void dcblock_assist(t_dcblock *x, void *b, long msg, long arg, char *dst);	// Assistance Method
t_max_err attr_set_bitdepth(t_dcblock *x, void *attr, long argc, t_atom *argv);
t_max_err attr_set_sr_ratio(t_dcblock *x, void *attr, long argc, t_atom *argv);
void dcblock_free(t_dcblock *x);

// Globals
t_class *dcblock_class;				// Required. Global pointing to this class


/************************************************************************************/
// Main() Function

int main(void)
{
	long attrflags = 0;
	t_class *c;
	t_object *attr;
	
	common_symbols_init();

	c = class_new("tt.dcblock~",(method)dcblock_new, (method)dcblock_free, (short)sizeof(t_dcblock), 
		(method)0L, A_GIMME, 0);
	class_obexoffset_set(c, calcoffset(t_dcblock, obex));

 	class_addmethod(c, (method)dcblock_dsp, 			"dsp", A_CANT, 0L);		
	class_addmethod(c, (method)dcblock_assist, 			"assist", A_CANT, 0L); 

	attr = attr_offset_new("bypass", _sym_long, attrflags,
		(method)0L,(method)0L, calcoffset(t_dcblock, attr_bypass));
	class_addattr(c, attr);	

	class_dspinit(c);						// Setup object's class to work with MSP
	class_register(CLASS_BOX, c);
	dcblock_class = c;

	return 0;
}


/************************************************************************************/
// Object Creation Method

void *dcblock_new(t_symbol *msg, short argc, t_atom *argv)
{
    t_dcblock *x;
    short i;
	tt_atom	sr(sys_getsr());
    
    x = (t_dcblock *)object_alloc(dcblock_class);
    if(x){
    	object_obex_store((void *)x, _sym_dumpout, (object *)outlet_new(x,NULL));	// dumpout	
	    dsp_setup((t_pxobject *)x, 2);				// Create Object and 1 Inlet (last argument)
	    outlet_new((t_pxobject *)x, "signal");		// Create a signal Outlet
	    outlet_new((t_pxobject *)x, "signal");		// Create a signal Outlet
		x->x_obj.z_misc = Z_NO_INPLACE;

		tt_audio_base::set_global_sr(sr);	// update Tap.Tool's global sr field
		x->dcblock = new tt_dcblock;
		x->copy = new tt_copy;
		for(i=0; i<NUM_INPUTS; i++)
			x->signal_in[i] = new tt_audio_signal;
		for(i=0; i<NUM_OUTPUTS; i++)
			x->signal_out[i] = new tt_audio_signal;

		x->attr_bypass = 0;
		
		attr_args_process(x,argc,argv);				// handle attribute args			
	}
	return (x);										// Return the pointer
}

// Memory Deallocation
void dcblock_free(t_dcblock *x)
{
	short i;
	
	dsp_free((t_pxobject *)x);
	delete x->dcblock;
	delete x->copy;
	for(i=0; i<NUM_INPUTS; i++)
		delete x->signal_in[i];
	for(i=0; i<NUM_OUTPUTS; i++)
		delete x->signal_out[i];
}


/************************************************************************************/
// Methods bound to input/inlets

// Method for Assistance Messages
void dcblock_assist(t_dcblock *x, void *b, long msg, long arg, char *dst)
{
	if(msg==1) 	// Inlets
		strcpy(dst, "(signal) input, control messages");		
	else if(msg==2) // Outlets
		strcpy(dst, "(signal) Filtered output");
	#pragma unused(x)
	#pragma unused(b)
	#pragma unused(arg)
}


// Perform (signal) Method
t_int *dcblock_perform(t_int *w)
{
   	t_dcblock *x = (t_dcblock *)(w[1]);					// Pointer
    x->signal_in[0]->set_vector((t_float *)(w[2])); 	// Input
    x->signal_out[0]->set_vector((t_float *)(w[3]));	// Output
	x->signal_in[0]->vectorsize = (int)(w[4]);			// Vector Size
			
	if(x->x_obj.z_disabled) goto out;
	if(x->attr_bypass)
		x->copy->dsp_vector_calc(x->signal_in[0], x->signal_out[0]);
	else
		x->dcblock->dsp_vector_calc(x->signal_in[0], x->signal_out[0]);	
out:
    return (w + 5);		// Return a pointer to the NEXT object in the DSP call chain
}


// Perform (signal) Method - STEREO
t_int *dcblock_perform2(t_int *w)
{
   	t_dcblock *x = (t_dcblock *)(w[1]);					// Pointer
    x->signal_in[0]->set_vector((t_float *)(w[2])); 	// Input
    x->signal_in[1]->set_vector((t_float *)(w[3])); 	// Input
	x->signal_out[0]->set_vector((t_float *)(w[4]));	// Output
	x->signal_out[1]->set_vector((t_float *)(w[5]));	// Output
	x->signal_in[0]->vectorsize = x->signal_in[1]->vectorsize = (int)(w[6]);	// Vector Size
			
	if(x->x_obj.z_disabled) goto out;
	if(x->attr_bypass){
		x->copy->dsp_vector_calc(x->signal_in[0], x->signal_out[0]);
		x->copy->dsp_vector_calc(x->signal_in[1], x->signal_out[1]);
	}
	else{
		x->dcblock->dsp_vector_calc(x->signal_in[0], x->signal_in[1], x->signal_out[0], x->signal_out[1]);
	}

out:
    return (w + 7);		// Return a pointer to the NEXT object in the DSP call chain
}


// DSP Method
void dcblock_dsp(t_dcblock *x, t_signal **sp, short *count)
{
	x->dcblock->set_sr(sp[0]->s_sr);
	if(count[1])
		dsp_add(dcblock_perform2, 6, x, sp[0]->s_vec, sp[1]->s_vec, sp[2]->s_vec, sp[3]->s_vec, sp[0]->s_n);
	else
		dsp_add(dcblock_perform, 4, x, sp[0]->s_vec, sp[2]->s_vec, sp[0]->s_n);
	
	#pragma unused(count)
}

