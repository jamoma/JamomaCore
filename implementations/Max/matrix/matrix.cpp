/* 
 *	matrix≈
 *	External object for Jamoma Multicore
 *	Copyright © 2009 by Timothy Place
 * 
 *	License: This code is licensed under the terms of the GNU LGPL
 *	http://www.gnu.org/licenses/lgpl.html 
 */

#include "maxMulticore.h"

const TTUInt16 kMaxNumSignals = 256;

struct MMatrix {
    Object				obj;
	MCoreObjectPtr		multicore;
	TTPtr				inlets[kMaxNumSignals];
	TTPtr				outlets[kMaxNumSignals];
	SymbolPtr			attrOperator;
	TTFloat32			attrOperand;
	TTUInt16			numInputs;
	TTUInt16			numOutputs;
};
typedef MMatrix* MMatrixPtr;


// Prototypes for methods
MMatrixPtr	mmatrixNew(SymbolPtr msg, AtomCount argc, AtomPtr argv);
void		mmatrixFree(MMatrixPtr x);
void		mmatrixAssist(MMatrixPtr x, void* b, long msg, long arg, char* dst);
TTErr		mmatrixReset(MMatrixPtr x, long vectorSize);
TTErr		mmatrixSetup(MMatrixPtr x);
TTErr		mmatrixObject(MMatrixPtr x, MCoreObjectPtr audioSourceObject, long sourceOutletNumber);
void		mmatrixClear(MMatrixPtr x);
void		mmatrixSetGain(MMatrixPtr x, SymbolPtr msg, AtomCount argc, AtomPtr argv);
void		mmatrixSetLinearGain(MMatrixPtr x, SymbolPtr msg, AtomCount argc, AtomPtr argv);
void		mmatrixSetMidiGain(MMatrixPtr x, SymbolPtr msg, AtomCount argc, AtomPtr argv);

// Globals
static ClassPtr sMMatrixClass;


/************************************************************************************/
// Main() Function

int main(void)
{
	t_class *c;
	
	MCoreInit();	
	common_symbols_init();
	
	c = class_new("matrix≈", (method)mmatrixNew, (method)mmatrixFree, sizeof(MMatrix), (method)0L, A_GIMME, 0);
	
	class_addmethod(c, (method)mmatrixReset,			"multicore.reset",		A_CANT, 0);
	class_addmethod(c, (method)mmatrixSetup,			"multicore.setup",		A_CANT, 0);
	class_addmethod(c, (method)mmatrixObject,			"multicore.signal",		A_OBJ, A_LONG, 0);
	class_addmethod(c, (method)mmatrixClear,			"clear",				0);
	class_addmethod(c, (method)mmatrixSetGain,			"setGain",				A_GIMME, 0);
	class_addmethod(c, (method)mmatrixSetLinearGain,	"setLinearGain",		A_GIMME, 0);
	class_addmethod(c, (method)mmatrixSetMidiGain,		"setMidiGain",			A_GIMME, 0);
 	class_addmethod(c, (method)mmatrixAssist,			"assist",				A_CANT, 0); 
    class_addmethod(c, (method)object_obex_dumpout,		"dumpout",				A_CANT, 0);  
		
	class_register(_sym_box, c);
	sMMatrixClass = c;
	return 0;
}


/************************************************************************************/
// Object Creation Method

// initial two args determine the number of inputs and outputs
MMatrixPtr mmatrixNew(SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
    MMatrixPtr	x;
	TTValue		v;
	TTErr		err;
	long		i;
	long		numInputs = 4;
	long		numOutputs = 4;
	long		attrstart = attr_args_offset(argc, argv);
	
	atom_arg_getlong(&numInputs, 0, attrstart, argv);
	atom_arg_getlong(&numOutputs, 1, attrstart, argv+1);
	
    x = MMatrixPtr(object_alloc(sMMatrixClass));
    if(x){
    	object_obex_store((void *)x, _sym_dumpout, (object *)outlet_new(x,NULL));	// dumpout
		for(i=numOutputs-1; i>=0; i--)
			x->outlets[i] = outlet_new(x, "multicore.signal");
		for(i=numInputs-1; i >= 1; i--)
			x->inlets[i] = proxy_new(x, i+1, NULL);

		x->numInputs = numInputs;
		x->numOutputs = numOutputs;
		
		v.setSize(2);
		v.set(0, TT("matrixmixer"));
		v.set(1, numInputs>numOutputs ? numInputs : numOutputs);
		err = TTObjectInstantiate(TT("multicore.object"), (TTObjectPtr*)&x->multicore, v);
		
		if(!x->multicore->audioObject){
			object_error(ObjectPtr(x), "Cannot load matrixmixer DSP object.");
			return NULL;
		}
		
		attr_args_process(x,argc,argv);
	}
	return x;
}

// Memory Deallocation
void mmatrixFree(MMatrixPtr x)
{
	TTObjectRelease(x->multicore);
	
	for(TTUInt16 i=0; i<x->numInputs-1; i++)
		object_free(x->inlets[i]);
}


/************************************************************************************/
// Methods bound to input/inlets

// Method for Assistance Messages
void mmatrixAssist(MMatrixPtr x, void* b, long msg, long arg, char* dst)
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

TTErr mmatrixReset(MMatrixPtr x, long vectorSize)
{
	return x->multicore->resetSources(vectorSize);
}


TTErr mmatrixSetup(MMatrixPtr x)
{
	Atom a[2];
	
	atom_setobj(a+0, ObjectPtr(x->multicore));
	for(int i=0; i < x->numOutputs; i++){
		atom_setlong(a+1, i);
		outlet_anything(x->outlets[i], gensym("multicore.signal"), 2, a);
	}
	return kTTErrNone;
}


TTErr mmatrixObject(MMatrixPtr x, MCoreObjectPtr audioSourceObject, long sourceOutletNumber)
{
	long inletNumber = proxy_getinlet(ObjectPtr(x));
//	return x->multicore->addSource(audioSourceObject, sourceOutletNumber);
	return x->multicore->addSource(audioSourceObject, sourceOutletNumber, inletNumber);
}


// MESSAGES TO CLIENT

void mmatrixClear(MMatrixPtr x)
{
	x->multicore->audioObject->sendMessage(kTTSym_clear);
}


void mmatrixSetGain(MMatrixPtr x, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	if(argc == 3){
		TTValue v;
		
		v.setSize(3);
		v.set(0, atom_getlong(argv+0));
		v.set(1, atom_getlong(argv+1));
		v.set(2, atom_getfloat(argv+2));
		x->multicore->audioObject->sendMessage(TT("setGain"), v);
	}
	else
		object_error(ObjectPtr(x), "wrong number of args to set gain");
}


void mmatrixSetLinearGain(MMatrixPtr x, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	if(argc == 3){
		TTValue v;
		
		v.setSize(3);
		v.set(0, atom_getlong(argv+0));
		v.set(1, atom_getlong(argv+1));
		v.set(2, atom_getfloat(argv+2));
		x->multicore->audioObject->sendMessage(TT("setLinearGain"), v);
	}
	else
		object_error(ObjectPtr(x), "wrong number of args to set gain");
}


void mmatrixSetMidiGain(MMatrixPtr x, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	if(argc == 3){
		TTValue v;
		
		v.setSize(3);
		v.set(0, atom_getlong(argv+0));
		v.set(1, atom_getlong(argv+1));
		v.set(2, atom_getfloat(argv+2));
		x->multicore->audioObject->sendMessage(TT("setMidiGain"), v);
	}
	else
		object_error(ObjectPtr(x), "wrong number of args to set gain");
}

