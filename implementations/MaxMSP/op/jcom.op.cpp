/* 
 *	op≈
 *	External object for Max/MSP to perform basic mathematical operations on objects in a Jamoma Multicore dsp chain.
 *	Copyright © 2008 by Timothy Place
 * 
 *	License: This code is licensed under the terms of the GNU LGPL
 *	http://www.gnu.org/licenses/lgpl.html 
 */

#include "maxMulticore.h"


// Data Structure for this object
struct Op {
   	Object					obj;
	TTMulticoreObjectPtr	multicoreObject;
	TTPtr					outlet;
	SymbolPtr				attrOperator;
	TTFloat32				attrOperand;
};
typedef Op* OpPtr;


// Prototypes for methods
OpPtr	OpNew			(SymbolPtr msg, AtomCount argc, AtomPtr argv);
void   	OpFree			(OpPtr self);
void   	OpAssist		(OpPtr self, void* b, long msg, long arg, char* dst);
TTErr  	OpReset			(OpPtr self, long vectorSize);
TTErr  	OpSetup			(OpPtr self);
TTErr  	OpConnect		(OpPtr self, TTMulticoreObjectPtr audioSourceObject, long sourceOutletNumber);
MaxErr 	OpSetOperator	(OpPtr self, void* attr, AtomCount argc, AtomPtr argv);
MaxErr 	OpSetOperand	(OpPtr self, void* attr, AtomCount argc, AtomPtr argv);


// Globals
static ClassPtr sOpClass;


/************************************************************************************/
// Main() Function

int main(void)
{
	ClassPtr c;
	
	TTMulticoreInit();	
	common_symbols_init();
	
	c = class_new("jcom.op≈", (method)OpNew, (method)OpFree, sizeof(Op), (method)0L, A_GIMME, 0);
	
	class_addmethod(c, (method)OpReset,				"multicore.reset",		A_CANT, 0);
	class_addmethod(c, (method)OpSetup,				"multicore.setup",		A_CANT, 0);
	class_addmethod(c, (method)OpConnect,			"multicore.connect",	A_OBJ, A_LONG, 0);
 	class_addmethod(c, (method)OpAssist,			"assist",				A_CANT, 0); 
    class_addmethod(c, (method)object_obex_dumpout,	"dumpout",				A_CANT, 0);  
	
	CLASS_ATTR_SYM(c,		"operator",	0,		Op,	attrOperator);
	CLASS_ATTR_ACCESSORS(c,	"operator",	NULL,	OpSetOperator);
	
	CLASS_ATTR_FLOAT(c,		"operand",	0,		Op,	attrOperand);
	CLASS_ATTR_ACCESSORS(c,	"operand",	NULL,	OpSetOperand);
	
	class_register(_sym_box, c);
	sOpClass = c;
	return 0;
}


/************************************************************************************/
// Object Creation Method

OpPtr OpNew(SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
    OpPtr	self;
	TTValue	v;
	TTErr	err;
	
    self = OpPtr(object_alloc(sOpClass));
    if (self) {
    	object_obex_store((void*)self, _sym_dumpout, (ObjectPtr)outlet_new(self, NULL));	// dumpout	
		self->outlet = outlet_new(self, "multicore.connect");
		
		v.setSize(2);
		v.set(0, TT("operator"));
		v.set(1, TTUInt32(1));
		err = TTObjectInstantiate(TT("multicore.object"), (TTObjectPtr*)&self->multicoreObject, v);

		if (!self->multicoreObject->mUnitGenerator) {
			object_error(SELF, "cannot load Jamoma DSP object");
			return NULL;
		}
		
		attr_args_process(self, argc, argv);
	}
	return self;
}


// Memory Deallocation
void OpFree(OpPtr self)
{
	TTObjectRelease((TTObjectPtr*)&self->multicoreObject);
}


/************************************************************************************/
// Methods bound to input/inlets

// Method for Assistance Messages
void OpAssist(OpPtr self, void* b, long msg, long arg, char* dst)
{
	if (msg==1)			// Inlets
		strcpy (dst, "multichannel input and control messages");		
	else if (msg==2){	// Outlets
		if (arg == 0)
			strcpy(dst, "multichannel output");
		else
			strcpy(dst, "dumpout");
	}
}


// METHODS SPECIFIC TO MULTICORE EXTERNALS

TTErr OpReset(OpPtr self, long vectorSize)
{
	return self->multicoreObject->reset();
}


TTErr OpSetup(OpPtr self)
{
	Atom a[2];
	
	atom_setobj(a+0, ObjectPtr(self->multicoreObject));
	atom_setlong(a+1, 0);
	outlet_anything(self->outlet, gensym("multicore.connect"), 2, a);
	return kTTErrNone;
}


TTErr OpConnect(OpPtr self, TTMulticoreObjectPtr audioSourceObject, long sourceOutletNumber)
{
	return self->multicoreObject->connect(audioSourceObject, sourceOutletNumber);
}


// ATTRIBUTE SETTERS

MaxErr OpSetOperator(OpPtr self, void* attr, AtomCount argc, AtomPtr argv)
{
	if (argc) {
		self->attrOperator = atom_getsym(argv);
		self->multicoreObject->mUnitGenerator->setAttributeValue(TT("operator"), TT(self->attrOperator->s_name));
	}
	return MAX_ERR_NONE;
}


MaxErr OpSetOperand(OpPtr self, void* attr, AtomCount argc, AtomPtr argv)
{
	if (argc) {
		self->attrOperand = atom_getfloat(argv);
		self->multicoreObject->mUnitGenerator->setAttributeValue(TT("operand"), self->attrOperand);
	}
	return MAX_ERR_NONE;
}

