/* 
 *	dcblocker≈
 *	External object for Max/MSP to perform basic mathematical operations on objects in a lydbær dsp chain.
 *	Copyright © 2008 by Timothy Place
 * 
 *	License: This code is licensed under the terms of the GNU LGPL
 *	http://www.gnu.org/licenses/lgpl.html 
 */

#include "maxMulticore.h"


// Data Structure for this object
typedef struct DCBlockerBaer {
    t_object			obj;
	MCoreObjectPtr		lydbaer;
	TTPtr				lydbaerOutlet;
	long				attrBypass;
};
typedef DCBlockerBaer* DCBlockerBaerPtr;


// Prototypes for methods
DCBlockerBaerPtr	dcBlockerBaerNew(SymbolPtr msg, AtomCount argc, AtomPtr argv);
void				dcBlockerBaerFree(DCBlockerBaerPtr x);
void				dcBlockerBaerAssist(DCBlockerBaerPtr x, void* b, long msg, long arg, char* dst);
void				dcBlockerBaerClear(DCBlockerBaerPtr x);
TTErr				dcBlockerBaerReset(DCBlockerBaerPtr x, long vectorSize);
TTErr				dcBlockerBaerSetup(DCBlockerBaerPtr x);
TTErr				dcBlockerBaerObject(DCBlockerBaerPtr x, MCoreObjectPtr audioSourceObject, long sourceOutletNumber);
MaxErr				dcBlockerBaerSetBypass(DCBlockerBaerPtr x, void *attr, AtomCount argc, AtomPtr argv);


// Globals
static ClassPtr sDCBlockerBaerClass;


/************************************************************************************/
// Main() Function

int main(void)
{
	ClassPtr c;
	
	MCoreInit();	
	common_symbols_init();
	
	c = class_new("dcblocker≈", (method)dcBlockerBaerNew, (method)dcBlockerBaerFree, sizeof(DCBlockerBaer), (method)0L, A_GIMME, 0);
	
	class_addmethod(c, (method)dcBlockerBaerClear,		"clear",			0);
	class_addmethod(c, (method)dcBlockerBaerReset,		"multicore.reset",	A_CANT, 0);
	class_addmethod(c, (method)dcBlockerBaerSetup,		"multicore.setup",	A_CANT, 0);
	class_addmethod(c, (method)dcBlockerBaerObject,		"multicore.signal",	A_OBJ, A_LONG, 0);
 	class_addmethod(c, (method)dcBlockerBaerAssist,		"assist",			A_CANT, 0); 
    class_addmethod(c, (method)object_obex_dumpout,		"dumpout",			A_CANT, 0);  
	
	CLASS_ATTR_LONG(c,		"bypass",	0,		DCBlockerBaer,	attrBypass);
	CLASS_ATTR_STYLE(c,		"bypass",	0,		"onoff");
	CLASS_ATTR_ACCESSORS(c,	"bypass",	NULL,	dcBlockerBaerSetBypass);
	
	class_register(_sym_box, c);
	sDCBlockerBaerClass = c;
	return 0;
}


/************************************************************************************/
// Object Creation Method

DCBlockerBaerPtr dcBlockerBaerNew(SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
    DCBlockerBaerPtr	x;
	TTValue				v;
	TTErr				err;
	
    x = (DCBlockerBaerPtr)object_alloc(sDCBlockerBaerClass);
    if(x){
    	object_obex_store((void *)x, _sym_dumpout, (ObjectPtr)outlet_new(x, NULL));
		x->lydbaerOutlet = outlet_new(x, "multicore.signal");
		
		// TODO: we need to update objects to work with the correct number of channels when the network is configured
		// Either that, or when we pull we just up the number of channels if when we need to ???
		v.setSize(2);
		v.set(0, TT("dcblocker"));
		v.set(1, 1);
		err = TTObjectInstantiate(TT("multicore.object"), (TTObjectPtr*)&x->lydbaer, v);

		if(!x->lydbaer->audioObject){
			object_error(ObjectPtr(x), "cannot load TTBlue object");
			return NULL;
		}
		
		attr_args_process(x, argc, argv);
	}
	return x;
}

// Memory Deallocation
void dcBlockerBaerFree(DCBlockerBaerPtr x)
{
	if(x->lydbaer)
		TTObjectRelease(x->lydbaer);
}


/************************************************************************************/
// Methods bound to input/inlets

// Method for Assistance Messages
void dcBlockerBaerAssist(DCBlockerBaerPtr x, void* b, long msg, long arg, char* dst)
{
	if(msg==1)			// Inlets
		strcpy(dst, "multichannel input and control messages");		
	else if(msg==2){	// Outlets
		if(arg == 0)
			strcpy(dst, "multichannel output");
		else
			strcpy(dst, "dumpout");
	}
}


void dcBlockerBaerClear(DCBlockerBaerPtr x)
{
	x->lydbaer->audioObject->sendMessage(TT("clear"));
}


// METHODS SPECIFIC TO LYDBAER EXTERNALS

TTErr dcBlockerBaerReset(DCBlockerBaerPtr x, long vectorSize)
{
	return x->lydbaer->resetSources(vectorSize);
}


TTErr dcBlockerBaerSetup(DCBlockerBaerPtr x)
{
	Atom a[2];
	
	atom_setobj(a+0, ObjectPtr(x->lydbaer));
	atom_setlong(a+1, 0);
	outlet_anything(x->lydbaerOutlet, gensym("multicore.signal"), 2, a);
	return kTTErrNone;
}


TTErr dcBlockerBaerObject(DCBlockerBaerPtr x, MCoreObjectPtr audioSourceObject, long sourceOutletNumber)
{
	return x->lydbaer->addSource(audioSourceObject, sourceOutletNumber);
}


// ATTRIBUTE SETTERS

MaxErr dcBlockerBaerSetBypass(DCBlockerBaerPtr x, void *attr, AtomCount argc, AtomPtr argv)
{
	if(argc){
		x->attrBypass = atom_getlong(argv);
		x->lydbaer->audioObject->setAttributeValue(kTTSym_bypass, x->attrBypass);
	}
	return MAX_ERR_NONE;
}

