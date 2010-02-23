/* 
 *	out≈
 *	External object for Max/MSP to output TTAudioSignals from a Jamoma Multicore dsp chain.
 *	Copyright © 2008 by Timothy Place
 * 
 *	License: This code is licensed under the terms of the GNU LGPL
 *	http://www.gnu.org/licenses/lgpl.html 
 */

#include "maxMulticore.h"
#include "jpatcher_api.h"
#define DEBUG_NOTIFICATIONS

// Data Structure for this object
struct Out {
    t_pxobject					obj;
	TTMulticoreObjectPtr		multicoreObject;
	TTAudioSignalPtr			audioSignal;
	TTUInt16					maxNumChannels;	// the number of inlets or outlets, which is an argument at instantiation
	TTUInt16					numChannels;	// the actual number of channels to use, set by the dsp method
	TTUInt16					vectorSize;		// cached by the DSP method
	TTFloat32					gain;			// gain multiplier
	TTBoolean					hasReset;		// flag indicating that reset has been called already, so we don't need to reset again
	TTBoolean					hasConnections;	// flag indicating that we have connections so we can mute MSP output
	ObjectPtr					patcher;		// the patcher -- cached for iterating to make connections
	ObjectPtr					patcherview;	// first view of the top-level patcher (for dirty notifications)
	TTPtr						qelem;			// for clumping patcher dirty notifications
	TTMulticorePreprocessData	initData;		// for the preprocess method
};
typedef Out* OutPtr;


// Prototypes for methods
OutPtr	OutNew(SymbolPtr msg, AtomCount argc, AtomPtr argv);
void	OutFree(OutPtr self);
MaxErr	OutNotify(OutPtr self, SymbolPtr s, SymbolPtr msg, ObjectPtr sender, TTPtr data);
void	OutQFn(OutPtr self);
void	OutAssist(OutPtr self, void* b, long msg, long arg, char* dst);
TTErr	OutReset(OutPtr self, long vectorSize);
TTErr	OutConnect(OutPtr self, TTMulticoreObjectPtr audioSourceObject, long sourceOutletNumber);
TTErr  	OutDrop(OutPtr self, long inletNumber, ObjectPtr sourceObject, long sourceOutletNumber);
TTErr	OutObject(OutPtr self, TTMulticoreObjectPtr* returnedMulticoreObject);
void	OutIterateResetCallback(OutPtr self, ObjectPtr obj);
void	OutIterateSetupCallback(OutPtr self, ObjectPtr obj);
void	OutAttachToPatchlinesForPatcher(OutPtr self, ObjectPtr patcher);
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

	c = class_new("jcom.unpack≈", (method)OutNew, (method)OutFree, sizeof(Out), (method)0L, A_GIMME, 0);
	
	class_addmethod(c, (method)OutNotify,			"notify",				A_CANT, 0);
	class_addmethod(c, (method)OutReset,			"multicore.reset",		A_CANT, 0);
	class_addmethod(c, (method)OutConnect,			"multicore.connect",	A_OBJ, A_LONG, 0);
	class_addmethod(c, (method)OutDrop,				"multicore.drop",		A_CANT, 0);
	class_addmethod(c, (method)OutObject,			"multicore.object",		A_CANT, 0);
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
		
		self->qelem = qelem_new(self, (method)OutQFn);
		self->obj.z_misc = Z_NO_INPLACE | Z_PUT_LAST;
	}
	return self;
}

// Memory Deallocation
void OutFree(OutPtr self)
{
	dsp_free((t_pxobject*)self);
	if (self->patcherview)
		object_detach_byptr(self, self->patcherview);
	TTObjectRelease((TTObjectPtr*)&self->multicoreObject);
	qelem_free(self->qelem);
}


/************************************************************************************/
// Methods bound to input/inlets

MaxErr OutNotify(OutPtr self, SymbolPtr s, SymbolPtr msg, ObjectPtr sender, TTPtr data)
{
	if (sender == self->patcherview) {
		if (msg == _sym_attr_modified) {
			SymbolPtr name = (SymbolPtr)object_method((ObjectPtr)data, _sym_getname);
			if (name == _sym_dirty) {
				qelem_set(self->qelem);
			}
		}
		else if (msg == _sym_free)
			self->patcherview = NULL;
	}
	else {
		if (msg == _sym_free) {
			#ifdef DEBUG_NOTIFICATIONS
			object_post(SELF, "patch line deleted");
			#endif // DEBUG_NOTIFICATIONS

			// get boxes and inlets
			ObjectPtr	sourceBox = jpatchline_get_box1(sender);
			if (!sourceBox)
				goto out;
			ObjectPtr	sourceObject = jbox_get_object(sourceBox);
			long		sourceOutlet = jpatchline_get_outletnum(sender);
			ObjectPtr	destBox = jpatchline_get_box2(sender);
			if (!destBox)
				goto out;
			ObjectPtr	destObject = jbox_get_object(destBox);
			long		destInlet = jpatchline_get_inletnum(sender);
			
			// if both boxes are multicore objects 
			if ( zgetfn(sourceObject, gensym("multicore.object")) && zgetfn(destObject, gensym("multicore.object")) ) {
				#ifdef DEBUG_NOTIFICATIONS
				object_post(SELF, "deleting multicore patchline!");
				#endif // DEBUG_NOTIFICATIONS
				
				object_method(destObject, gensym("multicore.drop"), destInlet, sourceObject, sourceOutlet);
			}
		out:		
			;
		}
	}
	return MAX_ERR_NONE;
}


// Qelem function, which clumps together dirty notifications before making the new connections
void OutQFn(OutPtr self)
{
	t_atom result;

	#ifdef DEBUG_NOTIFICATIONS
	object_post(SELF, "patcher dirtied");
	#endif // DEBUG_NOTIFICATIONS
	
	object_method(self->patcher, gensym("iterate"), (method)OutIterateSetupCallback, self, PI_DEEP, &result);

	// attach to all of the patch cords so we will know if one is deleted
	// we are not trying to detach first -- hopefully this is okay and multiple attachments will be filtered (?)
	OutAttachToPatchlinesForPatcher(self, self->patcher);
}


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
	self->hasReset = true;
	self->hasConnections = false;
	return self->multicoreObject->reset();
}


TTErr OutConnect(OutPtr self, TTMulticoreObjectPtr audioSourceObject, long sourceOutletNumber)
{
	self->hasConnections = true;
	return self->multicoreObject->connect(audioSourceObject, sourceOutletNumber);
}


TTErr OutDrop(OutPtr self, long inletNumber, ObjectPtr sourceMaxObject, long sourceOutletNumber)
{
	TTMulticoreObjectPtr	sourceObject = NULL;
	TTErr 					err;
	
	err = (TTErr)int(object_method(sourceMaxObject, gensym("multicore.object"), &sourceObject));
	if (sourceObject && !err)
		err = self->multicoreObject->drop(sourceObject, sourceOutletNumber, inletNumber);	
	return err;
}


TTErr OutObject(OutPtr self, TTMulticoreObjectPtr* returnedMulticoreObject)
{
	*returnedMulticoreObject = self->multicoreObject;
	return kTTErrNone;
}


void OutIterateResetCallback(OutPtr self, ObjectPtr obj)
{
	MaxErr err = MAX_ERR_NONE;
	method multicoreResetMethod = zgetfn(obj, gensym("multicore.reset"));
	
	if (multicoreResetMethod)
		err = (MaxErr)multicoreResetMethod(obj, self->vectorSize);
}


void OutIterateSetupCallback(OutPtr self, ObjectPtr obj)
{
	MaxErr err = MAX_ERR_NONE;
	method multicoreSetupMethod = zgetfn(obj, gensym("multicore.setup"));
	
	if (multicoreSetupMethod)
		err = (MaxErr)multicoreSetupMethod(obj);
}


void OutAttachToPatchlinesForPatcher(OutPtr self, ObjectPtr patcher)
{
	ObjectPtr	patchline = object_attr_getobj(patcher, _sym_firstline);
	ObjectPtr	box = jpatcher_get_firstobject(patcher);
	
	while (patchline) {
		object_attach_byptr_register(self, patchline, _sym_nobox);
		patchline = object_attr_getobj(patchline, _sym_nextline);
	}
		
	while (box) {
		SymbolPtr	classname = jbox_get_maxclass(box);
		
		if (classname == _sym_jpatcher) {
			ObjectPtr	subpatcher = jbox_get_object(box);
			
			OutAttachToPatchlinesForPatcher(self, subpatcher);
		}
		box = jbox_get_nextobject(box);
	}
}


// Perform (signal) Method
t_int* OutPerform(t_int* w)
{
   	OutPtr		self = (OutPtr)(w[1]);
	TTUInt16	numChannels;
	
	if (!self->obj.z_disabled) {
		if (self->hasConnections) {
			self->multicoreObject->preprocess(self->initData);
			self->multicoreObject->process(self->audioSignal);
			
			numChannels = TTClip<TTUInt16>(self->numChannels, 0, self->audioSignal->getNumChannels());			
			for(TTUInt16 channel=0; channel<numChannels; channel++)
				self->audioSignal->getVector(channel, self->vectorSize, (TTFloat32*)w[channel+2]);
		}
		else {
			for (TTUInt16 channel=0; channel < self->numChannels; channel++) {
				for (int i=0 ; i < self->vectorSize; i++)
					((TTFloat32*)(w[channel+2]))[i] = 0.0;
			}
		}
	}
	
	self->hasReset = false;
	return w + (self->numChannels+2);
}


// DSP Method
void OutDsp(OutPtr self, t_signal** sp, short* count)
{
	TTUInt16	i, k=0;
	void		**audioVectors = NULL;
	MaxErr		err;
	long		result = 0;
	
	self->vectorSize = sp[0]->s_n;
	
	#ifdef DEBUG_NOTIFICATIONS
	object_post(SELF, "dsp method called");
	#endif // DEBUG_NOTIFICATIONS
	
	/*	We need to figure out what objects are connected to what inlets to build the graph:
		
		1. Broadcast 'multicore.reset' to every object in the patcher, to remove all existing connections.
		2. Broadcast 'multicore.setup' to every object in the patcher, to tell objects to then send
			'multicore.connect' messages to any objects below them.
		3. When an object received 'multicore.connect', then it makes the connection.
		
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

	if (!self->hasReset) {
		ObjectPtr	patcher = NULL;
		ObjectPtr	parent = NULL;
		ObjectPtr	patcherview = NULL;

		// first find the top-level patcher
		err = object_obex_lookup(self, gensym("#P"), &patcher);
		parent = patcher;
		while (parent) {
			patcher = parent;
			parent = object_attr_getobj(patcher, _sym_parentpatcher);
		}

		// now iterate recursively from the top-level patcher down through all of the subpatchers
		object_method(patcher, gensym("iterate"), (method)OutIterateResetCallback, self, PI_DEEP, &result);
		object_method(patcher, gensym("iterate"), (method)OutIterateSetupCallback, self, PI_DEEP, &result);
		
		// now let's attach to the patcherview to get notifications about any further changes to the patch cords
		// the patcher 'dirty' attribute is not modified for each change, but the patcherview 'dirty' attribute is
		if (!self->patcherview) {
			patcherview = jpatcher_get_firstview(patcher);
			self->patcherview = patcherview;
			self->patcher = patcher;
			object_attach_byptr_register(self, patcherview, _sym_nobox);			
		}
	}
	
	// now we want to go a step further and attach to all of the patch cords 
	// this is how we will know if one is deleted
	OutAttachToPatchlinesForPatcher(self, self->patcher);

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
	
	self->initData.vectorSize = self->vectorSize;
}


MaxErr OutSetGain(OutPtr self, void* attr, AtomCount argc, AtomPtr argv)
{
	if (argc) {
		self->gain = atom_getfloat(argv);
		self->multicoreObject->mUnitGenerator->setAttributeValue(TT("LinearGain"), self->gain);
	}
	return MAX_ERR_NONE;
}

