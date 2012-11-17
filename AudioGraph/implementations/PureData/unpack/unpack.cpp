/* 
 *	out≈
 *	External object for Pd to output TTAudioSignals from a Jamoma AudioGraph dsp chain.
 *	Copyright © 2010 by Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "PureAudioGraph.h"


// Data Structure for this object
struct Out {
    Object						obj;
	t_float						f;					// dummy for signal in first inlet
	TTAudioGraphObjectPtr		audioGraphObject;
	TTAudioSignalPtr			audioSignal;
	TTUInt16					maxNumChannels;		// the number of inlets or outlets, which is an argument at instantiation
	TTUInt16					numChannels;		// the actual number of channels to use, set by the dsp method
	TTUInt16					vectorSize;			// cached by the DSP method
	TTFloat32					gain;				// gain multiplier
	TTAudioGraphPreprocessData	initData;			// for the preprocess method
	t_canvas*					canvas;
};
typedef Out* OutPtr;


// Prototypes for methods
extern "C" void setup_jcom_unpack0x3d(void);
OutPtr	OutNew(SymbolPtr msg, AtomCount argc, AtomPtr argv);
void	OutFree(OutPtr self);
TTErr	OutReset(OutPtr self, long vectorSize);
TTErr	OutConnect(OutPtr self, TTAudioGraphObjectPtr audioSourceObject, long sourceOutletNumber);
t_int*	OutPerform(t_int* w);
void	OutDsp(OutPtr self, t_signal** sp, short* count);
void	OutSetGain(OutPtr self, t_floatarg value);


// Globals
static ClassPtr		sOutClass;


/************************************************************************************/
// Main() Function

void setup_jcom_unpack0x3d(void)
{
	TTAudioGraphInit();	

	sOutClass = class_new(gensym("jcom_unpack="), (t_newmethod)OutNew, (t_method)OutFree, sizeof(Out), 0, A_GIMME, 0);
	
	CLASS_MAINSIGNALIN(sOutClass, Out, f);
	class_addmethod(sOutClass, (t_method)OutReset,		gensym("audio.reset"),		A_CANT, 0);
	class_addmethod(sOutClass, (t_method)OutConnect,	gensym("audio.connect"),	A_POINTER, A_POINTER, 0);
 	class_addmethod(sOutClass, (t_method)OutDsp,		gensym("dsp"),					A_CANT, 0);		
 	class_addmethod(sOutClass, (t_method)OutSetGain,	gensym("gain"),					A_FLOAT, 0);		

	class_sethelpsymbol(sOutClass, gensym("help-jcom_unpack=.pd"));
}


/************************************************************************************/
// Object Creation Method

OutPtr OutNew(SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
    OutPtr		self;
	TTValue		sr(sys_getsr());
	short		i;
	TTValue		v;
	TTErr		err;
   
    self = OutPtr(pd_new(sOutClass));
    if (self) {
		self->maxNumChannels = 2;		// An initial argument to this object will set the maximum number of channels
		if(argc && argv)
			self->maxNumChannels = atom_getfloat(argv)+0.1;

		ttEnvironment->setAttributeValue(kTTSym_SampleRate, sr);
		
		v.setSize(2);
		v.set(0, TT("gain"));
		v.set(1, 1); // arg is the number of inlets
		err = TTObjectInstantiate(TT("audio.object"), (TTObjectPtr*)&self->audioGraphObject, v);
		self->audioGraphObject->getUnitGenerator()->setAttributeValue(TT("LinearGain"), 1.0);		
		
		for(i=0; i < self->maxNumChannels; i++)
			outlet_new(SELF, gensym("signal"));
		
		//self->obj.z_misc = Z_NO_INPLACE | Z_PUT_LAST;
		
		self->canvas = canvas_getcurrent();
	}
	return self;
}

// Memory Deallocation
void OutFree(OutPtr self)
{
	TTObjectRelease((TTObjectPtr*)&self->audioGraphObject);
}


/************************************************************************************/
// Methods bound to input/inlets

TTErr OutReset(OutPtr self, long vectorSize)
{
	return self->audioGraphObject->resetAudio();
}


TTErr OutConnect(OutPtr self, TTAudioGraphObjectPtr audioSourceObject, long sourceOutletNumber)
{
	return self->audioGraphObject->connectAudio(audioSourceObject, sourceOutletNumber);
}


// Perform (signal) Method
t_int* OutPerform(t_int* w)
{
   	OutPtr		self = (OutPtr)(w[1]);
	TTUInt16	numChannels;

	self->audioGraphObject->lockProcessing();
	self->audioGraphObject->preprocess(self->initData);
	self->audioGraphObject->process(self->audioSignal);
	self->audioGraphObject->unlockProcessing();

	numChannels = TTClip<TTUInt16>(self->numChannels, 0, self->audioSignal->getNumChannelsAsInt());
	for(TTUInt16 channel=0; channel<numChannels; channel++)
		self->audioSignal->getVector(channel, self->vectorSize, (TTFloat32*)w[channel+2]);
	return w + (self->numChannels+2);
}


// DSP Method
void OutDsp(OutPtr self, t_signal** sp, short* count)
{
	TTUInt16	i;
	TTUInt16	k=0;
	void		**audioVectors = NULL;
	ObjectPtr	o = NULL;
	t_gotfn		audioSetupMethod = NULL;
	t_gobj		*y;
	
	self->vectorSize = sp[0]->s_n;
	
	/*	We need to figure out what objects are connected to what inlets to build the graph:
		
		1. Broadcast 'audio.reset' to every object in the patcher, to remove all existing connections.
		2. Broadcast 'audio.setup' to every object in the patcher, to tell objects to then send
			'audio.connect' messages to any objects below them.
		3. When an object received 'audio.connect', then it makes the connection.
		
		4. Crawl the graph from bottom to top, call the audio graph init method

		At this point, the graph is configured and we just need to execute it.
		We execute the graph from our perform method, which MSP calls once per signal vector.
	 
		5. Crawl the graph from bottom to top, calling the audio graph preprocess method (prepare for process)
		6. Crawl the graph from bottom to top, calling the audio graph process method (calculate the samples)
		7. (Maybe) crawl the graph from bottom to top, calling a audio graph postprocess method
	 
		For steps 1 & 2, we have to traverse thge patcher twice, 
		because we have to clear all connections first, then add connections.
		It won't work to do them both during the same traversal because situations arise
		Where we setup the chain and then it gets reset again by another object 
		(since the order in which we traverse objects is undefined).
	 */ 

	// traversal code lifted from line 1105+ in g_canvas.c from Pd
	// thanks to IOhannes Zmoelnig for the reference to that code...
	
	struct _glist_hack
	{
		t_object gl_obj;            // header in case we're a glist
		t_gobj *gl_list;            // the actual data
		struct _gstub *gl_stub;     // safe pointer handler 
		int gl_valid;               // incremented when pointers might be stale
		struct _glist *gl_owner;    // parent glist, supercanvas, or 0 if none
	};
	
	y = ((_glist_hack*)self->canvas)->gl_list;
	while (y) {
		o = pd_checkobject(&y->g_pd);
		if (o) {
			audioSetupMethod = zgetfn(&y->g_pd, gensym("audio.reset"));
			if (audioSetupMethod) {
				audioSetupMethod(o, self->vectorSize);				
			}
		}
		y = y->g_next;
	}
		
	y = ((_glist_hack*)self->canvas)->gl_list;
	while (y) {
		o = pd_checkobject(&y->g_pd);
		if (o) {
			audioSetupMethod = zgetfn(&y->g_pd, gensym("audio.setup"));
			if (audioSetupMethod)
				audioSetupMethod(o);
		}
		y = y->g_next;
	}
		
	// Setup the perform method
	audioVectors = (void**)malloc(sizeof(void*) * (self->maxNumChannels + 1));
	audioVectors[k] = self;
	k++;

	self->numChannels = 0;
	for (i=1; i <= self->maxNumChannels; i++) {
		self->numChannels++;				
		audioVectors[k] = sp[i]->s_vec;
		k++;
	}
	
	self->audioGraphObject->getUnitGenerator()->setAttributeValue(TT("SampleRate"), sp[0]->s_sr);
	
	dsp_addv(OutPerform, k, (t_int*)audioVectors);
	free(audioVectors);
	
	self->initData.vectorSize = self->vectorSize;
}


void OutSetGain(OutPtr self, t_floatarg value)
{
	self->gain = value;
	self->audioGraphObject->getUnitGenerator()->setAttributeValue(TT("LinearGain"), self->gain);
}

