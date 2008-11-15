/* 
 *	in≈
 *	External object for Max/MSP to Provide a source for TTAudioSignals usable by a lydbær dsp chain.
 *	Copyright © 2008 by Timothy Place
 * 
 *	License: This code is licensed under the terms of the GNU LGPL
 *	http://www.gnu.org/licenses/lgpl.html 
 */

#include "maxMulticore.h"

// Data Structure for this object
struct LydIn {
    t_pxobject			obj;
	MCoreObjectPtr		lydbaer;
	void*				lydbaerOutlet;
	long				maxNumChannels;	// the number of inlets or outlets, which is an argument at instantiation
	long				numChannels;	// the actual number of channels to use, set by the dsp method
	long				vectorSize;		// cached by the DSP method
};
typedef LydIn* LydInPtr;


// Prototypes for methods
LydInPtr	lydInNew(SymbolPtr msg, AtomCount argc, AtomPtr argv);
void		lydInFree(LydInPtr x);
void		lydInAssist(LydInPtr x, void* b, long msg, long arg, char* dst);
TTErr		lydInReset(LydInPtr x, long vectorSize);
TTErr		lydInSetup(LydInPtr x);
TTErr		lydInObject(LydInPtr x, MCoreObjectPtr audioSourceObject);
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
	
	MCoreInit();	
	common_symbols_init();
	
	c = class_new("in≈", (method)lydInNew, (method)lydInFree, sizeof(LydIn), (method)0L, A_GIMME, 0);
	
	class_addmethod(c, (method)lydInReset,				"multicore.reset",		A_CANT, 0);
	class_addmethod(c, (method)lydInSetup,				"multicore.setup",		A_CANT, 0);
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
 	long		attrstart = attr_args_offset(argc, argv);
	
    x = LydInPtr(object_alloc(sLydInClass));
    if(x){
		x->maxNumChannels = 2;
		if(attrstart && argv)
			x->maxNumChannels = atom_getlong(argv);
		
		ttEnvironment->setAttributeValue(kTTSym_sr, sr);
		x->lydbaer = new MCoreObject(TT("multicore.source"), x->maxNumChannels);
		if(x->lydbaer->audioObject)
			x->lydbaer->setAudioOutputPtr(MCoreSourcePtr(x->lydbaer->audioObject)->buffer);
		else{
			object_error(ObjectPtr(x), "cannot load multicore.source");
			return NULL;
		}

		attr_args_process(x,argc,argv);
		
    	object_obex_store((void *)x, _sym_dumpout, (object *)outlet_new(x,NULL));
		x->lydbaerOutlet = outlet_new((t_pxobject *)x, "multicore.object");
	    dsp_setup((t_pxobject *)x, x->maxNumChannels);
		
		x->obj.z_misc = Z_NO_INPLACE | Z_PUT_FIRST;
	}
	return x;
}

// Memory Deallocation
void lydInFree(LydInPtr x)
{
	dsp_free((t_pxobject *)x);
	delete x->lydbaer;
}


/************************************************************************************/
// Methods bound to input/inlets

// Method for Assistance Messages
void lydInAssist(LydInPtr x, void* b, long msg, long arg, char* dst)
{
	if(msg==1)			// Inlets
		strcpy(dst, "(signal) single-channel input and control messages");		
	else if(msg==2){	// Outlets
		if(arg == 0)
			strcpy(dst, "multichannel output");
		else
			strcpy(dst, "dumpout");
	}
}


TTErr lydInReset(LydInPtr x, long vectorSize)
{
	return x->lydbaer->resetSources(vectorSize);
}


TTErr lydInSetup(LydInPtr x)
{
	Atom a[2];
	
	atom_setobj(a+0, ObjectPtr(x->lydbaer));
	atom_setlong(a+1, 0);
	outlet_anything(x->lydbaerOutlet, gensym("multicore.object"), 2, a);
	return kTTErrNone;
}


// Perform (signal) Method
t_int* lydInPerform(t_int* w)
{
   	LydInPtr	x = (LydInPtr)(w[1]);
	short		i;
	
	if(!x->obj.z_disabled){
		for(i=0; i<x->numChannels; i++)
			MCoreSourcePtr(x->lydbaer->audioObject)->buffer->setVector(i, x->vectorSize, (TTFloat32*)w[i+2]);
	}	
	return w + (x->numChannels+2);
}


// DSP Method
void lydInDsp(LydInPtr x, t_signal** sp, short* count)
{
	TTUInt16	i, k=0;
	void		**audioVectors = NULL;
	
	x->vectorSize = sp[0]->s_n;
			
	// Setup the perform method
	audioVectors = (void**)sysmem_newptr(sizeof(void*) * (x->maxNumChannels + 1));
	audioVectors[k] = x;
	k++;
	
	x->numChannels = 0;
	for(i=0; i < x->maxNumChannels; i++){
		x->numChannels++;				
		audioVectors[k] = sp[i]->s_vec;
		k++;
	}
	
	MCoreSourcePtr(x->lydbaer->audioObject)->buffer->setAttributeValue(TT("numChannels"), x->maxNumChannels);
	MCoreSourcePtr(x->lydbaer->audioObject)->buffer->setAttributeValue(TT("vectorSize"), x->vectorSize);
	MCoreSourcePtr(x->lydbaer->audioObject)->buffer->sendMessage(TT("alloc"));
	MCoreSourcePtr(x->lydbaer->audioObject)->setAttributeValue(TT("sr"), sp[0]->s_sr);
	
	dsp_addv(lydInPerform, k, audioVectors);
	sysmem_freeptr(audioVectors);
}

