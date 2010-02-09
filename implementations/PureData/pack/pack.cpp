/* 
 *	in≈
 *	External object for Pd to Provide a source for TTAudioSignals usable by a Jamoma Multicore dsp chain.
 *	Copyright © 2010 by Timothy Place
 * 
 *	License: This code is licensed under the terms of the GNU LGPL
 *	http://www.gnu.org/licenses/lgpl.html 
 */

#include "PureMulticore.h"

// Data Structure for this object
struct In {
    Object					obj;
	TTMulticoreObjectPtr	multicoreObject;
	_outlet*				multicoreObjectOutlet;
	t_float					f;						// dummy for signal in first inlet
	TTUInt32				maxNumChannels;			// the number of inlets or outlets, which is an argument at instantiation
	TTUInt32				numChannels;			// the actual number of channels to use, set by the dsp method
	TTUInt32				vectorSize;				// cached by the DSP method
};
typedef In* InPtr;


// Prototypes for methods
extern "C" void setup_in0x3d(void);
InPtr	InNew(SymbolPtr msg, AtomCount argc, AtomPtr argv);
void	InFree(InPtr self);
TTErr	InReset(InPtr self, long vectorSize);
TTErr	InSetup(InPtr self);
TTErr	InObject(InPtr self, TTMulticoreObjectPtr audioSourceObject);
t_int*	InPerform(t_int* w);
void	InDsp(InPtr self, t_signal** sp, short* count);


// Globals
static ClassPtr sInClass;


/************************************************************************************/
// Main() Function

void setup_in0x3d(void)
{
	TTMulticoreInit();	
	
	sInClass = class_new(gensym("jcom.pack="), (t_newmethod)InNew, (t_method)InFree, sizeof(In), 0, A_GIMME, 0);
	
	CLASS_MAINSIGNALIN(sInClass, In, f);
	class_addmethod(sInClass, (t_method)InReset,	gensym("multicore.reset"),	A_CANT, 0);
	class_addmethod(sInClass, (t_method)InSetup,	gensym("multicore.setup"),	A_CANT, 0);
 	class_addmethod(sInClass, (t_method)InDsp,		gensym("dsp"),				A_CANT, 0);		
		
	class_sethelpsymbol(sInClass, gensym("help-jcom.pack=.pd"));
}


/************************************************************************************/
// Object Creation Method

InPtr InNew(SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
    InPtr	self;
	TTValue	sr(sys_getsr());
	TTValue	v;
	TTErr	err;
	
    self = InPtr(pd_new(sInClass));
    if (self) {
		self->maxNumChannels = 2;
		if (argc && argv)
			self->maxNumChannels = atom_getfloat(argv) + 0.1;
		
		ttEnvironment->setAttributeValue(kTTSym_sr, sr);

		v.setSize(3);
		v.set(0, TT("multicore.generator"));
		v.set(1, 0); // no multicore inlets (only msp inlets)
		v.set(2, 1); // one multicore outlet
		err = TTObjectInstantiate(TT("multicore.object"), (TTObjectPtr*)&self->multicoreObject, v);
		self->multicoreObject->addFlag(kTTMulticoreGenerator);

		if (!self->multicoreObject->mUnitGenerator) {
			error("in=: cannot load multicore.source");
			return NULL;
		}
		
		self->multicoreObjectOutlet = outlet_new(SELF, gensym("multicore.connect"));
	
		// TODO: how do we get N inlets?
		//dsp_setup(SELF, self->maxNumChannels);
		
		//self->obj.z_misc = Z_NO_INPLACE | Z_PUT_FIRST;
	}
	return self;
}


// Memory Deallocation
void InFree(InPtr self)
{
	TTObjectRelease((TTObjectPtr*)&self->multicoreObject);
}


/************************************************************************************/
// Methods bound to input/inlets


TTErr InReset(InPtr self, long vectorSize)
{
	return self->multicoreObject->reset();
}


TTErr InSetup(InPtr self)
{
	Atom a[2];
	
	a[0].a_type = A_POINTER;
	a[1].a_type = A_POINTER;
	a[0].a_w.w_symbol = SymbolPtr(self->multicoreObject);
	a[1].a_w.w_symbol = 0;

	outlet_anything(self->multicoreObjectOutlet, gensym("multicore.connect"), 2, a);
	return kTTErrNone;
}


// Perform (signal) Method
t_int* InPerform(t_int* w)
{
   	InPtr		self = (InPtr)(w[1]);
	TTUInt32	i;
	
	for (i=0; i < self->numChannels; i++)
		TTMulticoreGeneratorPtr(self->multicoreObject->mUnitGenerator)->mBuffer->setVector(i, self->vectorSize, (TTFloat32*)w[i+2]);

	return w + (self->numChannels+2);
}


// DSP Method
void InDsp(InPtr self, t_signal** sp, short* count)
{
	TTUInt16	i, k=0;
	void		**audioVectors = NULL;
	
	self->vectorSize = sp[0]->s_n;
	
	// Setup the perform method
	audioVectors = (void**)malloc(sizeof(void*) * (self->maxNumChannels + 1));
	audioVectors[k] = self;
	k++;
	
	self->numChannels = 0;
	for (i=0; i < self->maxNumChannels; i++) {
		self->numChannels++;				
		audioVectors[k] = sp[i]->s_vec;
		k++;
	}
	
	self->multicoreObject->setOutputNumChannels(0, self->maxNumChannels);
	self->multicoreObject->mUnitGenerator->setAttributeValue(TT("VectorSize"), self->vectorSize);
	self->multicoreObject->mUnitGenerator->setAttributeValue(kTTSym_maxNumChannels, self->maxNumChannels);
	self->multicoreObject->mUnitGenerator->setAttributeValue(TT("sr"), sp[0]->s_sr);
	
	dsp_addv(InPerform, k, (t_int*)audioVectors);
	free(audioVectors);
}

