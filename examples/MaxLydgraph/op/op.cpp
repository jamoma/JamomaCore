/* 
 *	op≈
 *	External object for Max/MSP to perform basic mathematical operations on objects in a lydbær dsp chain.
 *	Copyright © 2008 by Timothy Place
 * 
 *	License: This code is licensed under the terms of the GNU LGPL
 *	http://www.gnu.org/licenses/lgpl.html 
 */

#include "maxbaer.h"


// Data Structure for this object
struct LydOp {
    t_object			obj;
	LydbaerObjectPtr	lydbaer;
	void*				lydbaerOutlet;
	SymbolPtr			attrOperator;
	TTFloat32			attrOperand;
};
typedef LydOp* LydOpPtr;


// Prototypes for methods
LydOpPtr	lydOpNew(SymbolPtr msg, AtomCount argc, AtomPtr argv);
void		lydOpFree(LydOpPtr x);
void		lydOpAssist(LydOpPtr x, void* b, long msg, long arg, char* dst);
TTErr		lydOpReset(LydOpPtr x, long vectorSize);
TTErr		lydOpSetup(LydOpPtr x);
TTErr		lydOpObject(LydOpPtr x, LydbaerObjectPtr audioSourceObject, long sourceOutletNumber);
MaxErr		lydOpSetOperator(LydOpPtr x, void *attr, AtomCount argc, AtomPtr argv);
MaxErr		lydOpSetOperand(LydOpPtr x, void *attr, AtomCount argc, AtomPtr argv);


// Globals
static ClassPtr sLydOpClass;


/************************************************************************************/
// Main() Function

int main(void)
{
	t_class *c;
	
	TTBlueInit();	
	common_symbols_init();
	
	c = class_new("op≈", (method)lydOpNew, (method)lydOpFree, sizeof(LydOp), (method)0L, A_GIMME, 0);
	
	class_addmethod(c, (method)lydOpReset,				"lydbaerReset",		A_CANT, 0);
	class_addmethod(c, (method)lydOpSetup,				"lydbaerSetup",		A_CANT, 0);
	class_addmethod(c, (method)lydOpObject,				"lydbaerObject",	A_OBJ, A_LONG, 0);
 	class_addmethod(c, (method)lydOpAssist,				"assist",			A_CANT, 0); 
    class_addmethod(c, (method)object_obex_dumpout,		"dumpout",			A_CANT, 0);  
	
	CLASS_ATTR_SYM(c,		"operator",	0,		LydOp,	attrOperator);
	CLASS_ATTR_ACCESSORS(c,	"operator",	NULL,	lydOpSetOperator);
	
	CLASS_ATTR_FLOAT(c,		"operand",	0,		LydOp,	attrOperand);
	CLASS_ATTR_ACCESSORS(c,	"operand",	NULL,	lydOpSetOperand);
	
	class_register(_sym_box, c);
	sLydOpClass = c;
	return 0;
}


/************************************************************************************/
// Object Creation Method

LydOpPtr lydOpNew(SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
    LydOpPtr	x;
	
    x = LydOpPtr(object_alloc(sLydOpClass));
    if(x){
    	object_obex_store((void *)x, _sym_dumpout, (object *)outlet_new(x,NULL));	// dumpout	
		x->lydbaerOutlet = outlet_new(x, 0);
		
		// TODO: we need to update objects to work with the correct number of channels when the network is configured
		// Either that, or when we pull we just up the number of channels if when we need to ???
		x->lydbaer = new LydbaerObject(TT("operator"), 8);
		if(!x->lydbaer->audioObject){
			object_error(ObjectPtr(x), "cannot load TTBlue object");
			return NULL;
		}
		
		attr_args_process(x,argc,argv);
	}
	return x;
}

// Memory Deallocation
void lydOpFree(LydOpPtr x)
{
	delete x->lydbaer;
}


/************************************************************************************/
// Methods bound to input/inlets

// Method for Assistance Messages
void lydOpAssist(LydOpPtr x, void* b, long msg, long arg, char* dst)
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


// METHODS SPECIFIC TO LYDBAER EXTERNALS

TTErr lydOpReset(LydOpPtr x, long vectorSize)
{
	return x->lydbaer->resetSources(vectorSize);
}


TTErr lydOpSetup(LydOpPtr x)
{
	Atom a[2];
	
	atom_setobj(a+0, ObjectPtr(x->lydbaer));
	atom_setlong(a+1, 0);
	outlet_anything(x->lydbaerOutlet, gensym("lydbaerObject"), 2, a);
	return kTTErrNone;
}


TTErr lydOpObject(LydOpPtr x, LydbaerObjectPtr audioSourceObject, long sourceOutletNumber)
{
	return x->lydbaer->addSource(audioSourceObject, sourceOutletNumber);
}


// ATTRIBUTE SETTERS

MaxErr lydOpSetOperator(LydOpPtr x, void *attr, AtomCount argc, AtomPtr argv)
{
	if(argc){
		x->attrOperator = atom_getsym(argv);
		x->lydbaer->audioObject->setAttributeValue(TT("operator"), TT(x->attrOperator->s_name));
	}
	return MAX_ERR_NONE;
}


MaxErr lydOpSetOperand(LydOpPtr x, void *attr, AtomCount argc, AtomPtr argv)
{
	if(argc){
		x->attrOperand = atom_getfloat(argv);
		x->lydbaer->audioObject->setAttributeValue(TT("operand"), x->attrOperand);
	}
	return MAX_ERR_NONE;
}

