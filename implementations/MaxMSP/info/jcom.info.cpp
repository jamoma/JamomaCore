/* 
 *	info≈
 *	External object for Max/MSP to get information about TTAudioSignals from a Jamoma AudioGraph dsp chain.
 *	Copyright © 2008 by Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "maxAudioGraph.h"


// Data Structure for this object
struct Info {
    t_object				obj;
	TTAudioGraphObjectPtr	audioSourceObject;
	long					audioSourceOutlet;
	TTPtr					outletSampleRate;
	TTPtr					outletVectorSize;
	TTPtr					outletNumChannels;
	long					maxNumChannels;		// the number of inlets or outlets, which is an argument at instantiation
	long					numChannels;		// the actual number of channels to use, set by the dsp method
	long					vectorSize;			// cached by the DSP method
	TTPtr					qelem;				// a queue for deferring 'bang' calls
};
typedef Info* InfoPtr;


// Prototypes for methods
InfoPtr	InfoNew(SymbolPtr msg, AtomCount argc, AtomPtr argv);
void	InfoFree(InfoPtr self);
void	InfoAssist(InfoPtr self, void* b, long msg, long arg, char* dst);
void	InfoBang(InfoPtr self);
void	InfoQfn(InfoPtr self);
TTErr	InfoReset(InfoPtr self, long vectorSize);
TTErr	InfoConnect(InfoPtr self, TTAudioGraphObjectPtr audioSourceObject, long sourceOutletNumber);


// Globals
static ClassPtr sInfoClass;


/************************************************************************************/
// Main() Function

int main(void)
{
	ClassPtr c;

	TTAudioGraphInit();	
	common_symbols_init();

	c = class_new("jcom.info≈", (method)InfoNew, (method)InfoFree, sizeof(Info), (method)0L, A_GIMME, 0);
	
	class_addmethod(c, (method)InfoBang,			"bang",					0);
	class_addmethod(c, (method)InfoReset,			"audio.reset",		A_CANT, 0);
	class_addmethod(c, (method)InfoConnect,			"audio.connect",	A_OBJ, A_LONG, 0);
	class_addmethod(c, (method)MaxAudioGraphDrop,	"audio.drop",		A_CANT, 0);
	class_addmethod(c, (method)MaxAudioGraphObject,	"audio.object",		A_CANT, 0);
	class_addmethod(c, (method)InfoAssist,			"assist",				A_CANT, 0); 
    class_addmethod(c, (method)object_obex_dumpout,	"dumpout",				A_CANT, 0);  
	
	class_register(_sym_box, c);
	sInfoClass = c;
	return 0;
}


/************************************************************************************/
// Object Creation Method

InfoPtr InfoNew(SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
    InfoPtr	self;
   
    self = InfoPtr(object_alloc(sInfoClass));
    if (self) {
    	object_obex_store((TTPtr)self, _sym_dumpout, (ObjectPtr)outlet_new(self, NULL));
		self->outletNumChannels = outlet_new((t_pxobject*)self, 0);
		self->outletVectorSize = outlet_new((t_pxobject*)self, 0);
		self->outletSampleRate = outlet_new((t_pxobject*)self, 0);

		self->qelem = qelem_new(self, (method)InfoQfn);
		attr_args_process(self, argc, argv);
	}
	return self;
}


void InfoFree(InfoPtr self)
{
	qelem_free(self->qelem);
}


/************************************************************************************/
// Methods bound to input/inlets

// Method for Assistance Messages
void InfoAssist(InfoPtr self, void* b, long msg, long arg, char* dst)
{
	if (msg==1)			// Inlets
		strcpy(dst, "multichannel audio connection and control messages");		
	else if (msg==2) {	// Outlets
		if (arg == 0)
			strcpy(dst, "sample rate of the input signal");
		else if (arg == 1)
			strcpy(dst, "vector size of the input signal");
		else if (arg == 2)
			strcpy(dst, "number of channels in the input signal");
		else if (arg == 3)
			strcpy(dst, "dumpout");
	}
}


void InfoBang(InfoPtr self)
{
	qelem_set(self->qelem);
}


void InfoQfn(InfoPtr self)
{
	if (self->audioSourceObject) {
		outlet_int(self->outletNumChannels, self->audioSourceObject->getOutputNumChannels(self->audioSourceOutlet));
		outlet_int(self->outletVectorSize, self->audioSourceObject->getOutputVectorSize(self->audioSourceOutlet));
		outlet_int(self->outletSampleRate, self->audioSourceObject->getOutputSampleRate(self->audioSourceOutlet));
	}
	else {
		object_post(SELF, "No valid audio signals connected.");
	}
}


TTErr InfoReset(InfoPtr self, long vectorSize)
{
	self->audioSourceObject = NULL;
	return kTTErrNone;
}


TTErr InfoConnect(InfoPtr self, TTAudioGraphObjectPtr newAudioSourceObject, long sourceOutletNumber)
{
	self->audioSourceObject = newAudioSourceObject;
	self->audioSourceOutlet = sourceOutletNumber;
	InfoBang(self);
	return kTTErrNone;
}

