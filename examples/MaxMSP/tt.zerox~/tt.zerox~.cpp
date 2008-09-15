/* 
 * tt.zerox~
 * External for Jamoma: zero-crossing counter
 * By Tim Place, Copyright © 2006
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "ext.h"						// Max Header
#include "z_dsp.h"						// MSP Header
#include "ext_strings.h"				// String Functions
#include "commonsyms.h"					// Common symbols used by the Max 4.5 API
#include "ext_obex.h"					// Max Object Extensions (attributes) Header

#include "TTBlueAPI.h"


// Data Structure for this object
typedef struct _zerox {
	t_pxobject			obj;			// This object - must be first
	TTAudioObjectPtr	zeroxUnit;		// 
    TTAudioSignalPtr	signalIn;		// 
    TTAudioSignalPtr	signalOut;		// 
	long				attr_size;		//  
} t_zerox;


// Prototypes for methods: need a method for each incoming message type
void*		zerox_new(t_symbol *msg, long argc, t_atom *argv);
void		zerox_free(t_zerox *x);
void		zerox_assist(t_zerox *x, void *b, long m, long a, char *s);
t_max_err	attr_set_size(t_zerox *x, void *attr, long argc, t_atom *argv);
t_int*		zerox_perform(t_int *w);
void		zerox_dsp(t_zerox *x, t_signal **sp, short *count);


// Globals
static t_class *s_zerox_class;


/************************************************************************************/

int main(void)
{
	long attrflags = 0;
	t_class *c;
	t_object *attr;
	
	TTBlueInit();
	common_symbols_init();

	c = class_new("tt.zerox~", (method)zerox_new, (method)zerox_free, sizeof(t_zerox), (method)0L, A_GIMME, 0);

	class_addmethod(c, (method)zerox_dsp, 		"dsp", A_CANT, 0L);		
    class_addmethod(c, (method)zerox_assist, 	"assist", A_CANT, 0L); 

	attr = attr_offset_new("size", _sym_long, attrflags,
		(method)0L, (method)attr_set_size, calcoffset(t_zerox, attr_size));
	class_addattr(c, attr);
	
	class_dspinit(c);
	class_register(CLASS_BOX, c);
	s_zerox_class = c;
	return 0;
}


/************************************************************************************/
// Object Life

// Create
void *zerox_new(t_symbol *msg, long argc, t_atom *argv)
{
	t_zerox*	x = (t_zerox*)object_alloc(s_zerox_class);
	
	if(x){
		object_obex_store((void *)x, _sym_dumpout, (object *)outlet_new(x, NULL));	// dumpout
		dsp_setup((t_pxobject *)x, 1);				// Create Object and 1 Inlet (last argument)
		outlet_new((t_pxobject *)x, "signal");		// Create a signal Outlet
		outlet_new((t_pxobject *)x, "signal");		// Create a signal Outlet

		TTObjectInstantiate(TT("zerocross"), &x->zeroxUnit, 1);
		TTObjectInstantiate(TT("audiosignal"), &x->signalIn, 2);
		TTObjectInstantiate(TT("audiosignal"), &x->signalOut, 2);

		x->attr_size = 0;
		attr_args_process(x, argc, argv); 			//handle attribute args			
	}
	return x;
}

// Destroy
void zerox_free(t_zerox *x)
{
	dsp_free((t_pxobject *)x);
	TTObjectRelease(x->zeroxUnit);
	TTObjectRelease(x->signalIn);
	TTObjectRelease(x->signalOut);
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
	x->zeroxUnit->setAttributeValue(TT("size"), x->attr_size);
	return MAX_ERR_NONE;
}


// Perform (signal) Method
t_int *zerox_perform(t_int *w)
{
   	t_zerox *x = (t_zerox *)(w[1]);						// Pointer
    t_float *in = (t_float *)(w[2]); 	// Input
    t_float *out1 = (t_float *)(w[3]);	// Output
    t_float *out2 = (t_float *)(w[4]);	// Output
	int vs = (int)(w[5]);			// Vector Size

	if(!x->obj.z_disabled){								// if we are not muted...
		TTAUDIOSIGNAL_SETVECTOR32(x->signalIn, 0, vs, in);
		x->zeroxUnit->process(x->signalIn, x->signalOut);
		TTAUDIOSIGNAL_GETVECTOR32(x->signalOut, 0, vs, out1);
		TTAUDIOSIGNAL_GETVECTOR32(x->signalOut, 1, vs, out2);
	}
	return w+6;	
}


// DSP Method
void zerox_dsp(t_zerox *x, t_signal **sp, short *count)
{
	x->zeroxUnit->sendMessage(TT("clear"));
	x->zeroxUnit->setAttributeValue(TT("sr"), sp[0]->s_sr);
	dsp_add(zerox_perform, 5, x, sp[0]->s_vec, sp[1]->s_vec, sp[2]->s_vec, sp[0]->s_n);
		
	x->signalIn->setAttributeValue(TT("vectorSize"), sp[0]->s_n);
	x->signalOut->setAttributeValue(TT("vectorSize"), sp[0]->s_n);
	
	//signalIn will be set (alloc'd) in the perform method
	x->signalOut->sendMessage(TT("alloc"));
}
