/* 
 *	in≈
 *	External object for Max/MSP to Provide a source for TTAudioSignals usable by a Jamoma AudioGraph dsp chain.
 *	Copyright © 2008 by Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "maxAudioGraph.h"

// Data Structure for this object
struct In {
    t_pxobject				obj;
	TTAudioGraphObjectPtr	audioGraphObject;
	TTPtr					audioGraphObjectOutlet;
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
TTErr	InObject(InPtr self, TTAudioGraphObjectPtr audioSourceObject);
t_int*	InPerform(t_int* w);
void	InDsp(InPtr self, t_signal** sp, short* count);
MaxErr	InSetGain(InPtr self, void* attr, AtomCount argc, AtomPtr argv);


// Globals
static ClassPtr sInClass;


/************************************************************************************/
// Main() Function

int TTCLASSWRAPPERMAX_EXPORT main(void)
{
	ClassPtr c;
	
	TTAudioGraphInit();	
	common_symbols_init();
	
	c = class_new("jcom.pack≈", (method)InNew, (method)InFree, sizeof(In), (method)0L, A_GIMME, 0);
	
	class_addmethod(c, (method)InReset,					"audio.reset",	A_CANT, 0);
	class_addmethod(c, (method)InSetup,					"audio.setup",	A_CANT, 0);
	class_addmethod(c, (method)MaxAudioGraphDrop,		"audio.drop",		A_CANT, 0);
	class_addmethod(c, (method)MaxAudioGraphObject,		"audio.object",		A_CANT, 0);
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
		
		ttEnvironment->setAttributeValue(kTTSym_sampleRate, sr);

		v.setSize(3);
		v.set(0, TT("audio.generator"));
		v.set(1, 0); // no audio graph inlets (only msp inlets)
		v.set(2, 1); // one audio graph outlet
		err = TTObjectInstantiate(TT("audio.object"), (TTObjectPtr*)&self->audioGraphObject, v);
		self->audioGraphObject->addAudioFlag(kTTAudioGraphGenerator);

		if (!self->audioGraphObject->getUnitGenerator()) {
			object_error(SELF, "cannot load audio.generator");
			return NULL;
		}

		attr_args_process(self, argc, argv);
		
    	object_obex_store((void*)self, _sym_dumpout, (object*)outlet_new(self,NULL));
		self->audioGraphObjectOutlet = outlet_new((t_pxobject*)self, "audio.connect");
	    dsp_setup((t_pxobject*)self, self->maxNumChannels);
		
		self->obj.z_misc = Z_NO_INPLACE | Z_PUT_FIRST;
	}
	return self;
}

// Memory Deallocation
void InFree(InPtr self)
{
	dsp_free((t_pxobject*)self);
	TTObjectRelease((TTObjectPtr*)&self->audioGraphObject);
}


/************************************************************************************/
// Methods bound to input/inlets

// Method for Assistance Messages
void InAssist(InPtr self, void* b, long msg, long arg, char* dst)
{
	if (msg==1)			// Inlets
		if (arg > 0) { snprintf(dst, 256, "(signal) single-channel input Nr. %ld", arg + 1); }
		else { strcpy(dst, "control messages and (signal) single-channel input Nr. 1");}
	else if (msg==2) {	// Outlets
		if (arg == 0)
			strcpy(dst, "multichannel output");
		else
			strcpy(dst, "dumpout");
	}
}


TTErr InReset(InPtr self, long vectorSize)
{
	return self->audioGraphObject->resetAudio();
}


TTErr InSetup(InPtr self)
{
	Atom a[2];
	
	atom_setobj(a+0, ObjectPtr(self->audioGraphObject));
	atom_setlong(a+1, 0);
	outlet_anything(self->audioGraphObjectOutlet, gensym("audio.connect"), 2, a);
	return kTTErrNone;
}


// Perform (signal) Method
t_int* InPerform(t_int* w)
{
   	InPtr		self = (InPtr)(w[1]);
	TTUInt32	i;
	
	if (!self->obj.z_disabled) {
		for (i=0; i < self->numChannels; i++)
			TTAudioGraphGeneratorPtr(self->audioGraphObject->getUnitGenerator())->mBuffer->setVector(i, self->vectorSize, (TTFloat32*)w[i+2]);
	}	
	return w + (self->numChannels+2);
}


// DSP Method
void InDsp(InPtr self, t_signal** sp, short* count)
{
	TTUInt16	i, k=0;
	void		**audioVectors = NULL;
	TTUInt16	highestIndexForConnectedSignal = 0;
	
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
		if (count[i])
			highestIndexForConnectedSignal = i;
	}
	
	self->audioGraphObject->setOutputNumChannels(0, highestIndexForConnectedSignal+1);
	self->audioGraphObject->getUnitGenerator()->setAttributeValue(TT("vectorSize"), (uint)self->vectorSize);
	self->audioGraphObject->getUnitGenerator()->setAttributeValue(TT("maxNumChannels"), (uint)self->maxNumChannels);
	self->audioGraphObject->getUnitGenerator()->setAttributeValue(TT("sampleRate"), (uint)sp[0]->s_sr);
	
	dsp_addv(InPerform, k, audioVectors);
	sysmem_freeptr(audioVectors);
}

