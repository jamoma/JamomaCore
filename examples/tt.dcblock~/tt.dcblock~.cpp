/* 
 *	tt.dcblock~
 *	External object for Max/MSP
 *	Remove DC Offsets from a signal (mono or stereo operation)
 *	Example project for TTBlue
 *	Copyright © 2008 by Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "ext.h"					// Max Header
#include "z_dsp.h"					// MSP Header
#include "ext_strings.h"			// String Functions
#include "commonsyms.h"				// Common symbols used by the Max 4.5 API
#include "ext_obex.h"				// Max Object Extensions (attributes) Header

#include "TTDCBlock.h"				// TTBlue Interfaces...


// Data Structure for this object
typedef struct _dcblock	{
    t_pxobject 		obj;
    void			*obex;
	TTDCBlock		*dcblock;
	TTAudioSignal	*audio_in;
	TTAudioSignal	*audio_out;
	long			attr_bypass;
	long			num_active_channels;
} t_dcblock;


// Prototypes for methods: need a method for each incoming message type
void*		dcblock_new(t_symbol *msg, short argc, t_atom *argv);					// New Object Creation Method
void		dcblock_free(t_dcblock *x);
void		dcblock_assist(t_dcblock *x, void *b, long msg, long arg, char *dst);	// Assistance Method
t_int*		dcblock_perform(t_int *w);												// An MSP Perform (signal) Method
void		dcblock_dsp(t_dcblock *x, t_signal **sp, short *count);					// DSP Method
void		dcblock_clear(t_dcblock *x);
t_max_err	dcblock_setBypass(t_dcblock *x, void *attr, long argc, t_atom *argv);


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

 	class_addmethod(c, (method)dcblock_clear, 			"clear",	0L);		
 	class_addmethod(c, (method)dcblock_dsp, 			"dsp",		A_CANT, 0L);		
	class_addmethod(c, (method)dcblock_assist, 			"assist",	A_CANT, 0L); 

	attr = attr_offset_new("bypass", _sym_long, attrflags,
		(method)0L,(method)dcblock_setBypass, calcoffset(t_dcblock, attr_bypass));
	class_addattr(c, attr);	

	class_dspinit(c);						// Setup object's class to work with MSP
	class_register(CLASS_BOX, c);
	dcblock_class = c;

	return 0;
}


/************************************************************************************/
// Object Creation Method

void* dcblock_new(t_symbol *msg, short argc, t_atom *argv)
{
    t_dcblock	*x;
	TTValue		sr(sys_getsr());
    
    x = (t_dcblock *)object_alloc(dcblock_class);
    if(x){
		x->attr_bypass = 0;
		attr_args_process(x,argc,argv);				// handle attribute args	
				
    	object_obex_store((void *)x, _sym_dumpout, (object *)outlet_new(x,NULL));	// dumpout	
	    dsp_setup((t_pxobject *)x, 2);												// inlets
		outlet_new((t_pxobject *)x, "signal");										// outlets
		outlet_new((t_pxobject *)x, "signal");
		
		x->obj.z_misc = Z_NO_INPLACE;

//		TTAudioObject::set_global_sr(sr);			// update Tap.Tool's global sr field
		TTAudioObject::setGlobalParameterValue("sr", sr);
	
		x->dcblock = new TTDCBlock(2);
		x->audio_in = new TTAudioSignal(2);		// assume stereo initially
		x->audio_out = new TTAudioSignal(2);
	}
	return (x);										// Return the pointer
}

// Memory Deallocation
void dcblock_free(t_dcblock *x)
{
	dsp_free((t_pxobject *)x);
	delete x->dcblock;
	delete x->audio_in;
	delete x->audio_out;
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


void dcblock_clear(t_dcblock *x)
{
	x->dcblock->sendMessage("clear");
}


// Perform (signal) Method
// handles both mono and stereo configurations
t_int *dcblock_perform(t_int *w)
{
   	t_dcblock *x = (t_dcblock *)(w[1]);						// pointer to this instance
	x->audio_in->setVector(0, (t_float *)(w[2]));			// left Channel
	x->audio_out->setVector(0, (t_float *)(w[4]));			//	...
	if(x->num_active_channels > 1){							// Optional Right Channel
		x->audio_in->setVector(1, (t_float *)(w[3]));		//	...
		x->audio_out->setVector(1, (t_float *)(w[5]));		//	...
	}
	x->audio_in->vs = ((int)(w[6]));
	x->audio_out->vs = ((int)(w[6]));

	if(!x->obj.z_disabled)									// if we are not muted...
		x->dcblock->process(*x->audio_in, *x->audio_out);	// Actual DC-Blocker process

    return w+7;												// Return a pointer to the NEXT object in the DSP call chain
}


// DSP Method
void dcblock_dsp(t_dcblock *x, t_signal **sp, short *count)
{
	TTValue a;
	
	if(count[1] && count[3])
		x->num_active_channels = 2;
	else
		x->num_active_channels = 1;

	a = x->num_active_channels;
	//x->audio_in->set_attr(tt_audio_bundle::k_num_channels, a);
	//x->audio_out->set_attr(tt_audio_bundle::k_num_channels, a);
	x->audio_in->numChannels = (TTUInt32)a;
	x->audio_out->numChannels = (TTUInt32)a;
	
	x->dcblock->setParameterValue("sr", sp[0]->s_sr);
	
	// We add the dsp routine for the maximum number of channels
	dsp_add(dcblock_perform, 6, x, sp[0]->s_vec, sp[1]->s_vec, sp[2]->s_vec, sp[3]->s_vec, sp[0]->s_n);
}


t_max_err dcblock_setBypass(t_dcblock *x, void *attr, long argc, t_atom *argv)
{
	TTSymbol	name("bypass");
	TTValue		value;

	if(argc){
		value = x->attr_bypass = atom_getlong(argv);
		x->dcblock->setParameterValue(name, value);
	}
	return MAX_ERR_NONE;
}
