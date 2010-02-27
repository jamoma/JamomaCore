/* 
 *	unpack>
 *	External object for Max/MSP to perform basic mathematical operations on objects in a Jamoma Graph.
 *	Copyright © 2010 by Timothy Place
 * 
 *	License: This code is licensed under the terms of the GNU LGPL
 *	http://www.gnu.org/licenses/lgpl.html 
 */

#include "maxGraph.h"


// Data Structure for this object
struct Unpack {
   	Object				obj;
	TTGraphObjectPtr	graphObject;
	TTPtr				outlet;
	TTObjectPtr			callback;		// TTCallback object that attaches to the graphObject to be notified when there is new data to output.
};
typedef Unpack* UnpackPtr;


// Prototypes for methods
UnpackPtr	UnpackNew			(SymbolPtr msg, AtomCount argc, AtomPtr argv);
void   		UnpackFree			(UnpackPtr self);
void   		UnpackAssist		(UnpackPtr self, void* b, long msg, long arg, char* dst);


// Globals
static ClassPtr sUnpackClass;


/************************************************************************************/
// Main() Function

int main(void)
{
	ClassPtr c;
	
	TTGraphInit();	
	common_symbols_init();
	
	c = class_new("jcom.op>", (method)UnpackNew, (method)UnpackFree, sizeof(Unpack), (method)0L, A_GIMME, 0);
	
	class_addmethod(c, (method)MaxGraphReset,		"graph.reset",		A_CANT, 0);
	class_addmethod(c, (method)MaxGraphSetup,		"graph.setup",		A_CANT, 0);
	class_addmethod(c, (method)MaxGraphConnect,		"graph.connect",	A_OBJ, A_LONG, 0);
	class_addmethod(c, (method)MaxGraphDrop,		"graph.drop",		A_CANT, 0);
 	class_addmethod(c, (method)MaxGraphObject,		"graph.object",		A_CANT, 0);

	class_addmethod(c, (method)UnpackAssist,		"assist",			A_CANT, 0); 
    class_addmethod(c, (method)object_obex_dumpout,	"dumpout",			A_CANT, 0);  
	
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
		self->outlet = outlet_new(self, "graph.connect");
		
		v.setSize(2);
		v.set(0, TT("graph.output"));
		v.set(1, TTUInt32(1));
		err = TTObjectInstantiate(TT("graph.object"), (TTObjectPtr*)&self->graphObject, v);
		
		if (!self->graphObject->mUnitGenerator) {
			object_error(SELF, "cannot load Jamoma object");
			return NULL;
		}
		
		err = TTObjectInstantiate(TT("TTCallback"), (TTObjectPtr*)&self->callback, v);
		#error register our callback function here
		#error make the graph.output object, and make sure if gives notifications
		
		attr_args_process(self, argc, argv);
	}
	return self;
}


// Memory Deallocation
void UnpackFree(UnpackPtr self)
{
	TTObjectRelease((TTObjectPtr*)&self->graphObject);
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

