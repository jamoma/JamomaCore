/* 
 *	tt.limiter~
 *	External object for Max/MSP
 *	
 *	Example project for TTBlue
 *	Copyright © 2005 by Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "ext.h"					// Max Header
#include "z_dsp.h"					// MSP Header
#include "ext_strings.h"			// String Functions
#include "commonsyms.h"				// Common symbols used by the Max 4.5 API
#include "ext_obex.h"				// Max Object Extensions (attributes) Header

#include "TTBlueAPI.h"				// TTBlue Interfaces...

#define MAX_NUM_CHANNELS 32

// Data Structure for this object
typedef struct _fade{
	t_pxobject 			x_obj;
	long				attr_shape;
	long				attr_mode;
	float				attr_position;
	short				numChannels;
	TTCrossfade*		xfade;			// crossfade object from the TapTools library
	TTAudioSignal*		audioIn1;
	TTAudioSignal*		audioIn2;
	TTAudioSignal*		audioInControl;
	TTAudioSignal*		audioOut;
} t_fade;

// Prototypes for methods
void *fade_new(t_symbol *s, long argc, t_atom *argv);				// New Object Creation Method
t_int *fade_perform1(t_int *w);										// An MSP Perform (signal) Method
t_int *fade_perform2(t_int *w);										// An MSP Perform (signal) Method
void fade_dsp(t_fade *x, t_signal **sp, short *count);				// DSP Method
void fade_assist(t_fade *x, void *b, long m, long a, char *s);		// Assistance Method
void fade_float(t_fade *x, double value );							// Float Method
void fade_free(t_fade *x);
t_max_err attr_set_position(t_fade *x, void *attr, long argc, t_atom *argv);
t_max_err attr_set_shape(t_fade *x, void *attr, long argc, t_atom *argv);
t_max_err attr_set_mode(t_fade *x, void *attr, long argc, t_atom *argv);
t_int *fade_perform_stereo_1(t_int *w);
t_int *fade_perform_stereo_2(t_int *w);

// Globals
static t_class	*s_fade_class;


/************************************************************************************/
// Main() Function

int main(void)				// main recieves a copy of the Max function macros table
{
	long attrflags = 0;
	t_class *c;
	t_object *attr;
	
	TTBlueInit();
	common_symbols_init();

	// Define our class
	c = class_new("tt.xfade~",(method)fade_new, (method)fade_free, sizeof(t_fade), (method)0L, A_GIMME, 0);

	// Make methods accessible for our class: 
	class_addmethod(c, (method)fade_float,				"float", A_FLOAT, 0L);
	class_addmethod(c, (method)fade_dsp, 				"dsp", A_CANT, 0L);
    class_addmethod(c, (method)object_obex_dumpout, 	"dumpout", A_CANT,0);
    class_addmethod(c, (method)fade_assist, 			"assist", A_CANT, 0L);

	// Add attributes to our class:
	attr = attr_offset_new("shape", _sym_long, attrflags,
		(method)0L,(method)attr_set_shape, calcoffset(t_fade, attr_shape));
	class_addattr(c, attr);
	
	attr = attr_offset_new("mode", _sym_long, attrflags,
		(method)0L,(method)attr_set_mode, calcoffset(t_fade, attr_mode));
	class_addattr(c, attr);
	
	attr = attr_offset_new("position", _sym_float32, attrflags,
		(method)0L,(method)attr_set_position, calcoffset(t_fade, attr_position));
	class_addattr(c, attr);	
	
	// Setup our class to work with MSP
	class_dspinit(c);

	// Finalize our class
	class_register(CLASS_BOX, c);
	s_fade_class = c;
	return 0;
}


/************************************************************************************/
// Object Life

// Create
void *fade_new(t_symbol *s, long argc, t_atom *argv)
{
	long attrstart = attr_args_offset(argc, argv);		// support normal arguments
	short i;
	
	t_fade *x = (t_fade *)object_alloc(s_fade_class);
	if(x){
		object_obex_store((void *)x, _sym_dumpout, (object *)outlet_new(x, NULL));	// dumpout

		x->numChannels = 1;
		if(attrstart && argv){
			int argument = atom_getlong(argv);
			x->numChannels = TTClip(argument, 1, MAX_NUM_CHANNELS);
		}

		dsp_setup((t_pxobject *)x, (x->numChannels * 2) + 1);	// Create Object and N Inlets (last argument)
		x->x_obj.z_misc = Z_NO_INPLACE;  					// ESSENTIAL!   		
		for(i=0; i< (x->numChannels); i++)
			outlet_new((t_pxobject *)x, "signal");			// Create a signal Outlet   		
		
		x->xfade = new TTCrossfade(x->numChannels);			// Constructors
		x->audioIn1 = new TTAudioSignal(x->numChannels);
		x->audioIn2 = new TTAudioSignal(x->numChannels);
		x->audioInControl = new TTAudioSignal(x->numChannels);
		x->audioOut = new TTAudioSignal(x->numChannels);
		
		x->xfade->setAttributeValue(TT("mode"), TT("lookup"));
		x->xfade->setAttributeValue(TT("shape"), TT("equalPower"));
		x->xfade->setAttributeValue(TT("position"), 0.5);

		attr_args_process(x, argc, argv);					// handle attribute args				
	}
	return (x);												// Return the pointer
}

// Destroy
void fade_free(t_fade *x)
{
	dsp_free((t_pxobject *)x);		// Always call dsp_free first in this routine	
	delete x->xfade;
	delete x->audioIn1;
	delete x->audioIn2;
	delete x->audioInControl;
	delete x->audioOut;
}


/************************************************************************************/
// Methods bound to input/inlets

// Method for Assistance Messages
void fade_assist(t_fade *x, void *b, long msg, long arg, char *dst)
{
	if(msg==1){ 	// Inlets
		if(arg < x->numChannels) 
			strcpy(dst, "(signal) Input A");
		else if(arg < x->numChannels*2) 
			strcpy(dst, "(signal) Input B");
		else 
			strcpy(dst, "(float/signal) Crossfade Position");
	}
	else if(msg==2){ // Outlets
		if(arg < x->numChannels) 
			strcpy(dst, "(signal) Crossfaded between A and B");
		else 
			strcpy(dst, "dumpout");
	}
}


// Float Method
void fade_float(t_fade *x, double value)
{
	x->attr_position = value;
	x->xfade->setAttributeValue(TT("position"), value);
}


// ATTRIBUTE: position
t_max_err attr_set_position(t_fade *x, void *attr, long argc, t_atom *argv)
{
	fade_float(x, atom_getfloat(argv));
	return MAX_ERR_NONE;
}


// ATTRIBUTE: shape
t_max_err attr_set_shape(t_fade *x, void *attr, long argc, t_atom *argv)
{
	x->attr_shape = atom_getlong(argv);
	if(x->attr_shape == 0) 
		x->xfade->setAttributeValue(TT("shape"), TT("equalPower"));
	else 
		x->xfade->setAttributeValue(TT("shape"), TT("linear"));

	return MAX_ERR_NONE;
}


// ATTRIBUTE: mode
t_max_err attr_set_mode(t_fade *x, void *attr, long argc, t_atom *argv)
{
	x->attr_mode = atom_getlong(argv);
	if(x->attr_mode == 0) 
		x->xfade->setAttributeValue(TT("mode"), TT("lookup"));
	else 
		x->xfade->setAttributeValue(TT("mode"), TT("calculate"));

	return MAX_ERR_NONE;
}


// control rate fading
t_int *fade_perform1(t_int *w)
{
   	t_fade		*x = (t_fade *)(w[1]);
	short		i, j;
	TTUInt8		numChannels = x->audioIn1->getNumChannels();
	TTUInt16	vs = x->audioIn1->getVectorSize();
	
	for(i=0; i<numChannels; i++){
		j = (i*3) + 1;
		x->audioIn1->setVector(i, vs, (t_float *)(w[j+1]));
		x->audioIn2->setVector(i, vs, (t_float *)(w[j+2]));
	}

	x->xfade->process(*x->audioIn1, *x->audioIn2, *x->audioOut);

	for(i=0; i<numChannels; i++){
		j = (i*3) + 1;
		x->audioOut->getVector(i, vs, (t_float *)(w[j+3]));
	}

	return w + ((numChannels*3)+2);
}


// signal rate fading
t_int *fade_perform2(t_int *w)
{
   	t_fade		*x = (t_fade *)(w[1]);
	short		i, j;
	TTUInt8		numChannels = x->audioIn1->getNumChannels();
	TTUInt16	vs = x->audioIn1->getVectorSize();
	
	for(i=0; i<numChannels; i++){
		j = (i*3) + 1;
		x->audioIn1->setVector(i, vs, (t_float *)(w[j+1]));
		x->audioIn2->setVector(i, vs, (t_float *)(w[j+2]));
	}
	object_attr_setfloat(x, _sym_position, *((t_float *)(w[(numChannels*3)+2])));

	x->xfade->process(*x->audioIn1, *x->audioIn2, *x->audioOut);

	for(i=0; i<numChannels; i++){
		j = (i*3) + 1;
		x->audioOut->getVector(i, vs, (t_float *)(w[j+3]));
	}

	return w + ((numChannels*3)+3);

}


// DSP Method
void fade_dsp(t_fade *x, t_signal **sp, short *count)
{
	short		i, j, k, l=0;
	void		**audioVectors = NULL;
	TTUInt8		numChannels = 0;
	TTUInt16	vs = 0;
	
	if(count[x->numChannels * 2])			// SIGNAL RATE CROSSFADE CONNECTED
		audioVectors = (void**)sysmem_newptr(sizeof(void*) * ((x->numChannels * 3) + 2));
	else									// CONTROL RATE CROSSFADE
		audioVectors = (void**)sysmem_newptr(sizeof(void*) * ((x->numChannels * 3) + 1));
	audioVectors[l] = x;
	l++;
	
	// audioVectors[] passed to balance_perform() as {x, audioInL[0], audioInR[0], audioOut[0], audioInL[1], audioInR[1], audioOut[1],...}
	for(i=0; i < x->numChannels; i++){
		j = x->numChannels + i;
		k = x->numChannels*2 + i + 1;	// + 1 to account for the position input
		if(count[i] && count[j] && count[k]){
			numChannels++;
			if(sp[i]->s_n > vs)
				vs = sp[i]->s_n;

			audioVectors[l] = sp[i]->s_vec;
			l++;
			audioVectors[l] = sp[j]->s_vec;
			l++;
			audioVectors[l] = sp[k]->s_vec;
			l++;
		}
	}
	
	if(count[x->numChannels * 2]){		// SIGNAL RATE CROSSFADE CONNECTED
		audioVectors[l] = sp[x->numChannels*2]->s_vec;
		l++;
	}
	
	x->audioIn1->setNumChannels(numChannels);
	x->audioIn2->setNumChannels(numChannels);
	x->audioOut->setNumChannels(numChannels);
	x->audioIn1->setVectorSize(vs);
	x->audioIn2->setVectorSize(vs);
	x->audioOut->setVectorSize(vs);
	//audioIn will be set in the perform method
	x->audioOut->alloc();	
	
	x->xfade->setAttributeValue(TT("sr"), sp[0]->s_sr);
	
	if(count[x->numChannels * 2])		// SIGNAL RATE CROSSFADE CONNECTED
		dsp_addv(fade_perform2, l, audioVectors);
	else
		dsp_addv(fade_perform1, l, audioVectors);

	sysmem_freeptr(audioVectors);
}

