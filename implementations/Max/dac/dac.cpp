/* 
 *	dac≈
 *	External object for Max/Lydbær
 *	Copyright © 2008 by Timothy Place
 * 
 *	License: This code is licensed under the terms of the GNU LGPL
 *	http://www.gnu.org/licenses/lgpl.html 
 */

#include "maxMulticore.h"


// Data Structure for this object
struct LydDac {
    t_object			obj;
	MCoreObjectPtr	lydbaer;
};
typedef LydDac* LydDacPtr;


// Prototypes for methods
LydDacPtr	lydDacNew(SymbolPtr msg, AtomCount argc, AtomPtr argv);
void		lydDacFree(LydDacPtr x);
void		lydDacAssist(LydDacPtr x, void* b, long msg, long arg, char* dst);
TTErr		lydDacReset(LydDacPtr x, long vectorSize);
TTErr		lydDacObject(LydDacPtr x, MCoreObjectPtr audioSourceObject, long sourceOutletNumber);
TTErr		lydDacStart(LydDacPtr x);
TTErr		lydDacStop(LydDacPtr x);
// Prototypes for attribute accessors
MaxErr		lydDacSetSampleRate(LydDacPtr x, void* attr, AtomCount argc, AtomPtr argv);
MaxErr		lydDacGetSampleRate(LydDacPtr x, void* attr, AtomCount* argc, AtomPtr* argv);
MaxErr		lydDacSetVectorSize(LydDacPtr x, void* attr, AtomCount argc, AtomPtr argv);
MaxErr		lydDacGetVectorSize(LydDacPtr x, void* attr, AtomCount* argc, AtomPtr* argv);


// Globals
static ClassPtr sLydDacClass;


/************************************************************************************/
// Main() Function

int main(void)
{
	t_class *c;
	
	MCoreInit();	
	common_symbols_init();
	
	c = class_new("dac≈", (method)lydDacNew, (method)lydDacFree, sizeof(LydDac), (method)0L, A_GIMME, 0);
	
	class_addmethod(c, (method)lydDacStart,				"start",			0);
	class_addmethod(c, (method)lydDacStop,				"stop",				0);
	//class_addmethod(c, (method)lydDacNotify,			"notify",			A_CANT, 0);
	class_addmethod(c, (method)lydDacReset,				"multicore.reset",	A_CANT, 0);
	class_addmethod(c, (method)lydDacObject,			"multicore.signal",	A_OBJ, A_LONG, 0);
	class_addmethod(c, (method)lydDacAssist,			"assist",			A_CANT, 0); 
    class_addmethod(c, (method)object_obex_dumpout,		"dumpout",			A_CANT, 0);  
	
	CLASS_ATTR_LONG(c,		"sampleRate",	0,		LydDac,	obj);
	CLASS_ATTR_ACCESSORS(c,	"sampleRate",	lydDacGetSampleRate,	lydDacSetSampleRate);
	
	CLASS_ATTR_LONG(c,		"vectorSize",	0,		LydDac,	obj);
	CLASS_ATTR_ACCESSORS(c,	"vectorSize",	lydDacGetVectorSize,	lydDacSetVectorSize);
	
	class_register(_sym_box, c);
	sLydDacClass = c;
	return 0;
}


/************************************************************************************/
// Life Cycle

LydDacPtr lydDacNew(SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
    LydDacPtr	x = LydDacPtr(object_alloc(sLydDacClass));
	TTValue		v;
	TTErr		err;
	
    if(x){
		v.setSize(2);
		v.set(0, TT("multicore.output"));
		v.set(1, 2);
		err = TTObjectInstantiate(TT("multicore.object"), (TTObjectPtr*)&x->lydbaer, v);

		v = TTPtr(x->lydbaer);
		x->lydbaer->audioObject->sendMessage(TT("setOwner"), v);

		attr_args_process(x,argc,argv);
		object_obex_store((void *)x, _sym_dumpout, (object *)outlet_new(x,NULL));
	}
	return x;
}


void lydDacFree(LydDacPtr x)
{
	TTObjectRelease(x->lydbaer);
}


/************************************************************************************/
// Methods bound to input/inlets

// Method for Assistance Messages
void lydDacAssist(LydDacPtr x, void* b, long msg, long arg, char* dst)
{
	if(msg==1)			// Inlets
		strcpy(dst, "multichannel audio connection and control messages");		
	else if(msg==2)		// Outlets
		strcpy(dst, "dumpout");
}


TTErr lydDacReset(LydDacPtr x, long vectorSize)
{
	return x->lydbaer->resetSources(vectorSize);
}


TTErr lydDacObject(LydDacPtr x, MCoreObjectPtr audioSourceObject, long sourceOutletNumber)
{
	return x->lydbaer->addSource(audioSourceObject, sourceOutletNumber);
}


TTErr lydDacStart(LydDacPtr x)
{
	MaxErr		err;
	ObjectPtr	patcher = NULL;
	ObjectPtr	box = NULL;
	ObjectPtr	o = NULL;
	method		multicoreSetupMethod = NULL;
	long		vectorSize;
	
	x->lydbaer->audioObject->getAttributeValue(TT("vectorSize"), vectorSize);
	
	err = object_obex_lookup(x, gensym("#P"), &patcher);
	box = jpatcher_get_firstobject(patcher);
	while(box) {
		o = jbox_get_object(box);
		multicoreSetupMethod = zgetfn(o, gensym("multicore.reset"));
		if(multicoreSetupMethod)
			err = (MaxErr)multicoreSetupMethod(o, vectorSize);
		box = jbox_get_nextobject(box);
	}
	box = jpatcher_get_firstobject(patcher);
	while(box) {
		o = jbox_get_object(box);
		multicoreSetupMethod = zgetfn(o, gensym("multicore.setup"));
		if(multicoreSetupMethod)
			err = (MaxErr)multicoreSetupMethod(o);
		box = jbox_get_nextobject(box);
	}
		
	return x->lydbaer->audioObject->sendMessage(TT("start"));
}


TTErr lydDacStop(LydDacPtr x)
{	
	return x->lydbaer->audioObject->sendMessage(TT("stop"));
}



MaxErr lydDacSetSampleRate(LydDacPtr x, void* attr, AtomCount argc, AtomPtr argv)
{
	if(argc){
		long sr = atom_getlong(argv);
		x->lydbaer->audioObject->setAttributeValue(TT("sampleRate"), sr);
	}
	return MAX_ERR_NONE;
}

MaxErr lydDacGetSampleRate(LydDacPtr x, void* attr, AtomCount* argc, AtomPtr* argv)
{
	long sr;
	
	x->lydbaer->audioObject->getAttributeValue(TT("sampleRate"), sr);
	
	*argc = 1;
	if (!(*argv)) // otherwise use memory passed in
		*argv = (t_atom *)sysmem_newptr(sizeof(t_atom));
	atom_setlong(*argv, sr);
	return MAX_ERR_NONE;
}


MaxErr lydDacSetVectorSize(LydDacPtr x, void* attr, AtomCount argc, AtomPtr argv)
{
	if(argc){
		long vs = atom_getlong(argv);
		x->lydbaer->audioObject->setAttributeValue(TT("vectorSize"), vs);
	}
	return MAX_ERR_NONE;
}

MaxErr lydDacGetVectorSize(LydDacPtr x, void* attr, AtomCount* argc, AtomPtr* argv)
{
	long vs;
	
	x->lydbaer->audioObject->getAttributeValue(TT("vectorSize"), vs);
	
	*argc = 1;
	if (!(*argv)) // otherwise use memory passed in
		*argv = (t_atom *)sysmem_newptr(sizeof(t_atom));
	atom_setlong(*argv, vs);
	return MAX_ERR_NONE;
}


