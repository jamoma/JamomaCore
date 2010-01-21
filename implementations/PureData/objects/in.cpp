/* 
 *	in≈
 *	External object for PureData to provide a source for TTAudioSignals usable by a Multicore dsp chain.
 *	Copyright © 2009 by Timothy Place
 * 
 *	License: This code is licensed under the terms of the GNU LGPL
 *	http://www.gnu.org/licenses/lgpl.html 
 */

#include "pdmulticorelib.h"

// Data Structure for this object
struct PdIn {
    Object				obj;
	MCoreObjectPtr		lydbaer;
	t_outlet*			lydbaerOutlet;
	long				maxNumChannels;	// the number of inlets or outlets, which is an argument at instantiation
	long				numChannels;	// the actual number of channels to use, set by the dsp method
	long				vectorSize;		// cached by the DSP method
};
typedef PdIn* PdInPtr;


// Prototypes
PdInPtr		pdInNew(SymbolPtr msg, AtomCount argc, AtomPtr argv);
void		pdInFree(PdInPtr x);
void		pdInAssist(PdInPtr x, void* b, long msg, long arg, char* dst);
TTErr		pdInReset(PdInPtr x, long vectorSize);
TTErr		pdInSetup(PdInPtr x);
TTErr		pdInObject(PdInPtr x, MCoreObjectPtr audioSourceObject);
t_int*		pdInPerform(t_int* w);
void		pdInDsp(PdInPtr x, t_signal** sp, short* count);
MaxErr		pdInSetGain(PdInPtr x, void *attr, AtomCount argc, AtomPtr argv);


// Globals
static ClassPtr sPdInClass;


/************************************************************************************/
// Main() Function

void in_setup(void)
{	
	sPdInClass = class_new(gensym("in≈"), (method)pdInNew, (method)pdInFree, sizeof(PdIn), 0, A_GIMME, 0);
	
 	//class_addmethod(sPdInClass, (method)lydInDsp,				"dsp",				A_CANT, 0);		
	//class_addmethod(sPdInClass, (method)lydInAssist,				"assist",			A_CANT, 0); 
    //class_addmethod(c, (method)object_obex_dumpout,		"dumpout",			A_CANT, 0);  
		
	CLASS_MAINSIGNALIN(sPdInClass, t_ttlimiter, f);
    class_addmethod(sPdInClass, (t_method)pdInDsp,				gensym("dsp"), A_NULL);
	//class_addmethod(sPdInClass, (t_method)ttlimiter_setpreamp,	gensym("preamp"), A_FLOAT, 0);
	class_addmethod(sPdInClass, (t_method)pdInReset,			gensym("multicore.reset"),		A_CANT, 0);
	class_addmethod(sPdInClass, (t_method)pdInSetup,			gensym("multicore.setup"),		A_CANT, 0);
	
    class_sethelpsymbol(ttlimiter_class, gensym("help-in≈.pd"));
}


/************************************************************************************/
// Object Creation Method

PdInPtr pdInNew(SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
    PdInPtr		x;
	TTValue		sr(sys_getsr());
 	long		attrstart = attr_args_offset(argc, argv);
	TTValue		v;
	TTErr		err;
	
    x = PdInPtr(object_alloc(sPdInClass));
    if(x){
		x->maxNumChannels = 2;
		if(attrstart && argv)
			x->maxNumChannels = atom_getlong(argv);
		
		ttEnvironment->setAttributeValue(kTTSym_sr, sr);

		v.setSize(2);
		v.set(0, TT("multicore.source"));
		v.set(1, x->maxNumChannels);
		err = TTObjectInstantiate(TT("multicore.object"), (TTObjectPtr*)&x->lydbaer, v);
		x->lydbaer->addFlag(kMCoreGenerator);

		if(x->lydbaer->audioObject)
			x->lydbaer->setAudioOutputPtr(MCoreSourcePtr(x->lydbaer->audioObject)->buffer);
		else{
			object_error(ObjectPtr(x), "cannot load multicore.source");
			return NULL;
		}

		attr_args_process(x,argc,argv);
		
    	object_obex_store((void *)x, _sym_dumpout, (object *)outlet_new(x,NULL));
		x->lydbaerOutlet = outlet_new((t_pxobject *)x, "multicore.signal");
	    dsp_setup((t_pxobject *)x, x->maxNumChannels);
		
		x->obj.z_misc = Z_NO_INPLACE | Z_PUT_FIRST;
	}
	return x;
}

// Memory Deallocation
void pdInFree(PdInPtr x)
{
	dsp_free((t_pxobject *)x);
	TTObjectRelease((TTObjectPtr*)&x->lydbaer);
}


/************************************************************************************/
// Methods bound to input/inlets

// Method for Assistance Messages
void pdInAssist(PdInPtr x, void* b, long msg, long arg, char* dst)
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


TTErr pdInReset(PdInPtr x, long vectorSize)
{
	return x->lydbaer->resetSources(vectorSize);
}


TTErr pdInSetup(PdInPtr x)
{
	Atom a[2];
	
	atom_setobj(a+0, ObjectPtr(x->lydbaer));
	atom_setlong(a+1, 0);
	outlet_anything(x->lydbaerOutlet, gensym("multicore.signal"), 2, a);
	return kTTErrNone;
}


// Perform (signal) Method
t_int* pdInPerform(t_int* w)
{
   	PdInPtr	x = (LydInPtr)(w[1]);
	short		i;
	
	if(!x->obj.z_disabled){
		for(i=0; i<x->numChannels; i++)
			MCoreSourcePtr(x->lydbaer->audioObject)->buffer->setVector(i, x->vectorSize, (TTFloat32*)w[i+2]);
	}	
	return w + (x->numChannels+2);
}


// DSP Method
void pdInDsp(PdInPtr x, t_signal** sp, short* count)
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

