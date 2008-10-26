/* 
 *	in≈
 *	External object for Max/MSP to Provide a source for TTAudioSignals usable by a lydbær dsp chain.
 *	Copyright © 2008 by Timothy Place
 * 
 *	License: This code is licensed under the terms of the GNU LGPL
 *	http://www.gnu.org/licenses/lgpl.html 
 */

#include "maxbær.h"

// TODO: This object is only started
// TODO: nothing has been done yet with the dsp or perform methods
// TODO: we need to be able to pull from this object, so do we just use some default thing in lydbaer? 
//			or do we make a simple new TTBlue class that we can wrap?

// Data Structure for this object
typedef struct LydIn {
    t_pxobject			obj;
	LydbaerObjectPtr	lydbaer;
	void*				lydbaerOutlet;
	TTAudioSignalPtr	audioSignal;
	long				maxNumChannels;	// the number of inlets or outlets, which is an argument at instantiation
	long				numChannels;	// the actual number of channels to use, set by the dsp method
	long				vectorSize;		// cached by the DSP method
};
typedef LydIn* LydInPtr;


// Prototypes for methods
LydInPtr	lydInNew(SymbolPtr msg, AtomCount argc, AtomPtr argv);
void		lydInFree(LydInPtr x);
void		lydInAssist(LydInPtr x, void* b, long msg, long arg, char* dst);
TTErr		lydInSetup(LydInPtr x);
TTErr		lydInObject(LydInPtr x, LydbaerObjectPtr audioSourceObject);
t_int*		lydInPerform(t_int* w);
void		lydInDsp(LydInPtr x, t_signal** sp, short* count);
MaxErr		lydInSetGain(LydInPtr x, void *attr, AtomCount argc, AtomPtr argv);


// Globals
static ClassPtr sLydInClass;


/************************************************************************************/
// Main() Function

int main(void)
{
	t_class *c;
	
	TTBlueInit();	
	common_symbols_init();
	
	c = class_new("in≈", (method)lydInNew, (method)lydInFree, sizeof(LydIn), (method)0L, A_GIMME, 0);
	
	class_addmethod(c, (method)lydInSetup,				"lydbaerSetup",		A_CANT, 0);
 	class_addmethod(c, (method)lydInDsp,				"dsp",				A_CANT, 0);		
	class_addmethod(c, (method)lydInAssist,				"assist",			A_CANT, 0); 
    class_addmethod(c, (method)object_obex_dumpout,		"dumpout",			A_CANT, 0);  
		
	class_dspinit(c);
	class_register(_sym_box, c);
	sLydInClass = c;
	return 0;
}


/************************************************************************************/
// Object Creation Method

LydInPtr lydInNew(SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
    LydInPtr	x;
	TTValue		sr(sys_getsr());
 	long		attrstart = attr_args_offset(argc, argv);		// support normal arguments
	
    x = LydInPtr(object_alloc(sLydInClass));
    if(x){
		x->maxNumChannels = 2;		// An initial argument to this object will set the maximum number of channels
		if(attrstart && argv)
			x->maxNumChannels = atom_getlong(argv);
		
		ttEnvironment->setAttributeValue(kTTSym_sr, sr);
		TTObjectInstantiate(TT("audiosignal"), &x->audioSignal, x->maxNumChannels);
		x->lydbaer = new LydbaerObject(TT("gain"), x->maxNumChannels);
		
		attr_args_process(x,argc,argv);				// handle attribute args	
		
    	object_obex_store((void *)x, _sym_dumpout, (object *)outlet_new(x,NULL));	// dumpout	
		x->lydbaerOutlet = outlet_new((t_pxobject *)x, 0);
	    dsp_setup((t_pxobject *)x, 1);
		
		x->obj.z_misc = Z_NO_INPLACE | Z_PUT_FIRST;
	}
	return x;
}

// Memory Deallocation
void lydInFree(LydInPtr x)
{
	dsp_free((t_pxobject *)x);
	delete x->lydbaer;
	TTObjectRelease(x->audioSignal);
}


/************************************************************************************/
// Methods bound to input/inlets

// Method for Assistance Messages
void lydInAssist(LydInPtr x, void* b, long msg, long arg, char* dst)
{
	if(msg==1)			// Inlets
		strcpy(dst, "multichannel audio connection and control messages");		
	else if(msg==2)		// Outlets
		strcpy(dst, "(signal) single-channel output");
}


TTErr lydInSetup(LydInPtr x)
{
	Atom a;
	
	atom_setobj(&a, ObjectPtr(x->lydbaer));
	outlet_anything(x->lydbaerOutlet, gensym("lydbaerObject"), 1, &a);
	return x->lydbaer->resetSources();
}


// Perform (signal) Method
t_int* lydInPerform(t_int* w)
{
   	LydInPtr	x = (LydInPtr)(w[1]);
	short		i, j;
	
	if(!x->obj.z_disabled){
		x->lydbaer->prepareToProcess();
		x->lydbaer->getAudioOutput(x->audioSignal);
		for(i=0; i<x->numChannels; i++){
			j = (i*2) + 1;
			x->audioSignal->getVector(i, x->vectorSize, (TTFloat32*)w[j+2]);
		}
	}	
	return w + (x->numChannels+2);
}


// DSP Method
void lydInDsp(LydInPtr x, t_signal** sp, short* count)
{
	TTUInt16	i, k=0;
	void		**audioVectors = NULL;
	MaxErr		err;
	ObjectPtr	patcher = NULL;
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
	 */ 
	
	err = object_obex_lookup(x, gensym("#P"), &patcher);
	o = jpatcher_get_firstobject(patcher);
	while(o) {
		lydbaerSetupMethod = zgetfn(o, gensym("lydbaerSetup"));
		if(lydbaerSetupMethod)
			err = (MaxErr)lydbaerSetupMethod(o);
		o = jbox_get_nextobject(o);
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
	
	dsp_addv(lydInPerform, k, audioVectors);
	sysmem_freeptr(audioVectors);
}

