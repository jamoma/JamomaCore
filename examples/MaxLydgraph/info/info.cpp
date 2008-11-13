/* 
 *	info≈
 *	External object for Max/MSP to get information about TTAudioSignals from a lydbær dsp chain.
 *	Copyright © 2008 by Timothy Place
 * 
 *	License: This code is licensed under the terms of the GNU LGPL
 *	http://www.gnu.org/licenses/lgpl.html 
 */

#include "maxbaer.h"


// Data Structure for this object
typedef struct LydInfo {
    t_object			obj;
	LydbaerObjectPtr	audioSourceObject;
	long				audioSourceOutlet;
	TTPtr				outletSampleRate;
	TTPtr				outletVectorSize;
	TTPtr				outletNumChannels;
	long				maxNumChannels;	// the number of inlets or outlets, which is an argument at instantiation
	long				numChannels;	// the actual number of channels to use, set by the dsp method
	long				vectorSize;		// cached by the DSP method
	float				gain;			// gain multiplier
	TTPtr				qelem;			// a queue for deferring 'bang' calls
};
typedef LydInfo* LydInfoPtr;


// Prototypes for methods
LydInfoPtr	lydInfoNew(SymbolPtr msg, AtomCount argc, AtomPtr argv);
void		lydInfoFree(LydInfoPtr x);
void		lydInfoAssist(LydInfoPtr x, void* b, long msg, long arg, char* dst);
void		lydInfoBang(LydInfoPtr x);
void		lyInfoQfn(LydInfoPtr x);
TTErr		lydInfoReset(LydInfoPtr x, long vectorSize);
TTErr		lydInfoObject(LydInfoPtr x, LydbaerObjectPtr audioSourceObject, long sourceOutletNumber);


// Globals
static ClassPtr sLydInfoClass;


/************************************************************************************/
// Main() Function

int main(void)
{
	t_class *c;

	TTBlueInit();	
	common_symbols_init();

	c = class_new("info≈", (method)lydInfoNew, (method)lydInfoFree, sizeof(LydInfo), (method)0L, A_GIMME, 0);
	
	class_addmethod(c, (method)lydInfoBang,				"bang",				0);
	class_addmethod(c, (method)lydInfoReset,			"lydbaerReset",		A_CANT, 0);
	class_addmethod(c, (method)lydInfoObject,			"lydbaerObject",	A_OBJ, A_LONG, 0);
	class_addmethod(c, (method)lydInfoAssist,			"assist",			A_CANT, 0); 
    class_addmethod(c, (method)object_obex_dumpout,		"dumpout",			A_CANT, 0);  
	
	class_register(_sym_box, c);
	sLydInfoClass = c;
	return 0;
}


/************************************************************************************/
// Object Creation Method

LydInfoPtr lydInfoNew(SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
    LydInfoPtr	x;
   
    x = LydInfoPtr(object_alloc(sLydInfoClass));
    if(x){
    	object_obex_store((void *)x, _sym_dumpout, (object *)outlet_new(x,NULL));	// dumpout	
		x->outletNumChannels = outlet_new((t_pxobject *)x, 0L);;
		x->outletVectorSize = outlet_new((t_pxobject *)x, 0L);;
		x->outletSampleRate = outlet_new((t_pxobject *)x, 0L);;

		x->qelem = qelem_new(x, (method)lyInfoQfn);
		
		attr_args_process(x,argc,argv);				// handle attribute args	
				
	}
	return x;
}

// Memory Deallocation
void lydInfoFree(LydInfoPtr x)
{
	qelem_free(x->qelem);
}


/************************************************************************************/
// Methods bound to input/inlets

// Method for Assistance Messages
void lydInfoAssist(LydInfoPtr x, void* b, long msg, long arg, char* dst)
{
	if(msg==1)			// Inlets
		strcpy(dst, "multichannel audio connection and control messages");		
	else if(msg==2){	// Outlets
		if(arg == 0)
			strcpy(dst, "sample rate of the input signal");
		else if(arg == 1)
			strcpy(dst, "vector size of the input signal");
		else if(arg == 2)
			strcpy(dst, "number of channels in the input signal");
		else if(arg == 3)
			strcpy(dst, "dumpout");
	}
}


void lydInfoBang(LydInfoPtr x)
{
	qelem_set(x->qelem);
}


void lyInfoQfn(LydInfoPtr x)
{
	if(x->audioSourceObject){
		if(x->audioSourceOutlet)
			outlet_int(x->outletNumChannels, x->audioSourceObject->getNumSidechainOutputChannels());
		else
			outlet_int(x->outletNumChannels, x->audioSourceObject->getNumOutputChannels());
		outlet_int(x->outletVectorSize, x->audioSourceObject->getOutputVectorSize());
		outlet_int(x->outletSampleRate, x->audioSourceObject->getSampleRate());
	}
	else{
		object_post(ObjectPtr(x), "No valid audio signals connected.");
	}
}


TTErr lydInfoReset(LydInfoPtr x, long vectorSize)
{
	x->audioSourceObject = NULL;
	return kTTErrNone;
}


TTErr lydInfoObject(LydInfoPtr x, LydbaerObjectPtr newAudioSourceObject, long sourceOutletNumber)
{
	x->audioSourceObject = newAudioSourceObject;
	x->audioSourceOutlet = sourceOutletNumber;
	lydInfoBang(x);
	return kTTErrNone;
}

