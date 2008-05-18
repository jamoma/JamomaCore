/* 
 *	tt.overdrive~
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

#include "TTOverdrive.h"				// TTBlue Interfaces...


// Data Structure for this object
typedef struct _overdrive	{
    t_pxobject 		obj;
	TTOverdrive		*overdrive;
	TTAudioSignal	*audioIn;
	TTAudioSignal	*audioOut;
    float			attrOverdrive;			// ATTRIBUTE: amount of overdrive
    long			attrBypassDCBlocker;
    long			attrBypass;
	long			attrMode;
	long			attrMute;
	float			attrPreamp;				// ATTRIBUTE: in dB
	long			maxNumChannels;
} t_overdrive;


// Prototypes for methods: need a method for each incoming message type
void*		overdrive_new(t_symbol *msg, short argc, t_atom *argv);					// New Object Creation Method
void		overdrive_free(t_overdrive *x);
void		overdrive_assist(t_overdrive *x, void *b, long msg, long arg, char *dst);	// Assistance Method
t_int*		overdrive_perform(t_int *w);												// An MSP Perform (signal) Method
void		overdrive_dsp(t_overdrive *x, t_signal **sp, short *count);					// DSP Method
void		overdrive_clear(t_overdrive *x);
void		overdrive_anything(t_overdrive *x, t_symbol *msg, long argc, t_atom *argv);
t_max_err	overdrive_setBypass(t_overdrive *x, void *attr, long argc, t_atom *argv);
t_max_err	overdrive_setPreamp(t_overdrive *x, void *attr, long argc, t_atom *argv);
t_max_err	overdrive_setSaturation(t_overdrive *x, void *attr, long argc, t_atom *argv);
t_max_err	overdrive_setMode(t_overdrive *x, void *attr, long argc, t_atom *argv);
t_max_err	overdrive_setBypassDCBlocker(t_overdrive *x, void *attr, long argc, t_atom *argv);
t_max_err	overdrive_setMute(t_overdrive *x, void *attr, long argc, t_atom *argv);


// Globals
t_class *overdrive_class;				// Required. Global pointing to this class


/************************************************************************************/
// Main() Function

int main(void)
{
	long attrflags = 0;
	t_class *c;
	t_object *attr;
	
	common_symbols_init();

	c = class_new("tt.overdrive~",(method)overdrive_new, (method)overdrive_free, (short)sizeof(t_overdrive), 
		(method)0L, A_GIMME, 0);

	class_addmethod(c, (method)overdrive_setPreamp,				"/preamp",				A_GIMME, 0);
	class_addmethod(c, (method)overdrive_setSaturation,			"/saturation",			A_GIMME, 0);
	class_addmethod(c, (method)overdrive_setMode,				"/mode",				A_GIMME, 0);
	class_addmethod(c, (method)overdrive_setBypassDCBlocker,	"/dcblocker/bypass",	A_GIMME, 0);
	class_addmethod(c, (method)overdrive_setMute,				"/audio/mute",			A_GIMME, 0);
	class_addmethod(c, (method)overdrive_anything,				"anything",				A_GIMME, 0);
 	class_addmethod(c, (method)overdrive_clear,					"clear",				0L);		
 	class_addmethod(c, (method)overdrive_dsp,					"dsp",					A_CANT, 0L);		
	class_addmethod(c, (method)overdrive_assist,				"assist",				A_CANT, 0L); 
    class_addmethod(c, (method)object_obex_dumpout,				"dumpout", 				A_CANT, 0);  
    class_addmethod(c, (method)object_obex_quickref,			"quickref", 			A_CANT, 0);

	attr = attr_offset_new("bypass", _sym_long, attrflags,
		(method)0L,(method)overdrive_setBypass, calcoffset(t_overdrive, attrBypass));
	class_addattr(c, attr);	

	attr = attr_offset_new("overdrive", _sym_float32, attrflags,
		(method)0L, (method)overdrive_setSaturation, calcoffset(t_overdrive, attrOverdrive));
	class_addattr(c, attr);

	attr = attr_offset_new("bypass_dcblocker", _sym_long, attrflags,
		(method)0L, (method)overdrive_setBypassDCBlocker, calcoffset(t_overdrive, attrBypassDCBlocker));
	class_addattr(c, attr);

	attr = attr_offset_new("mode", _sym_long, attrflags,
		(method)0L, (method)overdrive_setMode, calcoffset(t_overdrive, attrMode));
	class_addattr(c, attr);
	
	attr = attr_offset_new("preamp", _sym_float32, attrflags,
		(method)0L, (method)overdrive_setPreamp, calcoffset(t_overdrive, attrPreamp));
	class_addattr(c, attr);

	class_dspinit(c);						// Setup object's class to work with MSP
	class_register(CLASS_BOX, c);
	overdrive_class = c;
	return 0;
}


/************************************************************************************/
// Object Creation Method

void* overdrive_new(t_symbol *msg, short argc, t_atom *argv)
{
    t_overdrive	*x;
	TTValue		sr(sys_getsr());
 	long		attrstart = attr_args_offset(argc, argv);		// support normal arguments
	short		i;
   
    x = (t_overdrive *)object_alloc(overdrive_class);
    if(x){
		x->attrBypass = 0;
		x->maxNumChannels = 2;		// An initial argument to this object will set the maximum number of channels
		if(attrstart && argv)
			x->maxNumChannels = atom_getlong(argv);

		TTAudioObject::setGlobalAttributeValue(TT("sr"), sr);		
		x->overdrive = new TTOverdrive(x->maxNumChannels);
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
void overdrive_free(t_overdrive *x)
{
	dsp_free((t_pxobject *)x);
	delete x->overdrive;
	delete x->audioIn;
	delete x->audioOut;
}


/************************************************************************************/
// Methods bound to input/inlets

// Method for Assistance Messages
void overdrive_assist(t_overdrive *x, void *b, long msg, long arg, char *dst)
{
	if(msg==1) 	// Inlets
		strcpy(dst, "(signal) input, control messages");		
	else if(msg==2) // Outlets
		strcpy(dst, "(signal) Filtered output");
}


void overdrive_clear(t_overdrive *x)
{
	x->overdrive->sendMessage(TT("clear"));
}


// when used as the algorithm for a module, we use this to suppress errors for unhandles messages
void overdrive_anything(t_overdrive *x, t_symbol *msg, long argc, t_atom *argv)
{
	//post("anything: %s", msg->s_name);
}


// Perform (signal) Method
t_int *overdrive_perform(t_int *w)
{
   	t_overdrive	*x = (t_overdrive *)(w[1]);
	short		i, j;
	TTUInt8		numChannels = x->audioIn->getNumChannels();
	TTUInt16	vs = x->audioIn->getVectorSize();
	
	for(i=0; i<numChannels; i++){
		j = (i*2) + 1;
		x->audioIn->setVector(i, vs, (t_float *)(w[j+1]));
	}

	if(!x->obj.z_disabled && !x->attrMute)
		x->overdrive->process(*x->audioIn, *x->audioOut);

	for(i=0; i<numChannels; i++){
		j = (i*2) + 1;
		x->audioOut->getVector(i, vs, (t_float *)(w[j+2]));
	}

	return w + ((numChannels*2)+2);
}


// DSP Method
void overdrive_dsp(t_overdrive *x, t_signal **sp, short *count)
{
	short		i, j, k=0;
	void		**audioVectors = NULL;
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
	
	x->overdrive->setAttributeValue(TT("sr"), sp[0]->s_sr);
	
	dsp_addv(overdrive_perform, k, audioVectors);
	sysmem_freeptr(audioVectors);
}


t_max_err overdrive_setBypass(t_overdrive *x, void *attr, long argc, t_atom *argv)
{
	if(argc){
		x->attrBypass = atom_getlong(argv);
		x->overdrive->setAttributeValue(TT("bypass"), x->attrBypass);
	}
	return MAX_ERR_NONE;
}


t_max_err overdrive_setPreamp(t_overdrive *x, void *attr, long argc, t_atom *argv)
{
	if(argc){
		x->attrPreamp = atom_getlong(argv);
		x->overdrive->setAttributeValue(TT("preamp"), x->attrPreamp);
	}
	return MAX_ERR_NONE;
}


t_max_err overdrive_setSaturation(t_overdrive *x, void *attr, long argc, t_atom *argv)
{
	if(argc){
		x->attrOverdrive = atom_getlong(argv);
		x->overdrive->setAttributeValue(TT("drive"), x->attrOverdrive);
	}
	return MAX_ERR_NONE;
}


t_max_err overdrive_setMode(t_overdrive *x, void *attr, long argc, t_atom *argv)
{
	if(argc){
		x->attrMode = atom_getlong(argv);
		x->overdrive->setAttributeValue(TT("mode"), x->attrMode);
	}
	return MAX_ERR_NONE;
}


t_max_err overdrive_setBypassDCBlocker(t_overdrive *x, void *attr, long argc, t_atom *argv)
{
	if(argc){
		x->attrBypassDCBlocker = atom_getlong(argv);
		x->overdrive->setAttributeValue(TT("dcBlocker"), !x->attrBypassDCBlocker);
	}
	return MAX_ERR_NONE;
}


t_max_err overdrive_setMute(t_overdrive *x, void *attr, long argc, t_atom *argv)
{
	if(argc){
		x->attrMute = atom_getlong(argv);
	}
	return MAX_ERR_NONE;
}

