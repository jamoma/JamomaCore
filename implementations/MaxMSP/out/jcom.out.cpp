/* 
 *	out≈
 *	External object for Max/MSP to output TTAudioSignals from a Jamoma Multicore dsp chain.
 *	Copyright © 2008 by Timothy Place
 * 
 *	License: This code is licensed under the terms of the GNU LGPL
 *	http://www.gnu.org/licenses/lgpl.html 
 */

#include "maxMulticore.h"


// Data Structure for this object
struct Out {
    t_pxobject				obj;
	TTMulticoreObjectPtr	multicoreObject;
	TTAudioSignalPtr		audioSignal;
	TTUInt16				maxNumChannels;	// the number of inlets or outlets, which is an argument at instantiation
	TTUInt16				numChannels;	// the actual number of channels to use, set by the dsp method
	TTUInt16				vectorSize;		// cached by the DSP method
	TTFloat32				gain;			// gain multiplier
};
typedef Out* OutPtr;


// Prototypes for methods
OutPtr	OutNew(SymbolPtr msg, AtomCount argc, AtomPtr argv);
void	OutFree(OutPtr self);
void	OutAssist(OutPtr self, void* b, long msg, long arg, char* dst);
TTErr	OutReset(OutPtr self, long vectorSize);
TTErr	OutConnect(OutPtr self, TTMulticoreObjectPtr audioSourceObject, long sourceOutletNumber);
t_int*	OutPerform(t_int* w);
void	OutDsp(OutPtr self, t_signal** sp, short* count);
MaxErr	OutSetGain(OutPtr self, void* attr, AtomCount argc, AtomPtr argv);


// Globals
static ClassPtr sOutClass;


/************************************************************************************/
// Main() Function

int main(void)
{
	ClassPtr c;

	TTMulticoreInit();	
	common_symbols_init();

	c = class_new("jcom.out≈", (method)OutNew, (method)OutFree, sizeof(Out), (method)0L, A_GIMME, 0);
	
	//class_addmethod(c, (method)OutNotify,			"notify",				A_CANT, 0);
	class_addmethod(c, (method)OutReset,			"multicore.reset",		A_CANT, 0);
	class_addmethod(c, (method)OutConnect,			"multicore.connect",	A_OBJ, A_LONG, 0);
 	class_addmethod(c, (method)OutDsp,				"dsp",					A_CANT, 0);		
	class_addmethod(c, (method)OutAssist,			"assist",				A_CANT, 0); 
    class_addmethod(c, (method)object_obex_dumpout,	"dumpout",				A_CANT, 0);  
	
	CLASS_ATTR_FLOAT(c,		"gain", 0,		Out,	gain);
	CLASS_ATTR_ACCESSORS(c,	"gain",	NULL,	OutSetGain);

	class_dspinit(c);
	class_register(_sym_box, c);
	sOutClass = c;
	return 0;
}


/************************************************************************************/
// Object Creation Method

OutPtr OutNew(SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
    OutPtr		self;
	TTValue		sr(sys_getsr());
 	long		attrstart = attr_args_offset(argc, argv);		// support normal arguments
	short		i;
	TTValue		v;
	TTErr		err;
   
    self = OutPtr(object_alloc(sOutClass));
    if (self) {
		self->maxNumChannels = 2;		// An initial argument to this object will set the maximum number of channels
		if(attrstart && argv)
			self->maxNumChannels = atom_getlong(argv);

		ttEnvironment->setAttributeValue(kTTSym_sr, sr);
		
		v.setSize(2);
		v.set(0, TT("gain"));
		v.set(1, 1); // arg is the number of inlets
		err = TTObjectInstantiate(TT("multicore.object"), (TTObjectPtr*)&self->multicoreObject, v);
		
		attr_args_process(self, argc, argv);
		
    	object_obex_store((void*)self, _sym_dumpout, (object*)outlet_new(self, NULL));	// dumpout	
	    dsp_setup((t_pxobject*)self, 1);
		for(i=0; i < self->maxNumChannels; i++)
			outlet_new((t_pxobject*)self, "signal");
		
		self->obj.z_misc = Z_NO_INPLACE | Z_PUT_LAST;
	}
	return self;
}

// Memory Deallocation
void OutFree(OutPtr self)
{
	dsp_free((t_pxobject*)self);
	TTObjectRelease((TTObjectPtr*)&self->multicoreObject);
}


/************************************************************************************/
// Methods bound to input/inlets

// Method for Assistance Messages
void OutAssist(OutPtr self, void* b, long msg, long arg, char* dst)
{
	if (msg==1)			// Inlets
		strcpy(dst, "multichannel audio connection and control messages");		
	else if (msg==2){	// Outlets
		if (arg == self->maxNumChannels)
			strcpy(dst, "dumpout");
		else
			strcpy(dst, "(signal) single-channel output");
	}
}

TTErr OutReset(OutPtr self, long vectorSize)
{
	return self->multicoreObject->reset();
}


TTErr OutConnect(OutPtr self, TTMulticoreObjectPtr audioSourceObject, long sourceOutletNumber)
{
	return self->multicoreObject->connect(audioSourceObject, sourceOutletNumber);
}


// Perform (signal) Method
t_int* OutPerform(t_int* w)
{
   	OutPtr		self = (OutPtr)(w[1]);
	TTUInt16	numChannels;
	
	if (!self->obj.z_disabled) {
		self->multicoreObject->preprocess();
		self->multicoreObject->process(self->audioSignal);
		
		numChannels = TTClip<TTUInt16>(self->numChannels, 0, self->audioSignal->getNumChannels());
		for(TTUInt16 channel=0; channel<numChannels; channel++)
			self->audioSignal->getVector(channel, self->vectorSize, (TTFloat32*)w[channel+2]);
	}	
	return w + (self->numChannels+2);
}


// DSP Method
void OutDsp(OutPtr self, t_signal** sp, short* count)
{
	TTUInt16	i, k=0;
	void		**audioVectors = NULL;
	MaxErr		err;
	ObjectPtr	patcher = NULL;
	ObjectPtr	box = NULL;
	ObjectPtr	o = NULL;
	method		multicoreSetupMethod = NULL;
	
	self->vectorSize = sp[0]->s_n;
	
	/*	We need to figure out what objects are connected to what inlets to build the graph:
		
		1. Broadcast 'multicore.reset' to every object in the patcher, to remove all existing connections.
		2. Broadcast 'multicore.setup' to every object in the patcher, to tell objects to then send
			'multicore.connect' messages to any objects below them.
		3. When an object received 'multicore.connect', then it makes the connection.
		
		4. Crawl the graph from bottom to top, call the multicore init method

		At this point, the graph is configured and we just need to execute it.
		We execute the graph from our perform method, which MSP calls once per signal vector.
	 
		5. Crawl the graph from bottom to top, calling the multicore preprocess method (prepare for process)
		6. Crawl the graph from bottom to top, calling the multicore process method (calculate the samples)
		7. (Maybe) crawl the graph from bottom to top, calling a multicore postprocess method
	 
		For steps 1 & 2, we have to traverse thge patcher twice, 
		because we have to clear all connections first, then add connections.
		It won't work to do them both during the same traversal because situations arise
		Where we setup the chain and then it gets reset again by another object 
		(since the order in which we traverse objects is undefined).
	 */ 

	err = object_obex_lookup(self, gensym("#P"), &patcher);
	box = jpatcher_get_firstobject(patcher);
	while (box) {
		o = jbox_get_object(box);
		multicoreSetupMethod = zgetfn(o, gensym("multicore.reset"));
		if(multicoreSetupMethod)
			err = (MaxErr)multicoreSetupMethod(o, self->vectorSize);
		box = jbox_get_nextobject(box);
	}
	box = jpatcher_get_firstobject(patcher);
	while (box) {
		o = jbox_get_object(box);
		multicoreSetupMethod = zgetfn(o, gensym("multicore.setup"));
		if(multicoreSetupMethod)
			err = (MaxErr)multicoreSetupMethod(o);
		box = jbox_get_nextobject(box);
	}
	
	// Setup the perform method
	audioVectors = (void**)sysmem_newptr(sizeof(void*) * (self->maxNumChannels + 1));
	audioVectors[k] = self;
	k++;
	
	self->numChannels = 0;
	for (i=1; i <= self->maxNumChannels; i++) {
		self->numChannels++;				
		audioVectors[k] = sp[i]->s_vec;
		k++;
	}
	
	self->multicoreObject->mUnitGenerator->setAttributeValue(TT("sr"), sp[0]->s_sr);
	
	dsp_addv(OutPerform, k, audioVectors);
	sysmem_freeptr(audioVectors);
	
	TTMulticoreInitData	initData;
	initData.vectorSize = self->vectorSize;
	self->multicoreObject->init(initData);
}


MaxErr OutSetGain(OutPtr self, void* attr, AtomCount argc, AtomPtr argv)
{
	if (argc) {
		self->gain = atom_getfloat(argv);
		self->multicoreObject->mUnitGenerator->setAttributeValue(TT("LinearGain"), self->gain);
	}
	return MAX_ERR_NONE;
}

