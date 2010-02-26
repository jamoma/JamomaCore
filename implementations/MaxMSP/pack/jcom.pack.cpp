/* 
 *	pack>
 *	External object for Max/MSP to bring Max values into a Jamoma Graph.
 *	Copyright © 2010 by Timothy Place
 * 
 *	License: This code is licensed under the terms of the GNU LGPL
 *	http://www.gnu.org/licenses/lgpl.html 
 */

#include "maxGraph.h"


// Data Structure for this object
struct Pack {
   	Object				obj;
	TTGraphObjectPtr	multicoreObject;
	TTPtr				outlet;
	SymbolPtr			attrPackerator;
	TTFloat32			attrPackerand;
};
typedef Pack* PackPtr;


// Prototypes for methods
PackPtr	PackNew			(SymbolPtr msg, AtomCount argc, AtomPtr argv);
void   	PackFree			(PackPtr self);
void   	PackAssist		(PackPtr self, void* b, long msg, long arg, char* dst);
TTErr  	PackReset			(PackPtr self, long vectorSize);
TTErr  	PackSetup			(PackPtr self);
TTErr  	PackConnect		(PackPtr self, TTGraphObjectPtr audioSourceObject, long sourceOutletNumber);
MaxErr 	PackSetPackerator	(PackPtr self, void* attr, AtomCount argc, AtomPtr argv);
MaxErr 	PackSetPackerand	(PackPtr self, void* attr, AtomCount argc, AtomPtr argv);


// Globals
static ClassPtr sPackClass;


/************************************************************************************/
// Main() Function

int main(void)
{
	ClassPtr c;
	
	TTGraphInit();	
	common_symbols_init();
	
	c = class_new("jcom.pack>", (method)PackNew, (method)PackFree, sizeof(Pack), (method)0L, A_GIMME, 0);
	
	class_addmethod(c, (method)PackReset,				"multicore.reset",		A_CANT, 0);
	class_addmethod(c, (method)PackSetup,				"multicore.setup",		A_CANT, 0);
	class_addmethod(c, (method)PackConnect,			"multicore.connect",	A_OBJ, A_LONG, 0);
 	class_addmethod(c, (method)PackAssist,			"assist",				A_CANT, 0); 
    class_addmethod(c, (method)object_obex_dumpout,	"dumpout",				A_CANT, 0);  
	
	CLASS_ATTR_SYM(c,		"operator",	0,		Pack,	attrPackerator);
	CLASS_ATTR_ACCESSORS(c,	"operator",	NULL,	PackSetPackerator);
	
	CLASS_ATTR_FLOAT(c,		"operand",	0,		Pack,	attrPackerand);
	CLASS_ATTR_ACCESSORS(c,	"operand",	NULL,	PackSetPackerand);
	
	class_register(_sym_box, c);
	sPackClass = c;
	return 0;
}


/************************************************************************************/
// Object Creation Method

PackPtr PackNew(SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
    PackPtr	self;
	TTValue	v;
	TTErr	err;
	
    self = PackPtr(object_alloc(sPackClass));
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
void PackFree(PackPtr self)
{
	TTObjectRelease((TTObjectPtr*)&self->multicoreObject);
}


/************************************************************************************/
// Methods bound to input/inlets

// Method for Assistance Messages
void PackAssist(PackPtr self, void* b, long msg, long arg, char* dst)
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

TTErr PackReset(PackPtr self, long vectorSize)
{
	return self->multicoreObject->reset();
}


TTErr PackSetup(PackPtr self)
{
	Atom a[2];
	
	atom_setobj(a+0, ObjectPtr(self->multicoreObject));
	atom_setlong(a+1, 0);
	outlet_anything(self->outlet, gensym("multicore.connect"), 2, a);
	return kTTErrNone;
}


TTErr PackConnect(PackPtr self, TTGraphObjectPtr audioSourceObject, long sourceOutletNumber)
{
	return self->multicoreObject->connect(audioSourceObject, sourceOutletNumber);
}


// ATTRIBUTE SETTERS

MaxErr PackSetPackerator(PackPtr self, void* attr, AtomCount argc, AtomPtr argv)
{
	if (argc) {
		self->attrPackerator = atom_getsym(argv);
		self->multicoreObject->mUnitGenerator->setAttributeValue(TT("operator"), TT(self->attrPackerator->s_name));
	}
	return MAX_ERR_NONE;
}


MaxErr PackSetPackerand(PackPtr self, void* attr, AtomCount argc, AtomPtr argv)
{
	if (argc) {
		self->attrPackerand = atom_getfloat(argv);
		self->multicoreObject->mUnitGenerator->setAttributeValue(TT("operand"), self->attrPackerand);
	}
	return MAX_ERR_NONE;
}

