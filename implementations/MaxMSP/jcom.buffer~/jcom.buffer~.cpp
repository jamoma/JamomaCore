/* 
 *	jcom.buffer~
 *	External object for Max/MSP
 *	Provides a bridge between MSP's buffers and Jamoma DSP's buffers
 *	Copyright © 2010 by Timothy Place & Nathan Wolek
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTClassWrapperMax.h"
#include "ext.h"						// Max Header
#include "z_dsp.h"						// MSP Header
#include "ext_strings.h"				// String Functions
#include "commonsyms.h"					// Common symbols used by the Max 4.5 API
#include "ext_obex.h"					// Max Object Extensions (attributes) Header
#include "TTDSP.h"						// Jamoma


/** Data structure for the object. */
typedef struct _buffer	{
    t_pxobject 				obj;						///< REQUIRED: The MSP 'base class'
	TTAudioObjectPtr		filter;						///< The TTBlue filter unit used
	TTAudioSignalPtr		audioIn;					///< The TTBlue audio signal object that is used for filter input
	TTAudioSignalPtr		audioOut;					///< The TTBlue audio signal object that us used for filter output
	TTUInt16				maxNumChannels;				///< The maximum number of audio channels permitted
	TTUInt16				numChannels;				///< The actual number of audio channels used
	TTUInt16				vs;							///< The vector size (number of samples per processing block)
	long					sr;							///< The sample rate
	long					attrBypass;					///< ATTRIBUTE: Bypass filtering
	float					attrFrequency;				///< ATTRIBUTE: Filter cutoff or center frequency, depending on the kind of filter
	float					attrQ;						///< ATTRIBUTE: Filter resonance
	t_symbol				*attrType;					///< ATTRIBUTE: what kind of filter to use
	t_symbol				*attrMode;					// Most filters don't have this attribute...
} Buffer;
typedef Buffer* BufferPtr;


// Prototypes

TTPtr		BufferNew(t_symbol *msg, short argc, t_atom *argv);
void		BufferFree(BufferPtr self);
void		BufferAssist(BufferPtr self, void *b, long msg, long arg, char *dst);
void		BufferClear(BufferPtr self);
t_max_err	BufferSetBypass(BufferPtr self, void *attr, long argc, t_atom *argv);
t_max_err 	BufferSetFrequency(BufferPtr self, void *attr, long argc, t_atom *argv);
t_max_err 	BufferSetType(BufferPtr self, void *attr, long argc, t_atom *argv);
void		BufferGettypes(BufferPtr self);
t_max_err	BufferSetMode(BufferPtr self, void *attr, long argc, t_atom *argv);


// Globals
static t_class *sClass;


/************************************************************************************/

int TTCLASSWRAPPERMAX_EXPORT main(void)
{
	t_class *c;
	
	common_symbols_init();
	TTDSPInit();

	c = class_new("jcom.buffer~",(method)BufferNew, (method)BufferFree, sizeof(BufferPtr), (method)0L, A_GIMME, 0);

	//class_addmethod(c, (method)buffer_gettypes,			"gettypes",		0L);
 	class_addmethod(c, (method)BufferClear, 			"clear",		0L);		
 	class_addmethod(c, (method)BufferDsp, 				"dsp",			A_CANT, 0L);		
	class_addmethod(c, (method)BufferAssist, 			"assist",		A_CANT, 0L); 
	class_addmethod(c, (method)object_obex_dumpout,		"dumpout",		A_CANT, 0);  
	class_addmethod(c, (method)stdinletinfo,			"inletinfo",	A_CANT, 0);
/*
	CLASS_ATTR_LONG(c,		"bypass",		0,	BufferPtr, attrBypass);
	CLASS_ATTR_ACCESSORS(c,	"bypass",		NULL, buffer_setBypass);
	CLASS_ATTR_STYLE(c,		"bypass",		0, "onoff");

	CLASS_ATTR_FLOAT(c,		"frequency",	0,	BufferPtr, attrFrequency);
	CLASS_ATTR_ACCESSORS(c,	"frequency",	NULL, buffer_setFrequency);

	CLASS_ATTR_FLOAT(c,		"q",	0,	BufferPtr, attrQ);
	CLASS_ATTR_ACCESSORS(c,	"q",	NULL, buffer_setQ);

	CLASS_ATTR_SYM(c,		"type",	0,	BufferPtr, attrType);
	CLASS_ATTR_ACCESSORS(c,	"type",	NULL, buffer_setType);

	CLASS_ATTR_SYM(c,		"mode",	0,	BufferPtr, attrMode);
	CLASS_ATTR_ACCESSORS(c,	"mode",	NULL, buffer_setMode);
*/
	class_dspinit(c);
	class_register(CLASS_BOX, c);
	sClass = c;

	return 0;
}


/************************************************************************************/
// Object Creation Method

TTPtr BufferNew(SymbolPtr msg, AtomCount ac, AtomPtr *ap)
{
    BufferPtr	self;
	TTValue		sr(sys_getsr());
 	long		attrstart = attr_args_offset(argc, argv);		// support normal arguments
	short		i;
   
    self = (BufferPtr)object_alloc(sClass);
    if (self) {
		// Setting default attribute values
		x->attrBypass = 0;
		x->attrFrequency = DEFAULT_F;
		x->attrQ = DEFAULT_Q;
		x->attrMode = _sym_nothing;
		
		x->maxNumChannels = 2;		// An initial argument to this object will set the maximum number of channels
		if(attrstart && argv)
			x->maxNumChannels = atom_getlong(argv);

		x->sr = sr;
		ttEnvironment->setAttributeValue(kTTSym_sampleRate, sr);
		object_attr_setsym(x, _sym_type, gensym("lowpass.butterworth.2"));

		TTObjectInstantiate(kTTSym_audiosignal, &x->audioIn, x->maxNumChannels);
		TTObjectInstantiate(kTTSym_audiosignal, &x->audioOut, x->maxNumChannels);

		attr_args_process(self, argc, argv);

    	object_obex_store((void *)x, _sym_dumpout, (object *)outlet_new(x,NULL));	// dumpout	
	    dsp_setup((t_pxobject *)x, x->maxNumChannels + 2);		// inlets: signals + freq + q
		for(i=0; i < x->maxNumChannels; i++)
			outlet_new((t_pxobject *)x, "signal");				// outlets
		
		x->obj.z_misc = Z_NO_INPLACE;
	}
	return self;
}


// Memory Deallocation
void BufferFree(BufferPtr self)
{
	dsp_free((t_pxobject *)x);
	TTObjectRelease(&x->filter);
	TTObjectRelease(&x->audioIn);
	TTObjectRelease(&x->audioOut);
}


/************************************************************************************/
// Methods bound to input/inlets

// Method for Assistance Messages
void BufferAssist(BufferPtr self, void *b, long msg, long arg, char *dst)
{ 
	if(msg==1){ 	// Inlets		
		if(arg == x->maxNumChannels)
			strcpy(dst, "(signal) Frequency");
		else if(arg == x->maxNumChannels+1)
			strcpy(dst, "(signal) Q-value");
		else if(arg == 0)
			strcpy(dst, "(signal) input 1, control messages");
		else if(arg < x->maxNumChannels)
			snprintf(dst, 256, "(signal) input %ld", arg+1);
		}
				
	else if(msg==2) {// Outlets		
		if(arg == x->maxNumChannels)
			strcpy(dst, "dumpout");					
		else 
			snprintf(dst, 256, "(signal) Filtered output %ld", arg+1);  
		}		
}


void BufferClear(BufferPtr self)
{
	x->filter->sendMessage(TT("clear"));
}


/*
void buffer_gettypes(BufferPtr self)
{
	TTValue		v;
	t_atom		a[2];
	
	atom_setsym(a, _sym_clear);
	object_obex_dumpout(x, gensym("types"), 1, a);
	atom_setsym(a, _sym_append);
	
	TTGetRegisteredClassNamesForTags(v, TT("filter"));
	for(TTUInt16 i=0; i<v.getSize(); i++){
		TTSymbolPtr classname;
		v.get(i, &classname);
		atom_setsym(a+1, gensym((char*)classname->getCString()));
		object_obex_dumpout(x, gensym("types"), 2, a);
	}
}


t_max_err buffer_setBypass(BufferPtr self, void *attr, long argc, t_atom *argv)
{
	if(argc){
		x->attrBypass = atom_getlong(argv);
		x->filter->setAttributeValue(kTTSym_bypass, (TTBoolean)x->attrBypass);
	}
	return MAX_ERR_NONE;
}

t_max_err buffer_setFrequency(BufferPtr self, void *attr, long argc, t_atom *argv)
{
	if(argc){
		x->attrFrequency = atom_getfloat(argv);
		x->filter->setAttributeValue(TT("frequency"), x->attrFrequency);
	}
	return MAX_ERR_NONE;
}

t_max_err buffer_setQ(BufferPtr self, void *attr, long argc, t_atom *argv)
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


t_max_err buffer_setType(BufferPtr self, void *attr, long argc, t_atom *argv)
{	
	if(argc){
		if(x->attrType != atom_getsym(argv)){	// if it hasn't changed, then jump to the end...
			TTErr	err = kTTErrNone;

			x->attrType = atom_getsym(argv);
			TTObjectInstantiate(TT(x->attrType->s_name), &x->filter, x->maxNumChannels);			
			if(x->filter){
				// Now that we have our new filter, update it with the current state of the external:
				x->filter->setAttributeValue(TT("frequency"), x->attrFrequency);
				err = x->filter->setAttributeValue(TT("q"), x->attrQ);
				if(err == kTTErrInvalidAttribute)
					err = x->filter->setAttributeValue(TT("resonance"), x->attrQ);
				x->filter->setAttributeValue(kTTSym_bypass, (TTBoolean)x->attrBypass);
				x->filter->setAttributeValue(kTTSym_sampleRate, (TTUInt32)x->sr);
			}
		}
	}
	return MAX_ERR_NONE;
}


t_max_err buffer_setMode(BufferPtr self, void *attr, long argc, t_atom *argv)
{	
	if (argc)
		x->filter->setAttributeValue(TT("mode"), TT(atom_getsym(argv)->s_name));
	return MAX_ERR_NONE;
}
*/


/************************************************************************************/
// DSP Setup

// DSP Method
void BufferDsp(BufferPtr self, t_signal **sp, short *count)
{
	short		i, j, k=0;
	void		**audioVectors = NULL;
	bool		hasFreq = false;
	bool		hasQ = false;
	
	audioVectors = (void**)sysmem_newptr(sizeof(void*) * ((x->maxNumChannels * 2) + 1));
	audioVectors[k] = x;
	k++;
	
	x->numChannels = 0;
	x->vs = 0;
	for(i=0; i < x->maxNumChannels; i++){
		j = x->maxNumChannels + i + 2;
		if(count[i] && count[j]){
			x->numChannels++;
			if(sp[i]->s_n > x->vs)
				x->vs = sp[i]->s_n;
				
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
	
	x->audioIn->setAttributeValue(kTTSym_numChannels, x->numChannels);
	x->audioOut->setAttributeValue(kTTSym_numChannels, x->numChannels);
	x->audioIn->setAttributeValue(kTTSym_vectorSize, x->vs);
	x->audioOut->setAttributeValue(kTTSym_vectorSize, x->vs);
	//audioIn will be set in the perform method
	x->audioOut->sendMessage(kTTSym_alloc);

	x->sr = sp[0]->s_sr;	
	x->filter->setAttributeValue(kTTSym_sampleRate, sp[0]->s_sr);
	
	if(hasFreq && hasQ)
		dsp_addv(buffer_perform_freq_q, k, audioVectors);
	else if(hasFreq)
		dsp_addv(buffer_perform_freq, k, audioVectors);
	else if(hasQ)
		dsp_addv(buffer_perform_q, k, audioVectors);
	else
		dsp_addv(buffer_perform, k, audioVectors);

	sysmem_freeptr(audioVectors);
}

