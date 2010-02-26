/* 
 *	unpack>
 *	External object for Max/MSP to get Max values out of a Jamoma Graph.
 *	Copyright © 2010 by Timothy Place
 * 
 *	License: This code is licensed under the terms of the GNU LGPL
 *	http://www.gnu.org/licenses/lgpl.html 
 */

#include "maxGraph.h"


// Data Structure for this object
struct Unpack {
   	Object				obj;
	TTGraphObjectPtr	multicoreObject;
	TTPtr				outlet;
	SymbolPtr			attrUnpackerator;
	TTFloat32			attrUnpackerand;
};
typedef Unpack* UnpackPtr;


// Prototypes for methods
UnpackPtr	UnpackNew			(SymbolPtr msg, AtomCount argc, AtomPtr argv);
void   	UnpackFree			(UnpackPtr self);
void   	UnpackAssist		(UnpackPtr self, void* b, long msg, long arg, char* dst);
TTErr  	UnpackReset			(UnpackPtr self, long vectorSize);
TTErr  	UnpackSetup			(UnpackPtr self);
TTErr  	UnpackConnect		(UnpackPtr self, TTGraphObjectPtr audioSourceObject, long sourceOutletNumber);
MaxErr 	UnpackSetUnpackerator	(UnpackPtr self, void* attr, AtomCount argc, AtomPtr argv);
MaxErr 	UnpackSetUnpackerand	(UnpackPtr self, void* attr, AtomCount argc, AtomPtr argv);


// Globals
static ClassPtr sUnpackClass;


/************************************************************************************/
// Main() Function

int main(void)
{
	ClassPtr c;
	
	TTGraphInit();	
	common_symbols_init();
	
	c = class_new("jcom.unpack>", (method)UnpackNew, (method)UnpackFree, sizeof(Unpack), (method)0L, A_GIMME, 0);
	
	class_addmethod(c, (method)UnpackReset,				"multicore.reset",		A_CANT, 0);
	class_addmethod(c, (method)UnpackSetup,				"multicore.setup",		A_CANT, 0);
	class_addmethod(c, (method)UnpackConnect,			"multicore.connect",	A_OBJ, A_LONG, 0);
 	class_addmethod(c, (method)UnpackAssist,			"assist",				A_CANT, 0); 
    class_addmethod(c, (method)object_obex_dumpout,	"dumpout",				A_CANT, 0);  
	
	CLASS_ATTR_SYM(c,		"operator",	0,		Unpack,	attrUnpackerator);
	CLASS_ATTR_ACCESSORS(c,	"operator",	NULL,	UnpackSetUnpackerator);
	
	CLASS_ATTR_FLOAT(c,		"operand",	0,		Unpack,	attrUnpackerand);
	CLASS_ATTR_ACCESSORS(c,	"operand",	NULL,	UnpackSetUnpackerand);
	
	class_register(_sym_box, c);
	sUnpackClass = c;
	return 0;
}


/************************************************************************************/
// Object Creation Method

UnpackPtr UnpackNew(SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
    UnpackPtr	self;
	TTValue	v;
	TTErr	err;
	
    self = UnpackPtr(object_alloc(sUnpackClass));
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
void UnpackFree(UnpackPtr self)
{
	TTObjectRelease((TTObjectPtr*)&self->multicoreObject);
}


/************************************************************************************/
// Methods bound to input/inlets

// Method for Assistance Messages
void UnpackAssist(UnpackPtr self, void* b, long msg, long arg, char* dst)
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

TTErr UnpackReset(UnpackPtr self, long vectorSize)
{
	return self->multicoreObject->reset();
}


TTErr UnpackSetup(UnpackPtr self)
{
	Atom a[2];
	
	atom_setobj(a+0, ObjectPtr(self->multicoreObject));
	atom_setlong(a+1, 0);
	outlet_anything(self->outlet, gensym("multicore.connect"), 2, a);
	return kTTErrNone;
}


TTErr UnpackConnect(UnpackPtr self, TTGraphObjectPtr audioSourceObject, long sourceOutletNumber)
{
	return self->multicoreObject->connect(audioSourceObject, sourceOutletNumber);
}


// ATTRIBUTE SETTERS

MaxErr UnpackSetUnpackerator(UnpackPtr self, void* attr, AtomCount argc, AtomPtr argv)
{
	if (argc) {
		self->attrUnpackerator = atom_getsym(argv);
		self->multicoreObject->mUnitGenerator->setAttributeValue(TT("operator"), TT(self->attrUnpackerator->s_name));
	}
	return MAX_ERR_NONE;
}


MaxErr UnpackSetUnpackerand(UnpackPtr self, void* attr, AtomCount argc, AtomPtr argv)
{
	if (argc) {
		self->attrUnpackerand = atom_getfloat(argv);
		self->multicoreObject->mUnitGenerator->setAttributeValue(TT("operand"), self->attrUnpackerand);
	}
	return MAX_ERR_NONE;
}

