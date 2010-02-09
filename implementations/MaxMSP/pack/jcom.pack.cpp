/* 
 *	in≈
 *	External object for Max/MSP to Provide a source for TTAudioSignals usable by a Jamoma Multicore dsp chain.
 *	Copyright © 2008 by Timothy Place
 * 
 *	License: This code is licensed under the terms of the GNU LGPL
 *	http://www.gnu.org/licenses/lgpl.html 
 */

#include "maxMulticore.h"

// Data Structure for this object
struct In {
    t_pxobject				obj;
	TTMulticoreObjectPtr	multicoreObject;
	TTPtr					multicoreObjectOutlet;
	TTUInt32				maxNumChannels;			// the number of inlets or outlets, which is an argument at instantiation
	TTUInt32				numChannels;			// the actual number of channels to use, set by the dsp method
	TTUInt32				vectorSize;				// cached by the DSP method
};
typedef In* InPtr;


// Prototypes for methods
InPtr	InNew(SymbolPtr msg, AtomCount argc, AtomPtr argv);
void	InFree(InPtr self);
void	InAssist(InPtr self, void* b, long msg, long arg, char* dst);
TTErr	InReset(InPtr self, long vectorSize);
TTErr	InSetup(InPtr self);
TTErr	InObject(InPtr self, TTMulticoreObjectPtr audioSourceObject);
t_int*	InPerform(t_int* w);
void	InDsp(InPtr self, t_signal** sp, short* count);
MaxErr	InSetGain(InPtr self, void* attr, AtomCount argc, AtomPtr argv);


// Globals
static ClassPtr sInClass;


/************************************************************************************/
// Main() Function

int main(void)
{
	ClassPtr c;
	
	TTMulticoreInit();	
	common_symbols_init();
	
	c = class_new("jcom.pack≈", (method)InNew, (method)InFree, sizeof(In), (method)0L, A_GIMME, 0);
	
	class_addmethod(c, (method)InReset,					"multicore.reset",	A_CANT, 0);
	class_addmethod(c, (method)InSetup,					"multicore.setup",	A_CANT, 0);
 	class_addmethod(c, (method)InDsp,					"dsp",				A_CANT, 0);		
	class_addmethod(c, (method)InAssist,				"assist",			A_CANT, 0); 
    class_addmethod(c, (method)object_obex_dumpout,		"dumpout",			A_CANT, 0);  
		
	class_dspinit(c);
	class_register(_sym_box, c);
	sInClass = c;
	return 0;
}


/************************************************************************************/
// Object Creation Method

InPtr InNew(SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
    InPtr	self;
	TTValue	sr(sys_getsr());
 	long	attrstart = attr_args_offset(argc, argv);
	TTValue	v;
	TTErr	err;
	
    self = InPtr(object_alloc(sInClass));
    if (self) {
		self->maxNumChannels = 2;
		if (attrstart && argv)
			self->maxNumChannels = atom_getlong(argv);
		
		ttEnvironment->setAttributeValue(kTTSym_sr, sr);

		v.setSize(3);
		v.set(0, TT("multicore.generator"));
		v.set(1, 0); // no multicore inlets (only msp inlets)
		v.set(2, 1); // one multicore outlet
		err = TTObjectInstantiate(TT("multicore.object"), (TTObjectPtr*)&self->multicoreObject, v);
		self->multicoreObject->addFlag(kTTMulticoreGenerator);

		if (!self->multicoreObject->mUnitGenerator) {
			object_error(SELF, "cannot load multicore.source");
			return NULL;
		}

		attr_args_process(self, argc, argv);
		
    	object_obex_store((void*)self, _sym_dumpout, (object*)outlet_new(self,NULL));
		self->multicoreObjectOutlet = outlet_new((t_pxobject*)self, "multicore.connect");
	    dsp_setup((t_pxobject*)self, self->maxNumChannels);
		
		self->obj.z_misc = Z_NO_INPLACE | Z_PUT_FIRST;
	}
	return self;
}

// Memory Deallocation
void InFree(InPtr self)
{
	dsp_free((t_pxobject*)self);
	TTObjectRelease((TTObjectPtr*)&self->multicoreObject);
}


/************************************************************************************/
// Methods bound to input/inlets

// Method for Assistance Messages
void InAssist(InPtr self, void* b, long msg, long arg, char* dst)
{
	if (msg==1)			// Inlets
		strcpy(dst, "(signal) single-channel input and control messages");		
	else if (msg==2) {	// Outlets
		if (arg == 0)
			strcpy(dst, "multichannel output");
		else
			strcpy(dst, "dumpout");
	}
}


TTErr InReset(InPtr self, long vectorSize)
{
	return self->multicoreObject->reset();
}


TTErr InSetup(InPtr self)
{
	Atom a[2];
	
	atom_setobj(a+0, ObjectPtr(self->multicoreObject));
	atom_setlong(a+1, 0);
	outlet_anything(self->multicoreObjectOutlet, gensym("multicore.connect"), 2, a);
	return kTTErrNone;
}


// Perform (signal) Method
t_int* InPerform(t_int* w)
{
   	InPtr		self = (InPtr)(w[1]);
	TTUInt32	i;
	
	if (!self->obj.z_disabled) {
		for (i=0; i < self->numChannels; i++)
			TTMulticoreGeneratorPtr(self->multicoreObject->mUnitGenerator)->mBuffer->setVector(i, self->vectorSize, (TTFloat32*)w[i+2]);
	}	
	return w + (self->numChannels+2);
}


// DSP Method
void InDsp(InPtr self, t_signal** sp, short* count)
{
	TTUInt16	i, k=0;
	void		**audioVectors = NULL;
	
	self->vectorSize = sp[0]->s_n;
			
	// Setup the perform method
	audioVectors = (void**)sysmem_newptr(sizeof(void*) * (self->maxNumChannels + 1));
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
	
	dsp_addv(InPerform, k, audioVectors);
	sysmem_freeptr(audioVectors);
}

