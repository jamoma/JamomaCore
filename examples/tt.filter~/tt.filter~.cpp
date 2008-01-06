/* 
 *	tt.filter~
 *	External object for Max/MSP
 *	Wannabe Max wrapper (external) for all filter units in ttblue
 *	Example project for TTBlue
 *	Copyright © 2008 by Timothy Place & Trond Lossius
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "ext.h"					// Max Header
#include "z_dsp.h"					// MSP Header
#include "ext_strings.h"			// String Functions
#include "commonsyms.h"				// Common symbols used by the Max 4.5 API
#include "ext_obex.h"				// Max Object Extensions (attributes) Header

#include "TTLowpassButterworth.h"	// TTBlue Interfaces...


/** Data structure for the filter module. */
typedef struct _filter	{								///< Data Structure for this object
    t_pxobject 				obj;						///< REQUIRED: Our object
    void					*obex;						///< REQUIRED: Object Extensions used by Jitter/Attribute stuff
	TTLowpassButterworth	*filter;					///< Pointer to the TTBlue filter unit used
	TTAudioSignal			*audioIn;					///< Array of pointers to the audio inlets
	TTAudioSignal			*audioOut;					///< Array of pointers to the audio outlets
	long					attrBypass;					///< ATTRIBUTE: Bypass filtering
	long					maxNumChannels;				///< The maximum number of audio channels permitted
	TTFloat64				attrFrequency;				///< ATTRIBUTE: Filter cutoff or center frequency, depending on the kind of filter
} t_filter;


// Prototypes for methods: need a method for each incoming message type

/** New object create method. */
void*		filter_new(t_symbol *msg, short argc, t_atom *argv);

/** Free memory etc. when an object is destroyed. */
void		filter_free(t_filter *x);

/** Assist strings for object inlets and outlets. */
void		filter_assist(t_filter *x, void *b, long msg, long arg, char *dst);

/** This method is called on each audio vector. */
t_int*		filter_perform(t_int *w);

/** This method is called when audio is started in order to compile the audio chain. */
void		filter_dsp(t_filter *x, t_signal **sp, short *count);

/** Clear the filter in case it has blown up (NaN) */
void		filter_clear(t_filter *x);

/** Method setting the value of the bypass attribute. */
t_max_err	filter_setBypass(t_filter *x, void *attr, long argc, t_atom *argv);

/** Method setting the value of the frequency attribute. */
t_max_err 	filter_setFrequency(t_filter *x, void *attr, long argc, t_atom *argv);


// Globals
t_class *filter_class;				// Required. Global pointing to this class


/************************************************************************************/
// Main() Function

int main(void)
{
	long attrflags = 0;
	t_class *c;
	t_object *attr;
	
	common_symbols_init();

	c = class_new("tt.filter~",(method)filter_new, (method)filter_free, (short)sizeof(t_filter), 
		(method)0L, A_GIMME, 0);
	class_obexoffset_set(c, calcoffset(t_filter, obex));

 	class_addmethod(c, (method)filter_clear, 			"clear",	0L);		
 	class_addmethod(c, (method)filter_dsp, 				"dsp",		A_CANT, 0L);		
	class_addmethod(c, (method)filter_assist, 			"assist",	A_CANT, 0L); 

	attr = attr_offset_new("bypass", _sym_long, attrflags,
		(method)0L,(method)filter_setBypass, calcoffset(t_filter, attrBypass));
	class_addattr(c, attr);
	
	attr = attr_offset_new("frequency", _sym_float, attrflags,
		(method)0L,(method)filter_setFrequency, calcoffset(t_filter, attrFrequency));
	class_addattr(c, attr);

	class_dspinit(c);						// Setup object's class to work with MSP
	class_register(CLASS_BOX, c);
	filter_class = c;

	return 0;
}


/************************************************************************************/
// Object Creation Method

void* filter_new(t_symbol *msg, short argc, t_atom *argv)
{
    t_filter	*x;
	TTValue		sr(sys_getsr());
 	long		attrstart = attr_args_offset(argc, argv);		// support normal arguments
	short		i;
   
    x = (t_filter *)object_alloc(filter_class);
    if(x){
		x->attrBypass = 0;
		x->maxNumChannels = 2;		// An initial argument to this object will set the maximum number of channels
		if(attrstart && argv)
			x->maxNumChannels = atom_getlong(argv);

		// Setting default attribute values
		x->attrFrequency = 4000;
		
		attr_args_process(x,argc,argv);				// handle attribute args	
				
    	object_obex_store((void *)x, _sym_dumpout, (object *)outlet_new(x,NULL));	// dumpout	
	    dsp_setup((t_pxobject *)x, x->maxNumChannels);								// inlets
		for(i=0; i < x->maxNumChannels; i++)
			outlet_new((t_pxobject *)x, "signal");									// outlets
		
		x->obj.z_misc = Z_NO_INPLACE;

		TTAudioObject::setGlobalParameterValue(TT("sr"), sr);
//		TTObject::globalObject.setGlobalParameterValue(TT("sr"), sr);
		
		x->filter = new TTLowpassButterworth(x->maxNumChannels);
		x->audioIn = new TTAudioSignal(x->maxNumChannels);
		x->audioOut = new TTAudioSignal(x->maxNumChannels);
	}
	return (x);										// Return the pointer
}

// Memory Deallocation
void filter_free(t_filter *x)
{
	dsp_free((t_pxobject *)x);
	delete x->filter;
	delete x->audioIn;
	delete x->audioOut;
}


/************************************************************************************/
// Methods bound to input/inlets

// Method for Assistance Messages
void filter_assist(t_filter *x, void *b, long msg, long arg, char *dst)
{
	if(msg==1) 	// Inlets
		strcpy(dst, "(signal) input, control messages");		
	else if(msg==2) // Outlets
		strcpy(dst, "(signal) Filtered output");
	#pragma unused(x)
	#pragma unused(b)
	#pragma unused(arg)
}


void filter_clear(t_filter *x)
{
	x->filter->sendMessage("clear");
}


// Perform (signal) Method
t_int *filter_perform(t_int *w)
{
   	t_filter	*x = (t_filter *)(w[1]);
	short		i, j;
	
	for(i=0; i < x->audioIn->numChannels; i++){
		j = (i*2) + 1;
		x->audioIn->setVector(i, (t_float *)(w[j+1]));
		x->audioOut->setVector(i, (t_float *)(w[j+2]));
	}

	if(!x->obj.z_disabled)									// if we are not muted...
		x->filter->process(*x->audioIn, *x->audioOut);		// Actual DC-Blocker process

	return w + ((x->audioIn->numChannels*2)+2);				// +2 = +1 for the x pointer and +1 to point to the next object
}


// DSP Method
void filter_dsp(t_filter *x, t_signal **sp, short *count)
{
	short	i, j, k=0;
	void	**audioVectors = NULL;
	
	audioVectors = (void**)sysmem_newptr(sizeof(void*) * ((x->maxNumChannels * 2) + 1));
	audioVectors[k] = x;
	k++;
	
	x->audioIn->numChannels = 0;
	x->audioOut->numChannels = 0;	
	for(i=0; i < x->maxNumChannels; i++){
		j = x->maxNumChannels + i;
		if(count[i] && count[j]){
			audioVectors[k] = sp[i]->s_vec;
			x->audioIn->numChannels++;
			x->audioIn->vs = sp[i]->s_n;
			k++;
			audioVectors[k] = sp[j]->s_vec;
			x->audioOut->numChannels++;
			x->audioIn->vs = sp[j]->s_n;
			k++;
		}
	}
	
	x->filter->setParameterValue(TT("sr"), sp[0]->s_sr);
	
	dsp_addv(filter_perform, k, audioVectors);
	sysmem_freeptr(audioVectors);
}


t_max_err filter_setBypass(t_filter *x, void *attr, long argc, t_atom *argv)
{
	TTSymbol	name("bypass");
	TTValue		value;

	if(argc){
		value = x->attrBypass = atom_getlong(argv);
		x->filter->setParameterValue(name, value);
	}
	return MAX_ERR_NONE;
}

t_max_err filter_setFrequency(t_filter *x, void *attr, long argc, t_atom *argv)
{
	TTSymbol	name("frequency");
	TTValue		value;

	if(argc){
		value = x->attrFrequency = atom_getfloat(argv);
		x->filter->setParameterValue(name, value);
	}
	return MAX_ERR_NONE;
}
