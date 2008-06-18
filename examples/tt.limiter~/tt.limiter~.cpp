/* 
 *	tt.limiter~
 *	External object for Max/MSP
 *	
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

#include "TTBlue.h"					// Common to all tt objects
#include "TTLimiter.h"				// TTBlue Interfaces...


// Data Structure for this object
typedef struct _limiter	{
    t_pxobject 		obj;
	TTLimiter		*limiter;
	TTAudioSignal	*audioIn;
	TTAudioSignal	*audioOut;
	float			attrThreshold;			// ATTRIBUTE: in dB
	float			attrRelease;
    long			attrLookahead;
    long			attrBypassDCBlocker;
    long			attrBypass;
	long			attrMute;
	t_symbol		*attrMode;
	float			attrPreamp;				// ATTRIBUTE: in dB
	float			attrPostamp;			// ATTRIBUTE: in dB
	long			maxNumChannels;
} t_limiter;

// Prototypes for methods: need a method for each incoming message type:
void*		limiter_new(t_symbol *msg, long argc, t_atom *argv);					// New Object Creation Method
void		limiter_free(t_limiter *x);
void		limiter_assist(t_limiter *x, void *b, long msg, long arg, char *dst);	// Assistance Method
t_int*		limiter_perform(t_int *w);												// An MSP Perform (signal) Method
void		limiter_dsp(t_limiter *x, t_signal **sp, short *count);					// DSP Method
void		limiter_clear(t_limiter *x);
void		limiter_anything(t_limiter *x, t_symbol *msg, long argc, t_atom *argv);
t_max_err	limiter_setThreshold(t_limiter *x, void *attr, long argc, t_atom *argv);
t_max_err	limiter_setPreamp(t_limiter *x, void *attr, long argc, t_atom *argv);
t_max_err	limiter_setPostamp(t_limiter *x, void *attr, long argc, t_atom *argv);
t_max_err	limiter_setMode(t_limiter *x, void *attr, long argc, t_atom *argv);
t_max_err	limiter_setRelease(t_limiter *x, void *attr, long argc, t_atom *argv);
t_max_err	limiter_setLookahead(t_limiter *x, void *attr, long argc, t_atom *argv);
t_max_err	limiter_setBypassDCBlocker(t_limiter *x, void *attr, long argc, t_atom *argv);
t_max_err	limiter_setBypass(t_limiter *x, void *attr, long argc, t_atom *argv);
t_max_err	limiter_setMute(t_limiter *x, void *attr, long argc, t_atom *argv);

// Globals
static t_class*		limiter_class;
static t_symbol*	ps_linear;
static t_symbol*	ps_exponential;

/************************************************************************************/
// Main() Function

int main(void)
{
	long attrflags = 0;
	t_class *c;
	t_object *attr;
	
	common_symbols_init();
	TTBlueInit();

	c = class_new("tt.limiter~",(method)limiter_new, (method)limiter_free, sizeof(t_limiter), 
		(method)0L, A_GIMME, 0);

	class_addmethod(c, (method)limiter_setThreshold,		"/threshold",			A_GIMME, 0);
	class_addmethod(c, (method)limiter_setPreamp,			"/preamp",				A_GIMME, 0);
	class_addmethod(c, (method)limiter_setPostamp,			"/postamp",				A_GIMME, 0);
	class_addmethod(c, (method)limiter_setRelease,			"/release",				A_GIMME, 0);
	class_addmethod(c, (method)limiter_setLookahead,		"/lookahead",			A_GIMME, 0);
	class_addmethod(c, (method)limiter_setMode,				"/mode",				A_GIMME, 0);
	class_addmethod(c, (method)limiter_setBypassDCBlocker,	"/dcblocker/bypass",	A_GIMME, 0);
	class_addmethod(c, (method)limiter_setMute,				"/audio/mute",			A_GIMME, 0);
	
	class_addmethod(c, (method)limiter_anything,			"anything",				A_GIMME, 0);
 	class_addmethod(c, (method)limiter_clear,				"clear",				0L);		
 	class_addmethod(c, (method)limiter_dsp,					"dsp",					A_CANT, 0L);		
	class_addmethod(c, (method)limiter_assist,				"assist",				A_CANT, 0L); 
    class_addmethod(c, (method)object_obex_dumpout,			"dumpout", 				A_CANT, 0); 
	class_addmethod(c, (method)stdinletinfo,				"inletinfo",			A_CANT, 0);

	// ATTRIBUTE: threshold
	attr = attr_offset_new("threshold", _sym_float32, attrflags,
		(method)0L, (method)limiter_setThreshold, calcoffset(t_limiter, attrThreshold));
	class_addattr(c, attr);

	// ATTRIBUTE: preamp
	attr = attr_offset_new("preamp", _sym_float32, attrflags,
		(method)0L, (method)limiter_setPreamp, calcoffset(t_limiter, attrPreamp));
	class_addattr(c, attr);

	// ATTRIBUTE: postamp
	attr = attr_offset_new("postamp", _sym_float32, attrflags,
		(method)0L, (method)limiter_setPostamp, calcoffset(t_limiter, attrPostamp));
	class_addattr(c, attr);

	// ATTRIBUTE: release
	attr = attr_offset_new("release", _sym_float32, attrflags,
		(method)0L, (method)limiter_setRelease, calcoffset(t_limiter, attrRelease));
	class_addattr(c, attr);

	// ATTRIBUTE: lookahead
	attr = attr_offset_new("lookahead", _sym_long, attrflags,
		(method)0L, (method)limiter_setLookahead, calcoffset(t_limiter, attrLookahead));
	class_addattr(c, attr);

	// ATTRIBUTE: mode (linear/exponential)
	attr = attr_offset_new("mode", _sym_symbol, attrflags,
		(method)0L, (method)limiter_setMode, calcoffset(t_limiter, attrMode));
	class_addattr(c, attr);

	// ATTRIBUTE:
	attr = attr_offset_new("bypass_dcblocker", _sym_long, attrflags,
		(method)0L, (method)limiter_setBypassDCBlocker, calcoffset(t_limiter, attrBypassDCBlocker));
	class_addattr(c, attr);

	// ATTRIBUTE:
	attr = attr_offset_new("bypass", _sym_long, attrflags,
		(method)0L, (method)limiter_setBypass, calcoffset(t_limiter, attrBypass));
	class_addattr(c, attr);

	// ATTRIBUTE:
	attr = attr_offset_new("mute", _sym_long, attrflags,
		(method)0L, (method)limiter_setMute, calcoffset(t_limiter, attrMute));
	class_addattr(c, attr);


	class_dspinit(c);						// Setup object's class to work with MSP
	class_register(CLASS_BOX, c);
	limiter_class = c;
	ps_linear = gensym("linear");
	ps_exponential = gensym("exponential");
	return 0;
}


/************************************************************************************/
// Object Creation Method

void *limiter_new(t_symbol *s, long argc, t_atom *argv)
{
    t_limiter	*x;
	TTValue		sr(sys_getsr());
 	long		attrstart = attr_args_offset(argc, argv);		// support normal arguments
	short		i;
   
    x = (t_limiter *)object_alloc(limiter_class);
    if(x){
		x->attrThreshold = 1.;						// Set the defaults before I go loading in values from the attributes
	    x->attrRelease = 1000.;
	    x->attrLookahead = 100;
	    x->attrMode = ps_exponential;
	    x->attrPreamp = 1.;
	    x->attrPostamp = 1.;
	    x->attrBypass = 0;
		x->attrMute = 0;
	    x->attrBypassDCBlocker = 0;
		x->maxNumChannels = 2;		// An initial argument to this object will set the maximum number of channels
		if(attrstart && argv)
			x->maxNumChannels = atom_getlong(argv);

		TTAudioObject::setGlobalAttributeValue(TT("sr"), sr);		
		x->limiter = new TTLimiter(x->maxNumChannels);
		x->audioIn = new TTAudioSignal(x->maxNumChannels);
		x->audioOut = new TTAudioSignal(x->maxNumChannels);

		attr_args_process(x,argc,argv);				// handle attribute args	
				
    	object_obex_store((void *)x, _sym_dumpout, (object *)outlet_new(x,NULL));	// dumpout	
	    dsp_setup((t_pxobject *)x, x->maxNumChannels);								// inlets
		for(i=0; i < x->maxNumChannels; i++)
			outlet_new((t_pxobject *)x, "signal");									// outlets
		
		x->obj.z_misc = Z_NO_INPLACE;
	}
	return (x);										// Return the pointer
}

// Memory Deallocation
void limiter_free(t_limiter *x)
{
	dsp_free((t_pxobject *)x);
	delete x->limiter;
	delete x->audioIn;
	delete x->audioOut;
}


/************************************************************************************/
// Methods bound to input/inlets

// Method for Assistance Messages
void limiter_assist(t_limiter *x, void *b, long msg, long arg, char *dst)
{
	if(msg==1) 	// Inlets
		strcpy(dst, "(signal) input, control messages");		
	else if(msg==2) // Outlets
		strcpy(dst, "(signal) Filtered output");
}


void limiter_clear(t_limiter *x)
{
	x->limiter->sendMessage(TT("clear"));
}


// when used as the algorithm for a module, we use this to suppress errors for unhandles messages
void limiter_anything(t_limiter *x, t_symbol *msg, long argc, t_atom *argv)
{
	//post("anything: %s", msg->s_name);
}


// Perform (signal) Method
t_int *limiter_perform(t_int *w)
{
   	t_limiter	*x = (t_limiter *)(w[1]);
	short		i, j;
	TTUInt8		numChannels = x->audioIn->getNumChannels();
	TTUInt16	vs = x->audioIn->getVectorSize();
	
	for(i=0; i<numChannels; i++){
		j = (i*2) + 2;
		x->audioIn->setVector(i, vs, (t_float *)(w[j]));
	}

	if(!x->obj.z_disabled && !x->attrMute)
		x->limiter->process(*x->audioIn, *x->audioOut);

	for(i=0; i<numChannels; i++){
		j = (i*2) + 2 + 1;
		x->audioOut->getVector(i, vs, (t_float *)(w[j]));
	}

	return w + ((numChannels*2)+2);
}


// DSP Method
void limiter_dsp(t_limiter *x, t_signal **sp, short *count)
{
	short	i, j, k=0;
	void	**audioVectors = NULL;
	TTUInt8		numChannels = 0;
	TTUInt16	vs = 0;
	
	audioVectors = (void**)sysmem_newptr(sizeof(void*) * ((x->maxNumChannels * 2) + 1));
	audioVectors[k] = x;
	k++;
	
	for(i=0; i < x->maxNumChannels; i++){
		j = x->maxNumChannels + i;
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
	
	x->audioIn->setNumChannels(numChannels);
	x->audioOut->setNumChannels(numChannels);
	x->audioIn->setVectorSize(vs);
	x->audioOut->setVectorSize(vs);
	//audioIn will be set in the perform method
	x->audioOut->alloc();
	
	x->limiter->setAttributeValue(TT("sr"), sp[0]->s_sr);
	
	dsp_addv(limiter_perform, k, audioVectors);
	sysmem_freeptr(audioVectors);
}


// ATTRIBUTE: Threshold
t_max_err limiter_setThreshold(t_limiter *x, void *attr, long argc, t_atom *argv)
{
	if(argc){
		x->attrThreshold = atom_getfloat(argv);
		x->limiter->setAttributeValue(TT("threshold"), x->attrThreshold);
	}
	return MAX_ERR_NONE;
}


// ATTRIBUTE: Preamp
t_max_err limiter_setPreamp(t_limiter *x, void *attr, long argc, t_atom *argv)
{
	if(argc){
		x->attrPreamp = atom_getfloat(argv);
		x->limiter->setAttributeValue(TT("preamp"), x->attrPreamp);
	}
	return MAX_ERR_NONE;
}


// ATTRIBUTE: Postamp
t_max_err limiter_setPostamp(t_limiter *x, void *attr, long argc, t_atom *argv)
{
	if(argc){
		x->attrPostamp = atom_getfloat(argv);
		x->limiter->setAttributeValue(TT("postamp"), x->attrPostamp);
	}
	return MAX_ERR_NONE;
}


// ATTRIBUTE: Release
t_max_err limiter_setRelease(t_limiter *x, void *attr, long argc, t_atom *argv)
{
	if(argc){
		x->attrRelease = atom_getfloat(argv);
		x->limiter->setAttributeValue(TT("release"), x->attrRelease);
	}
	return MAX_ERR_NONE;
}


// ATTRIBUTE: Lookahead
t_max_err limiter_setLookahead(t_limiter *x, void *attr, long argc, t_atom *argv)
{
	if(argc){
		x->attrLookahead = atom_getlong(argv);
		x->limiter->setAttributeValue(TT("lookahead"), x->attrLookahead / 1000.0);
	}
	return MAX_ERR_NONE;
}


// ATTRIBUTE: Bypass the Limiter
t_max_err limiter_setBypassDCBlocker(t_limiter *x, void *attr, long argc, t_atom *argv)
{
	if(argc){
		x->attrBypassDCBlocker = atom_getlong(argv);
		x->limiter->setAttributeValue(TT("dcBlocker"), !x->attrBypassDCBlocker);
	}
	return MAX_ERR_NONE;
}


t_max_err limiter_setBypass(t_limiter *x, void *attr, long argc, t_atom *argv)
{
	if(argc){
		x->attrBypass = atom_getlong(argv);
		x->limiter->setAttributeValue(TT("bypass"), x->attrBypass);
	}
	return MAX_ERR_NONE;
}


t_max_err limiter_setMute(t_limiter *x, void *attr, long argc, t_atom *argv)
{
	if(argc){
		x->attrMute = atom_getlong(argv);
	}
	return MAX_ERR_NONE;
}


// ATTRIBUTE: Mode
t_max_err limiter_setMode(t_limiter *x, void *attr, long argc, t_atom *argv)
{
	t_symbol	*arg = atom_getsym(argv);

	if(arg == ps_linear)
		x->attrMode = ps_linear;
	else
		x->attrMode = ps_exponential;
	return x->limiter->setAttributeValue(TT("mode"), TT(x->attrMode->s_name));
}

