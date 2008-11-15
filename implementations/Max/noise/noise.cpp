/* 
 *	noise≈
 *	Noiselator object for Max/Lydbær
 *	Copyright © 2008 by Timothy Place
 * 
 *	License: This code is licensed under the terms of the GNU LGPL
 *	http://www.gnu.org/licenses/lgpl.html 
 */

#include "maxMulticore.h"


// Data Structure for this object
typedef struct NoiseBaer {
    t_object			obj;
	MCoreObjectPtr	lydbaer;
	TTPtr				lydbaerOutlet;
	SymbolPtr			attrMode;
};
typedef NoiseBaer* NoiseBaerPtr;


// Prototypes for methods
NoiseBaerPtr	noiseBaerNew(SymbolPtr msg, AtomCount argc, AtomPtr argv);
void			noiseBaerFree(NoiseBaerPtr x);
void			noiseBaerAssist(NoiseBaerPtr x, void* b, long msg, long arg, char* dst);
TTErr			noiseBaerReset(NoiseBaerPtr x, long vectorSize);
TTErr			noiseBaerSetup(NoiseBaerPtr x);

MaxErr noiseBaerSetMode(NoiseBaerPtr x, void *attr, AtomCount argc, AtomPtr argv);
MaxErr noiseBaerSetInterpolation(NoiseBaerPtr x, void *attr, AtomCount argc, AtomPtr argv);
MaxErr noiseBaerSetFrequency(NoiseBaerPtr x, void *attr, AtomCount argc, AtomPtr argv);
MaxErr noiseBaerSetGain(NoiseBaerPtr x, void *attr, AtomCount argc, AtomPtr argv);


// Globals
static ClassPtr sNoiseBaerClass;


/************************************************************************************/
// Main() Function

int main(void)
{
	t_class *c;

	MCoreInit();	
	common_symbols_init();

	c = class_new("noise≈", (method)noiseBaerNew, (method)noiseBaerFree, sizeof(NoiseBaer), (method)0L, A_GIMME, 0);
	
	class_addmethod(c, (method)noiseBaerReset,			"multicore.reset",		A_CANT, 0);
	class_addmethod(c, (method)noiseBaerSetup,			"multicore.setup",		A_CANT,	0);
	class_addmethod(c, (method)noiseBaerAssist,			"assist",			A_CANT, 0); 
    class_addmethod(c, (method)object_obex_dumpout,		"dumpout",			A_CANT, 0);  
	
	CLASS_ATTR_SYM(c,		"mode",			0,		NoiseBaer,	attrMode);
	CLASS_ATTR_ACCESSORS(c,	"mode",			NULL,	noiseBaerSetMode);
	
	class_register(_sym_box, c);
	sNoiseBaerClass = c;
	return 0;
}


/************************************************************************************/
// Object Creation Method

NoiseBaerPtr noiseBaerNew(SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
    NoiseBaerPtr x = NoiseBaerPtr(object_alloc(sNoiseBaerClass));

    if(x){
		x->lydbaer = new MCoreObject(TT("noise"), 1);
		x->lydbaer->addFlag(kMCoreGenerator);

		attr_args_process(x, argc, argv);

    	object_obex_store((void *)x, _sym_dumpout, (object *)outlet_new(x,NULL));
		x->lydbaerOutlet = outlet_new((t_pxobject *)x, "multicore.object");
	}
	return x;
}

// Memory Deallocation
void noiseBaerFree(NoiseBaerPtr x)
{
	delete x->lydbaer;
}


/************************************************************************************/
// Methods bound to input/inlets

// Method for Assistance Messages
void noiseBaerAssist(NoiseBaerPtr x, void* b, long msg, long arg, char* dst)
{
	if(msg==1)			// Inlets
		strcpy(dst, "multichannel audio connection and control messages");		
	else if(msg==2){	// Outlets
		if(arg == 0)
			strcpy(dst, "multichannel audio connection");
		else
			strcpy(dst, "dumpout");
	}
}


TTErr noiseBaerReset(NoiseBaerPtr x, long vectorSize)
{
	return x->lydbaer->resetSources(vectorSize);
}


TTErr noiseBaerSetup(NoiseBaerPtr x)
{
	Atom a[2];
	
	atom_setobj(a+0, ObjectPtr(x->lydbaer));
	atom_setlong(a+1, 0);
	outlet_anything(x->lydbaerOutlet, gensym("multicore.object"), 2, a);
	return kTTErrNone;
}



MaxErr noiseBaerSetMode(NoiseBaerPtr x, void *attr, AtomCount argc, AtomPtr argv)
{
	if(argc){
		x->attrMode = atom_getsym(argv);
		x->lydbaer->audioObject->setAttributeValue(TT("mode"), TT(x->attrMode->s_name));
	}
	return MAX_ERR_NONE;
}

