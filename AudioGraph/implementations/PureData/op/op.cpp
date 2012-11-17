/* 
 *	op≈
 *	External object for Pd to perform basic mathematical operations on objects in a Jamoma AudioGraph dsp chain.
 *	Copyright © 2010 by Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "PureAudioGraph.h"


// Data Structure for this object
struct Op {
   	Object					obj;
	TTAudioGraphObjectPtr	audioGraphObject;
	_outlet*				outlet;
	SymbolPtr				attrOperator;
	TTFloat32				attrOperand;
};
typedef Op* OpPtr;


// Prototypes for methods
extern "C" void setup_jcom_op0x3d(void);
OpPtr	OpNew			(SymbolPtr msg, AtomCount argc, AtomPtr argv);
void   	OpFree			(OpPtr self);
TTErr  	OpReset			(OpPtr self, long vectorSize);
TTErr  	OpSetup			(OpPtr self);
TTErr  	OpConnect		(OpPtr self, TTAudioGraphObjectPtr audioSourceObject, long sourceOutletNumber);
void 	OpSetOperator	(OpPtr self, SymbolPtr value);
void 	OpSetOperand	(OpPtr self, t_floatarg value);


// Globals
static ClassPtr sOpClass;


/************************************************************************************/
// Main() Function

void setup_jcom_op0x3d(void)
{
	TTAudioGraphInit();	
	
	sOpClass = class_new(gensym("jcom_op="), (t_newmethod)OpNew, (t_method)OpFree, sizeof(Op), 0, A_GIMME, 0);
	
	class_addmethod(sOpClass, (t_method)OpReset,		gensym("audio.reset"),		A_CANT, 0);
	class_addmethod(sOpClass, (t_method)OpSetup,		gensym("audio.setup"),		A_CANT, 0);
	class_addmethod(sOpClass, (t_method)OpConnect,		gensym("audio.connect"),	A_POINTER, A_POINTER, 0);
	class_addmethod(sOpClass, (t_method)OpSetOperator,	gensym("operator"),				A_SYMBOL, 0);
	class_addmethod(sOpClass, (t_method)OpSetOperand,	gensym("operand"),				A_FLOAT, 0);
		
	class_sethelpsymbol(sOpClass, gensym("help-jcom_op=.pd"));
}


/************************************************************************************/
// Object Creation Method

OpPtr OpNew(SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
    OpPtr	self;
	TTValue	v;
	TTErr	err;
	
    self = OpPtr(pd_new(sOpClass));
    if (self) {
 		self->outlet = outlet_new(SELF, gensym("audio.connect"));
		
		v.setSize(2);
		v.set(0, TT("operator"));
		v.set(1, TTUInt32(1));
		err = TTObjectInstantiate(TT("audio.object"), (TTObjectPtr*)&self->audioGraphObject, v);

		if (!self->audioGraphObject->getUnitGenerator()) {
			error("op≈: cannot load Jamoma DSP object");
			return NULL;
		}
	}
	return self;
}


// Memory Deallocation
void OpFree(OpPtr self)
{
	TTObjectRelease((TTObjectPtr*)&self->audioGraphObject);
}


/************************************************************************************/
// Methods bound to input/inlets


TTErr OpReset(OpPtr self, long vectorSize)
{
	return self->audioGraphObject->resetAudio();
}


TTErr OpSetup(OpPtr self)
{
	Atom a[2];
	
	a[0].a_type = A_POINTER;
	a[1].a_type = A_POINTER;
	a[0].a_w.w_symbol = SymbolPtr(self->audioGraphObject);
	a[1].a_w.w_symbol = 0;
	
	outlet_anything(self->outlet, gensym("audio.connect"), 2, a);
	return kTTErrNone;
}


TTErr OpConnect(OpPtr self, TTAudioGraphObjectPtr audioSourceObject, TTPtrSizedInt sourceOutletNumber)
{
	return self->audioGraphObject->connectAudio(audioSourceObject, sourceOutletNumber);
}


// ATTRIBUTE SETTERS

void OpSetOperator(OpPtr self, SymbolPtr value)
{
	self->attrOperator = value;
	self->audioGraphObject->getUnitGenerator()->setAttributeValue(TT("Operator"), TT(self->attrOperator->s_name));
}


void OpSetOperand(OpPtr self, t_floatarg value)
{
	self->attrOperand = value;
	self->audioGraphObject->getUnitGenerator()->setAttributeValue(TT("Operand"), self->attrOperand);
}

