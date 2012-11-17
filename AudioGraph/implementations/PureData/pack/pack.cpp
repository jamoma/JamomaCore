/* 
 *	in≈
 *	External object for Pd to Provide a source for TTAudioSignals usable by a Jamoma AudioGraph dsp chain.
 *	Copyright © 2010 by Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "PureAudioGraph.h"

// Data Structure for this object
struct In {
    Object					obj;
	TTAudioGraphObjectPtr	audioGraphObject;
	_outlet*				audioGraphObjectOutlet;
	t_float					f;						// dummy for signal in first inlet
	TTUInt32				maxNumChannels;			// the number of inlets or outlets, which is an argument at instantiation
	TTUInt32				numChannels;			// the actual number of channels to use, set by the dsp method
	TTUInt32				vectorSize;				// cached by the DSP method
};
typedef In* InPtr;


// Prototypes for methods
extern "C" void setup_jcom_pack0x3d(void);
InPtr	InNew(SymbolPtr msg, AtomCount argc, AtomPtr argv);
void	InFree(InPtr self);
TTErr	InReset(InPtr self, long vectorSize);
TTErr	InSetup(InPtr self);
TTErr	InObject(InPtr self, TTAudioGraphObjectPtr audioSourceObject);
t_int*	InPerform(t_int* w);
void	InDsp(InPtr self, t_signal** sp, short* count);


// Globals
static ClassPtr sInClass;


/************************************************************************************/
// Main() Function

void setup_jcom_pack0x3d(void)
{
	TTAudioGraphInit();	
	
	sInClass = class_new(gensym("jcom_pack="), (t_newmethod)InNew, (t_method)InFree, sizeof(In), 0, A_GIMME, 0);
	
	CLASS_MAINSIGNALIN(sInClass, In, f);
	class_addmethod(sInClass, (t_method)InReset,	gensym("audio.reset"),	A_CANT, 0);
	class_addmethod(sInClass, (t_method)InSetup,	gensym("audio.setup"),	A_CANT, 0);
 	class_addmethod(sInClass, (t_method)InDsp,		gensym("dsp"),				A_CANT, 0);		
		
	class_sethelpsymbol(sInClass, gensym("help-jcom_pack=.pd"));
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
		
		ttEnvironment->setAttributeValue(kTTSym_SampleRate, sr);

		v.setSize(3);
		v.set(0, TT("audio.generator"));
		v.set(1, 0); // no audio graph inlets (only pd audio inlets)
		v.set(2, 1); // one audio graph outlet
		err = TTObjectInstantiate(TT("audio.object"), (TTObjectPtr*)&self->audioGraphObject, v);
		self->audioGraphObject->addAudioFlag(kTTAudioGraphGenerator);

		if (!self->audioGraphObject->getUnitGenerator()) {
			error("in=: cannot load audio.generator");
			return NULL;
		}
		
		self->audioGraphObjectOutlet = outlet_new(SELF, gensym("audio.connect"));
	
		for (TTUInt16 i=1; i<self->maxNumChannels; i++)
			inlet_new(&self->obj, &self->obj.ob_pd, &s_signal, &s_signal);
		
		//self->obj.z_misc = Z_NO_INPLACE | Z_PUT_FIRST;
	}
	return self;
}


// Memory Deallocation
void InFree(InPtr self)
{
	TTObjectRelease((TTObjectPtr*)&self->audioGraphObject);
}


/************************************************************************************/
// Methods bound to input/inlets


TTErr InReset(InPtr self, long vectorSize)
{
	return self->audioGraphObject->resetAudio();
}


TTErr InSetup(InPtr self)
{
	Atom a[2];
	
	a[0].a_type = A_POINTER;
	a[1].a_type = A_POINTER;
	a[0].a_w.w_symbol = SymbolPtr(self->audioGraphObject);
	a[1].a_w.w_symbol = 0;
	
	outlet_anything(self->audioGraphObjectOutlet, gensym("audio.connect"), 2, a);
	return kTTErrNone;
}


// Perform (signal) Method
t_int* InPerform(t_int* w)
{
   	InPtr		self = (InPtr)(w[1]);
	TTUInt32	i;
	
	for (i=0; i < self->numChannels; i++)
		TTAudioGraphGeneratorPtr(self->audioGraphObject->getUnitGenerator())->mBuffer->setVector(i, self->vectorSize, (TTFloat32*)w[i+2]);

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

	self->audioGraphObject->setOutputNumChannels(0, self->maxNumChannels);
	self->audioGraphObject->getUnitGenerator()->setAttributeValue(TT("VectorSize"), self->vectorSize);
	self->audioGraphObject->getUnitGenerator()->setAttributeValue(TT("MaxNumChannels"), self->maxNumChannels);
	self->audioGraphObject->getUnitGenerator()->setAttributeValue(TT("SampleRate"), sp[0]->s_sr);

	dsp_addv(InPerform, k, (t_int*)audioVectors);
	free(audioVectors);
}
