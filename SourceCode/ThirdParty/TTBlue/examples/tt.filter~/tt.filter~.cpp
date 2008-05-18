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

#include "ext.h"						// Max Header
#include "z_dsp.h"						// MSP Header
#include "ext_strings.h"				// String Functions
#include "commonsyms.h"					// Common symbols used by the Max 4.5 API
#include "ext_obex.h"					// Max Object Extensions (attributes) Header

#include "TTBandpassButterworth2.h"		// TTBlue Interfaces...
#include "TTBandrejectButterworth2.h"
#include "TTHighpassButterworth1.h"
#include "TTHighpassButterworth2.h"
#include "TTHighpassButterworth3.h"
#include "TTHighpassButterworth4.h"
#include "TTHighpassLinkwitzRiley2.h"
#include "TTHighpassLinkwitzRiley4.h"
#include "TTLowpassButterworth1.h"
#include "TTLowpassButterworth2.h"
#include "TTLowpassButterworth3.h"
#include "TTLowpassButterworth4.h"
#include "TTLowpassLinkwitzRiley2.h"
#include "TTLowpassLinkwitzRiley4.h"
#include "TTLowpassOnePole.h"
#include "TTLowpassTwoPole.h"
#include "TTLowpassFourPole.h"

#define DEFAULT_F 1000
#define DEFAULT_Q 18


/** Data structure for the filter module. */
typedef struct _filter	{								///< Data Structure for this object
    t_pxobject 				obj;						///< REQUIRED: Our object
	TTAudioObject			*filter;					///< Pointer to the TTBlue filter unit used
	TTAudioObject			*oldFilter;					///< Pointer to a previous filter that needs to be freed
	TTAudioSignal			*audioIn;					///< Array of pointers to the audio inlets
	TTAudioSignal			*audioOut;					///< Array of pointers to the audio outlets
	long					maxNumChannels;				///< The maximum number of audio channels permitted
	long					sr;							///< The sample-rate
	long					attrBypass;					///< ATTRIBUTE: Bypass filtering
	float					attrFrequency;				///< ATTRIBUTE: Filter cutoff or center frequency, depending on the kind of filter
	float					attrQ;						///< ATTRIBUTE: Rilter resonance
	t_symbol				*attrType;					///< ATTRIBUTE: what kind of filter to use
} t_filter;


// Prototypes for methods: need a method for each incoming message type

/** New object create method. */
void*		filter_new(t_symbol *msg, short argc, t_atom *argv);

/** Free memory etc. when an object is destroyed. */
void		filter_free(t_filter *x);

/** Assist strings for object inlets and outlets. */
void		filter_assist(t_filter *x, void *b, long msg, long arg, char *dst);

/** This method is called on each audio vector: Frequency and resonance set at control rate. */
t_int*		filter_perform(t_int *w);

/** This method is called on each audio vector: Frequency set at signal rate. */
t_int*		filter_perform_freq(t_int *w);

/** This method is called on each audio vector: Rresonance set at signal rate. */
t_int*		filter_perform_q(t_int *w);

/** This method is called on each audio vector: Frequency and resonance set at signal rate. */
t_int*		filter_perform_freq_q(t_int *w);

/** This method is called when audio is started in order to compile the audio chain. */
void		filter_dsp(t_filter *x, t_signal **sp, short *count);

/** Clear the filter in case it has blown up (NaN). */
void		filter_clear(t_filter *x);

/** Method setting the value of the bypass attribute. */
t_max_err	filter_setBypass(t_filter *x, void *attr, long argc, t_atom *argv);

/** Method setting the value of the frequency attribute. */
t_max_err 	filter_setFrequency(t_filter *x, void *attr, long argc, t_atom *argv);

/** Method setting the value of the resonance (Q) attribute. */
t_max_err 	filter_setQ(t_filter *x, void *attr, long argc, t_atom *argv);

/** Method setting the type of the filter to use. */
t_max_err 	filter_setType(t_filter *x, void *attr, long argc, t_atom *argv);


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

 	class_addmethod(c, (method)filter_clear, 			"clear",		0L);		
 	class_addmethod(c, (method)filter_dsp, 				"dsp",			A_CANT, 0L);		
	class_addmethod(c, (method)filter_assist, 			"assist",		A_CANT, 0L); 
	class_addmethod(c, (method)object_obex_dumpout,		"dumpout",		A_CANT, 0);  
	class_addmethod(c, (method)object_obex_quickref,	"quickref",		A_CANT, 0);

	attr = attr_offset_new("bypass", _sym_long, attrflags,
		(method)0L,(method)filter_setBypass, calcoffset(t_filter, attrBypass));
	class_addattr(c, attr);
	
	attr = attr_offset_new("frequency", _sym_float32, attrflags,
		(method)0L,(method)filter_setFrequency, calcoffset(t_filter, attrFrequency));
	class_addattr(c, attr);
	
	attr = attr_offset_new("q", _sym_float32, attrflags,
		(method)0L,(method)filter_setQ, calcoffset(t_filter, attrQ));
	class_addattr(c, attr);

	attr = attr_offset_new("type", _sym_symbol, attrflags,
		(method)0L,(method)filter_setType, calcoffset(t_filter, attrType));
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
		// Setting default attribute values
		x->attrBypass = 0;
		x->attrFrequency = DEFAULT_F;
		x->attrQ = DEFAULT_Q;
		x->oldFilter = NULL;
		
		x->maxNumChannels = 2;		// An initial argument to this object will set the maximum number of channels
		if(attrstart && argv)
			x->maxNumChannels = atom_getlong(argv);

		x->sr = sr;
		TTAudioObject::setGlobalAttributeValue(TT("sr"), sr);
		object_attr_setsym(x, _sym_type, gensym("lowpass/butterworth2"));

		x->audioIn = new TTAudioSignal(x->maxNumChannels);
		x->audioOut = new TTAudioSignal(x->maxNumChannels);
		
		attr_args_process(x,argc,argv);				// handle attribute args	
				
    	object_obex_store((void *)x, _sym_dumpout, (object *)outlet_new(x,NULL));	// dumpout	
	    dsp_setup((t_pxobject *)x, x->maxNumChannels + 2);		// inlets: signals + freq + q
		for(i=0; i < x->maxNumChannels; i++)
			outlet_new((t_pxobject *)x, "signal");				// outlets
		
		x->obj.z_misc = Z_NO_INPLACE;
	}
	return (x);										// Return the pointer
}

// Memory Deallocation
void filter_free(t_filter *x)
{
	dsp_free((t_pxobject *)x);
	delete x->filter;
	if(x->oldFilter)
		delete x->oldFilter;
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
}


void filter_clear(t_filter *x)
{
	x->filter->sendMessage(TT("clear"));
}


t_max_err filter_setBypass(t_filter *x, void *attr, long argc, t_atom *argv)
{
	if(argc){
		x->attrBypass = atom_getlong(argv);
		x->filter->setAttributeValue(TT("bypass"), x->attrBypass);
	}
	return MAX_ERR_NONE;
}

t_max_err filter_setFrequency(t_filter *x, void *attr, long argc, t_atom *argv)
{
	if(argc){
		x->attrFrequency = atom_getfloat(argv);
		x->filter->setAttributeValue(TT("frequency"), x->attrFrequency);
	}
	return MAX_ERR_NONE;
}

t_max_err filter_setQ(t_filter *x, void *attr, long argc, t_atom *argv)
{
	TTErr err = kTTErrNone;
	
	if(argc){
		x->attrQ = atom_getfloat(argv);
		err = x->filter->setAttributeValue(TT("q"), x->attrQ);
		if(err == kTTErrInvalidAttribute)
			err = x->filter->setAttributeValue(TT("resonance"), x->attrQ);
	}
	return MAX_ERR_NONE;
}


/**	Some notes on how this setter works:
 *	
 *	First, we need to understand that this function is called in the low-priority queue thread,
 *	at which time the audio thread may be calling the perform method simultaneously on another
 *	processor.  So we need to take care when switching filters.
 *	
 *	To deal with this, we completely set up the new filter before switching (including setting the
 *	attributes of the filter).  Then we switch, but we don't free the old filter yet -- because the
 *	perform routine could be in the middle of a vector running the old filter still.  So we switch
 *	the pointer in the struct, but instead of deleting the old filter we simply cache its pointer
 *	in an "oldFilter" member.
 *	
 *	We could attempt to delete this filter the next time the audio perform method is called,
 *	but that would incur an expense in the perform routine and the we would also need to 
 *	manage qelem and other machinery to make that happen.  Instead, we just delete the old filter
 *	the next time we switch filters, or when the object itself is freed.  It isn't very much
 *	memory to keep the old one around and this makes things both simple and fast.
 */
t_max_err filter_setType(t_filter *x, void *attr, long argc, t_atom *argv)
{
	TTAudioObject	*newFilter = NULL;
	TTErr			err = kTTErrNone;
	
	if(x->oldFilter){
		delete x->oldFilter;
		x->oldFilter = NULL;
	}
	
	if(argc){
		if(x->attrType != atom_getsym(argv)){	// if it hasn't changed, then jump to the end...
			x->attrType = atom_getsym(argv);
			
			// These should be sorted alphabetically
			if(x->attrType == gensym("bandpass/butterworth2"))
				newFilter = new TTBandpassButterworth2(x->maxNumChannels);
			else if(x->attrType == gensym("bandreject/butterworth2"))
				newFilter = new TTBandRejectButterworth2(x->maxNumChannels);
			else if(x->attrType == gensym("highpass/butterworth1"))
				newFilter = new TTHighpassButterworth1(x->maxNumChannels);
			else if(x->attrType == gensym("highpass/butterworth2"))
				newFilter = new TTHighpassButterworth2(x->maxNumChannels);
			else if(x->attrType == gensym("highpass/butterworth3"))
				newFilter = new TTHighpassButterworth3(x->maxNumChannels);
			else if(x->attrType == gensym("highpass/butterworth4"))
				newFilter = new TTHighpassButterworth4(x->maxNumChannels);
			else if(x->attrType == gensym("highpass/linkwitzRiley2"))
				newFilter = new TTHighpassLinkwitzRiley2(x->maxNumChannels);
			else if(x->attrType == gensym("highpass/linkwitzRiley4"))
				newFilter = new TTHighpassLinkwitzRiley4(x->maxNumChannels);
			else if(x->attrType == gensym("lowpass/butterworth1"))
				newFilter = new TTLowpassButterworth1(x->maxNumChannels);
			else if(x->attrType == gensym("lowpass/butterworth2"))
				newFilter = new TTLowpassButterworth2(x->maxNumChannels);
			else if(x->attrType == gensym("lowpass/butterworth3"))
				newFilter = new TTLowpassButterworth3(x->maxNumChannels);
			else if(x->attrType == gensym("lowpass/butterworth4"))
				newFilter = new TTLowpassButterworth4(x->maxNumChannels);
			else if(x->attrType == gensym("lowpass/linkwitzRiley2"))
				newFilter = new TTLowpassLinkwitzRiley2(x->maxNumChannels);
			else if(x->attrType == gensym("lowpass/linkwitzRiley4"))
				newFilter = new TTLowpassLinkwitzRiley4(x->maxNumChannels);
			else if(x->attrType == gensym("lowpass/onepole"))
				newFilter = new TTLowpassOnePole(x->maxNumChannels);
			else if(x->attrType == gensym("lowpass/twopole"))
				newFilter = new TTLowpassTwoPole(x->maxNumChannels);
			else if(x->attrType == gensym("lowpass/fourpole"))
				newFilter = new TTLowpassFourPole(x->maxNumChannels);
				
			else{
				error("invalid filter type specified to tt.filter~");
				return MAX_ERR_GENERIC;
			}

			// Now that we have our new filter, update it with the current state of the external:
			newFilter->setAttributeValue(TT("frequency"), x->attrFrequency);
			err = newFilter->setAttributeValue(TT("q"), x->attrQ);
			if(err == kTTErrInvalidAttribute)
				err = newFilter->setAttributeValue(TT("resonance"), x->attrQ);
			newFilter->setAttributeValue(TT("bypass"), x->attrBypass);
			newFilter->setAttributeValue(TT("sr"), x->sr);
			
			// Finally, swap the old filter out for the new one
			x->oldFilter = x->filter;
			x->filter = newFilter;
		}
	}
	return MAX_ERR_NONE;
}


/************************************************************************************/
// Audio perform methods

// Perform (signal) Method: Frequency and q at control rate
t_int *filter_perform(t_int *w)
{
   	t_filter	*x = (t_filter *)(w[1]);
	short		i, j;
	TTUInt8		numChannels = x->audioIn->getNumChannels();
	TTUInt16	vs = x->audioIn->getVectorSize();
	
	for(i=0; i<numChannels; i++){
		j = (i*2) + 1;
		x->audioIn->setVector(i, vs, (t_float *)(w[j+1]));
	}

	if(!x->obj.z_disabled)									// if we are not muted...
		x->filter->process(*x->audioIn, *x->audioOut);		// Actual Filter process

	for(i=0; i<numChannels; i++){
		j = (i*2) + 1;
		x->audioOut->getVector(i, vs, (t_float *)(w[j+2]));
	}

	return w + ((numChannels*2)+2);				// +2 = +1 for the x pointer and +1 to point to the next object
}


// Perform (signal) Method: Frequency at signal rate
t_int *filter_perform_freq(t_int *w)
{
   	t_filter*	x = (t_filter *)(w[1]);
	short		i, j;
	t_float*	freq;
	TTUInt8		numChannels = x->audioIn->getNumChannels();
	TTUInt16	vs = x->audioIn->getVectorSize();
	
	for(i=0; i<numChannels; i++){
		j = (i*2) + 1;
		x->audioIn->setVector(i, vs, (t_float *)(w[j+1]));
	}
	j = (i*2) + 2;
	freq = (t_float*)w[j];

	if(!x->obj.z_disabled){
		x->attrFrequency = *freq;
		x->filter->setAttributeValue(TT("frequency"), x->attrFrequency);
		x->filter->process(*x->audioIn, *x->audioOut);
	}

	for(i=0; i<numChannels; i++){
		j = (i*2) + 1;
		x->audioOut->getVector(i, vs, (t_float *)(w[j+2]));
	}

	return w + ((numChannels*2)+3);				// +2 = +1 for the x pointer and +1 to point to the next object
}


// Perform (signal) Method: q at signal rate
t_int *filter_perform_q(t_int *w)
{
   	t_filter*	x = (t_filter *)(w[1]);
	short		i, j;
	t_float*	q;
	TTUInt8		numChannels = x->audioIn->getNumChannels();
	TTUInt16	vs = x->audioIn->getVectorSize();
	
	for(i=0; i<numChannels; i++){
		j = (i*2) + 1;
		x->audioIn->setVector(i, vs, (t_float *)(w[j+1]));
	}
	q = (t_float*)w[(i*2) + 2];

	if(!x->obj.z_disabled){
		x->attrQ = *q;
		x->filter->setAttributeValue(TT("q"), x->attrQ);
		x->filter->process(*x->audioIn, *x->audioOut);
	}

	for(i=0; i<numChannels; i++){
		j = (i*2) + 1;
		x->audioOut->getVector(i, vs, (t_float *)(w[j+2]));
	}

	return w + ((numChannels*2)+3);				// +2 = +1 for the x pointer and +1 to point to the next object
}


// Perform (signal) Method: Frequency and q at signal rate
t_int *filter_perform_freq_q(t_int *w)
{
   	t_filter*	x = (t_filter *)(w[1]);
	short		i, j;
	t_float*	freq;
	t_float*	q;
	TTUInt8		numChannels = x->audioIn->getNumChannels();
	TTUInt16	vs = x->audioIn->getVectorSize();
	
	for(i=0; i<numChannels; i++){
		j = (i*2) + 1;
		x->audioIn->setVector(i, vs, (t_float *)(w[j+1]));
	}
	freq = (t_float*)w[(i*2) + 2];
	q = (t_float*)w[(i*2) + 3];

	if(!x->obj.z_disabled){
		x->attrFrequency = *freq;
		x->attrQ = *q;
		x->filter->setAttributeValue(TT("frequency"), x->attrFrequency);
		x->filter->setAttributeValue(TT("q"), x->attrQ);
		x->filter->process(*x->audioIn, *x->audioOut);
	}

	for(i=0; i<numChannels; i++){
		j = (i*2) + 1;
		x->audioOut->getVector(i, vs, (t_float *)(w[j+2]));
	}

	return w + ((numChannels*2)+4);				// +2 = +1 for the x pointer and +1 to point to the next object
}


/************************************************************************************/
// DSP Setup

// DSP Method
void filter_dsp(t_filter *x, t_signal **sp, short *count)
{
	short		i, j, k=0;
	void		**audioVectors = NULL;
	bool		hasFreq = false;
	bool		hasQ = false;
	TTUInt8		numChannels = 0;
	TTUInt16	vs = 0;
	
	audioVectors = (void**)sysmem_newptr(sizeof(void*) * ((x->maxNumChannels * 2) + 1));
	audioVectors[k] = x;
	k++;
	
	for(i=0; i < x->maxNumChannels; i++){
		j = x->maxNumChannels + i + 2;
		if(count[i] && count[j]){
			numChannels++;
			if(sp[i]->s_n > vs)
				vs = sp[i]->s_n;
				
			audioVectors[k] = sp[i]->s_vec;
			k++;
			audioVectors[k] = sp[j]->s_vec;
			k++;
		}
	}
	if(count[x->maxNumChannels]){					// frequency inlet
		audioVectors[k] = sp[x->maxNumChannels]->s_vec;
		k++;
		hasFreq = true;
	}
	if(count[x->maxNumChannels+1]){					// q inlet
		audioVectors[k] = sp[x->maxNumChannels+1]->s_vec;
		k++;
		hasQ = true;
	}
	
	x->audioIn->setNumChannels(numChannels);
	x->audioOut->setNumChannels(numChannels);
	x->audioIn->setVectorSize(vs);
	x->audioOut->setVectorSize(vs);
	//audioIn will be set in the perform method
	x->audioOut->alloc();

	x->sr = sp[0]->s_sr;	
	x->filter->setAttributeValue(TT("sr"), sp[0]->s_sr);
	
	if(hasFreq && hasQ)
		dsp_addv(filter_perform_freq_q, k, audioVectors);
	else if(hasFreq)
		dsp_addv(filter_perform_freq, k, audioVectors);
	else if(hasQ)
		dsp_addv(filter_perform_q, k, audioVectors);
	else
		dsp_addv(filter_perform, k, audioVectors);

	sysmem_freeptr(audioVectors);
}

