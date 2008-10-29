/* 
 *	out≈
 *	External object for Max/MSP to output TTAudioSignals from a lydbær dsp chain.
 *	Copyright © 2008 by Timothy Place
 * 
 *	License: This code is licensed under the terms of the GNU LGPL
 *	http://www.gnu.org/licenses/lgpl.html 
 */

#include "maxbaer.h"


// Data Structure for this object
struct LydOut {
    t_pxobject			obj;
	LydbaerObjectPtr	lydbaer;
	TTAudioSignalPtr	audioSignal;
	long				maxNumChannels;	// the number of inlets or outlets, which is an argument at instantiation
	long				numChannels;	// the actual number of channels to use, set by the dsp method
	long				vectorSize;		// cached by the DSP method
	float				gain;			// gain multiplier
};
typedef LydOut* LydOutPtr;


// Prototypes for methods
LydOutPtr	lydOutNew(SymbolPtr msg, AtomCount argc, AtomPtr argv);
void		lydOutFree(LydOutPtr x);
void		lydOutAssist(LydOutPtr x, void* b, long msg, long arg, char* dst);
TTErr		lydOutReset(LydOutPtr x, long vectorSize);
TTErr		lydOutObject(LydOutPtr x, LydbaerObjectPtr audioSourceObject);
t_int*		lydOutPerform(t_int* w);
void		lydOutDsp(LydOutPtr x, t_signal** sp, short* count);
MaxErr		lydOutSetGain(LydOutPtr x, void *attr, AtomCount argc, AtomPtr argv);


// Globals
static ClassPtr sLydOutClass;


/************************************************************************************/
// Main() Function

int main(void)
{
	t_class *c;

	TTBlueInit();	
	common_symbols_init();

	c = class_new("out≈", (method)lydOutNew, (method)lydOutFree, sizeof(LydOut), (method)0L, A_GIMME, 0);
	
	//class_addmethod(c, (method)lydOutNotify,			"notify",			A_CANT, 0);
	class_addmethod(c, (method)lydOutReset,				"lydbaerReset",		A_CANT, 0);
	class_addmethod(c, (method)lydOutObject,			"lydbaerObject",	A_OBJ,	0);
 	class_addmethod(c, (method)lydOutDsp,				"dsp",				A_CANT, 0);		
	class_addmethod(c, (method)lydOutAssist,			"assist",			A_CANT, 0); 
    class_addmethod(c, (method)object_obex_dumpout,		"dumpout",			A_CANT, 0);  
	
	CLASS_ATTR_FLOAT(c,		"gain", 0,		LydOut,	gain);
	CLASS_ATTR_ACCESSORS(c,	"gain",	NULL,	lydOutSetGain);

	class_dspinit(c);
	class_register(_sym_box, c);
	sLydOutClass = c;
	return 0;
}


/************************************************************************************/
// Object Creation Method

LydOutPtr lydOutNew(SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
    LydOutPtr	x;
	TTValue		sr(sys_getsr());
 	long		attrstart = attr_args_offset(argc, argv);		// support normal arguments
	short		i;
   
    x = LydOutPtr(object_alloc(sLydOutClass));
    if(x){
		x->maxNumChannels = 2;		// An initial argument to this object will set the maximum number of channels
		if(attrstart && argv)
			x->maxNumChannels = atom_getlong(argv);

		ttEnvironment->setAttributeValue(kTTSym_sr, sr);
		TTObjectInstantiate(TT("audiosignal"), &x->audioSignal, x->maxNumChannels);
		x->lydbaer = new LydbaerObject(TT("gain"), x->maxNumChannels);
		
		attr_args_process(x,argc,argv);				// handle attribute args	
				
    	object_obex_store((void *)x, _sym_dumpout, (object *)outlet_new(x,NULL));	// dumpout	
	    dsp_setup((t_pxobject *)x, 1);
		for(i=0; i < x->maxNumChannels; i++)
			outlet_new((t_pxobject *)x, "signal");
		
		x->obj.z_misc = Z_NO_INPLACE | Z_PUT_LAST;
	}
	return x;
}

// Memory Deallocation
void lydOutFree(LydOutPtr x)
{
	dsp_free((t_pxobject *)x);
	delete x->lydbaer;
	TTObjectRelease(x->audioSignal);
}


/************************************************************************************/
// Methods bound to input/inlets

// Method for Assistance Messages
void lydOutAssist(LydOutPtr x, void* b, long msg, long arg, char* dst)
{
	if(msg==1)			// Inlets
		strcpy(dst, "multichannel audio connection and control messages");		
	else if(msg==2){	// Outlets
		if(arg == x->maxNumChannels)
			strcpy(dst, "dumpout");
		else
			strcpy(dst, "(signal) single-channel output");
	}
}

TTErr lydOutReset(LydOutPtr x, long vectorSize)
{
	return x->lydbaer->resetSources(vectorSize);
}


TTErr lydOutObject(LydOutPtr x, LydbaerObjectPtr audioSourceObject)
{
	return x->lydbaer->addSource(audioSourceObject);
}


// Perform (signal) Method
t_int* lydOutPerform(t_int* w)
{
   	LydOutPtr	x = (LydOutPtr)(w[1]);
	short		i;
	
	if(!x->obj.z_disabled && x->lydbaer->numSources){
		x->lydbaer->prepareToProcess();
		x->lydbaer->getAudioOutput(x->audioSignal);
		for(i=0; i<x->numChannels; i++)
			x->audioSignal->getVector(i, x->vectorSize, (TTFloat32*)w[i+2]);
	}	
	return w + (x->numChannels+2);
}


// DSP Method
void lydOutDsp(LydOutPtr x, t_signal** sp, short* count)
{
	TTUInt16	i, k=0;
	void		**audioVectors = NULL;
	MaxErr		err;
	ObjectPtr	patcher = NULL;
	ObjectPtr	box = NULL;
	ObjectPtr	o = NULL;
	method		lydbaerSetupMethod = NULL;
	
	x->vectorSize = sp[0]->s_n;
	
	/*	We need to figure out what objects are connected to what inlets to build the graph.
		This is tricky, as there is no way to simply ask our inlets what are connected to them.
		So here is what we do:
		
		1. Broadcast a message to every object in the patcher.  Something like 'lydbaerSetup'.
		2. This message is then handled by all objects that understand it by passing a 'lydbaerObject'
			message down to the next object(s) below them.
		
		Thus, after this has happened every object will know about the object above it in the graph,
		and we will then be able to pull audio from them.
	 
	 
		***
		We have to traverse twice, because we have to clear all connections first, then add connections.
		It won't work to do them both during the same traversal because situations arise
		Where we setup the chain and then it gets reset again by another object 
		(since the order in which we traverse objects is undefined).
	 */ 

	err = object_obex_lookup(x, gensym("#P"), &patcher);
	box = jpatcher_get_firstobject(patcher);
	while(box) {
		o = jbox_get_object(box);
		lydbaerSetupMethod = zgetfn(o, gensym("lydbaerReset"));
		if(lydbaerSetupMethod)
			err = (MaxErr)lydbaerSetupMethod(o, x->vectorSize);
		box = jbox_get_nextobject(box);
	}
	box = jpatcher_get_firstobject(patcher);
	while(box) {
		o = jbox_get_object(box);
		lydbaerSetupMethod = zgetfn(o, gensym("lydbaerSetup"));
		if(lydbaerSetupMethod)
			err = (MaxErr)lydbaerSetupMethod(o);
		box = jbox_get_nextobject(box);
	}
	
	// Setup the perform method
	audioVectors = (void**)sysmem_newptr(sizeof(void*) * (x->maxNumChannels + 1));
	audioVectors[k] = x;
	k++;
	
	x->numChannels = 0;
	for(i=1; i <= x->maxNumChannels; i++){
		x->numChannels++;				
		audioVectors[k] = sp[i]->s_vec;
		k++;
	}
	
	x->audioSignal->setAttributeValue(TT("numChannels"), x->maxNumChannels);
	x->audioSignal->setAttributeValue(TT("vectorSize"), x->vectorSize);
	x->audioSignal->sendMessage(TT("alloc"));
	x->lydbaer->audioObject->setAttributeValue(TT("sr"), sp[0]->s_sr);
	
	dsp_addv(lydOutPerform, k, audioVectors);
	sysmem_freeptr(audioVectors);
}


MaxErr lydOutSetGain(LydOutPtr x, void *attr, AtomCount argc, AtomPtr argv)
{
	if(argc){
		x->gain = atom_getfloat(argv);
		x->lydbaer->audioObject->setAttributeValue(TT("linearGain"), x->gain);
	}
	return MAX_ERR_NONE;
}

