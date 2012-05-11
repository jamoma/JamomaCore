/* 
 * jcom.in (~) (TODO %)
 * External for Jamoma: manage any signal inputs
 * By Tim Place and Théo de la Hogue, Copyright © 2010
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTModularClassWrapperMax.h"

#ifdef JCOM_IN_TILDE

#define info_numChannels 0
#define info_vectorSize 1
#define info_startMeter 2

/** Store extra data relating to envelope tracking. Only available to jcom.in~. */
typedef struct extra {
	
	void		*clock;			///< Clock to update amplitude returns.
	TTUInt32	pollInterval;	///< The sample rate of the amplitude follower.
	//short	clock_is_set;		///< Is the clock currently scheduled to fire?
	
} t_extra;
#define EXTRA ((t_extra*)x->extra)

#endif

// Definitions

/** Wrap the jcom.in class as a Max object.
 @param c			The class to be wrapped
 @see				WrappedInputClass_new, WrappedInputClass_free
 */
void		WrapTTInputClass(WrappedClassPtr c);

/** Wrapper for the jcom.in constructor class, called when an instance is created. 
 @param self		Pointer to this object.
 @param argc		The number of arguments passed to the object.
 @param argv		Pointer to an array of atoms passed to the object.
 @see				WrappedInputClass_free, in_subscribe
 */
void		WrappedInputClass_new(TTPtr self, AtomCount argc, AtomPtr argv);

/** Wrapper for the jcom.in deconstructor class, called when an instance is destroyed. 
 @param self		Pointer to this object.
 @see				WrappedInputClass_new
 */
void		WrappedInputClass_free(TTPtr self);

/** Assistance Method. 
 @param self		Pointer to this object.
 @param b			Pointer to (exactly what?)
 @param msg			The message passed to the object.
 @param arg			
 @param dst			Pointer to the destination that assistance strings are passed to for display.
 */
void		in_assist(TTPtr self, TTPtr b, long msg, AtomCount arg, char *dst);

/** Associate jcom.in(~) with NodeLib. This is a prerequisit for communication with other Jamoma onject in the module and beyond.  */
void		in_subscribe(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);

#ifdef JCOM_IN_TILDE

/** jcom.in~ 32-bit MSP perform method (for Max 5). Only defineed for jcom.in~. */
t_int*		in_perform(t_int *w);

/** jcom.in~ 32-bit DSP method (for Max 5).Only defineed for jcom.in~. */
void		in_dsp(TTPtr self, t_signal **sp, short *count);

/** jcom.in~ 64-bit MSP perform method (for Max 6). Only defineed for jcom.in~. */
void		in_perform64(TTPtr self, t_object *dsp64, double **ins, long numins, double **outs, long numouts, long sampleframes, long flags, void *userparam);

/** jcom.in~ 64-bit DSP method (for Max 6). Only defineed for jcom.in~. */
void		in_dsp64(TTPtr self, t_object *dsp64, short *count, double samplerate, long maxvectorsize, long flags);

/** Activate envelope tracking in jcom.in~. 
 @param self		Pointer to this object.
 @param msg			The message sent to this object.
 @param argc		The number of arguments passed to the object.
 @param argv		Pointer to an array of atoms passed to the object.
 @see				in_update_amplitude
 */
void		in_return_amplitude_active(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);

/** Perform envelope tracking in jcom.in~.
 @param self		Pointer to this object.
 @see				in_return_amplitude_active
 */
void		in_update_amplitude(TTPtr self);

#else

/** Method used to pass messages from the module outlet. */
void		in_return_signal(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);

/** bang handler for jcom.in 
 @param self		Pointer to this object.
 @see				in_int, in_float, in_list, WrappedInputClass_anything
 */
void		in_bang(TTPtr self);

/** int handler for jcom.in 
 @param self		Pointer to this object.
 @param value		The value sent to this object.
 @see				in_bang, in_float, in_list, WrappedInputClass_anything
 */
void		in_int(TTPtr self, long value);

/** float handler for jcom.in 
 @param self		Pointer to this object.
 @param value		The value sent to this object.
 @see				in_bang, in_int, in_list, WrappedInputClass_anything
 */
void		in_float(TTPtr self, double value);

/** list handler for jcom.in 
 @param self		Pointer to this object.
 @param msg			The message sent to this object.
 @param argc		The number of arguments passed to the object.
 @param argv		Pointer to an array of atoms passed to the object.
 @see				in_bang, in_int, in_float, WrappedInputClass_anything
 */
void		in_list(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);

/** anything else handler for jcom.in 
 @param self		Pointer to this object.
 @param msg			The message sent to this object.
 @param argc		The number of arguments passed to the object.
 @param argv		Pointer to an array of atoms passed to the object.
 @see				in_bang, in_int, in_float, in_list
 */
void		WrappedInputClass_anything(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);
#endif


#pragma mark -
#pragma mark main

int TTCLASSWRAPPERMAX_EXPORT main(void)
{
	ModularSpec *spec = new ModularSpec;
	spec->_wrap = &WrapTTInputClass;
	spec->_new = &WrappedInputClass_new;
	spec->_free = &WrappedInputClass_free;
#ifndef JCOM_IN_TILDE
	spec->_any = &WrappedInputClass_anything;
#endif

#ifdef JCOM_IN_TILDE
	return wrapTTModularClassAsMaxClass(TT("Input"), "jcom.in~", NULL, spec);
#else
	return wrapTTModularClassAsMaxClass(TT("Input"), "jcom.in", NULL, spec);
#endif
	
}

void WrapTTInputClass(WrappedClassPtr c)
{
	class_addmethod(c->maxClass, (method)in_assist,						"assist",				A_CANT, 0L);
	
#ifdef JCOM_IN_TILDE
	class_addmethod(c->maxClass, (method)in_dsp,						"dsp", 					A_GIMME, 0L);
	class_addmethod(c->maxClass, (method)in_dsp64,						"dsp64",				A_CANT, 0);
	//class_addmethod(c->maxClass, (method)in_remoteaudio,				"remoteaudio",			A_CANT, 0);
	class_addmethod(c->maxClass, (method)in_return_amplitude_active,	"return_amplitude_active",	A_CANT, 0);
#else
	class_addmethod(c->maxClass, (method)in_return_signal,				"return_signal",		A_CANT, 0);
	
	class_addmethod(c->maxClass, (method)in_bang,						"bang", 				0L);
	class_addmethod(c->maxClass, (method)in_int,						"int", 					A_LONG, 0L);
	class_addmethod(c->maxClass, (method)in_float,						"float", 				A_FLOAT, 0L);
	class_addmethod(c->maxClass, (method)in_list,						"list", 				A_GIMME, 0L);
#endif
	
#ifdef JCOM_IN_TILDE
	// Setup our class to work with MSP
	class_dspinit(c->maxClass);
#endif

}

#pragma mark -
#pragma mark Object life

void WrappedInputClass_new(TTPtr self, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	long						i, number = 0;
	Atom						a;
	TTValue						v;
 	long						attrstart = attr_args_offset(argc, argv);			// support normal arguments
	
	if (attrstart && argv) 
		number = atom_getlong(argv);
	
	if (number < 1)
		number = 1;
	
	// Create Object, Inlets and Outlets
	
	x->inlets = (TTHandle)sysmem_newptr(sizeof(TTPtr) * number);
	x->outlets = (TTHandle)sysmem_newptr(sizeof(TTPtr) * number);
		
#ifdef JCOM_IN_TILDE
	
	jamoma_input_create_audio((ObjectPtr)x, &x->wrappedObject, number);
	 
	dsp_setup((t_pxobject *)x, number);	
	x->obj.z_misc = Z_NO_INPLACE | Z_PUT_FIRST;
	
	for (i=0; i < number; i++)
		outlet_new((t_pxobject *)x, "signal");
	
	// prepare signal info
	v.append(TTUInt16(number));		// numChannel
	v.append(0);					// vectorSize
	for (i = 0; i < number; i++)	// meter[i]
		v.append(0);
	
	for (i = 0; i < number; i++)	// peak[i]
		v.append(0);
	
	x->wrappedObject->setAttributeValue(TT("info"), v);
	
	// Prepare memory to store internal datas
	x->internals = new TTHash();
	
	// Prepare extra data
	x->extra = (t_extra*)malloc(sizeof(t_extra));
	EXTRA->clock = NULL;
	EXTRA->pollInterval = 150;
	
#else
	
	jamoma_input_create((ObjectPtr)x, &x->wrappedObject, number);
	
	for (i = number-1; i >= 1; i--)
		x->inlets[i] = proxy_new(x, i, &x->index);
	
	for (i = number-1; i >= 0; i--)
		x->outlets[i] = outlet_new(x, 0L);
#endif
	
	// handle attribute args
	attr_args_process(x, argc, argv);

	// The following must be deferred because we have to interrogate our box,
	// and our box is not yet valid until we have finished instantiating the object.
	// Trying to use a loadbang method instead is also not fully successful (as of Max 5.0.6)
	atom_setlong(&a, number);
	defer_low((ObjectPtr)x, (method)in_subscribe, NULL, 1, &a);
}

void WrappedInputClass_free(TTPtr self)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	
#ifdef JCOM_IN_TILDE
	dsp_free((t_pxobject *)x);					// Always call dsp_free first in this routine
	
	if (EXTRA->clock)
		freeobject((t_object *)EXTRA->clock);	// delete our clock
#endif
}

#pragma mark -
#pragma mark NodeLib association

void in_subscribe(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr x = (WrappedModularInstancePtr)self;
	TTValue			v, args;
	long			i, number = atom_getlong(argv);
	TTNodePtr		node = NULL;
	TTNodeAddressPtr nodeAddress, parentAddress;
	TTDataPtr		aData;
	TTString		outAddress, formatName, formatDescription;
	SymbolPtr		inAmplitudeInstance, inDescription;
	
	// if the subscription is successful
	if (!jamoma_subscriber_create((ObjectPtr)x, x->wrappedObject, TTADRS("in"), &x->subscriberObject)) {
		
		// get patcher
		x->patcherPtr = jamoma_patcher_get((ObjectPtr)x);
		
		// get the Node
		x->subscriberObject->getAttributeValue(TT("node"), v);
		v.get(0, (TTPtr*)&node);
		
		// get the Node address
		x->subscriberObject->getAttributeValue(TT("nodeAddress"), v);
		v.get(0, &nodeAddress);
		
		// observe /parent/out address in order to link/unlink with an Input object below
		node->getParent()->getAddress(&parentAddress);
		parentAddress = parentAddress->appendAddress(TTADRS("out"));
		outAddress = parentAddress->getCString();
		if (node->getInstance() != NO_INSTANCE) {
			outAddress += ".";
			outAddress += node->getInstance()->getCString();
		}
		x->wrappedObject->setAttributeValue(TT("outputAddress"), TTADRS(outAddress.data()));
		
#ifdef JCOM_IN_TILDE
		// make internal data to return in/amplitude
		v = TTValue(0., 1.);
		formatName = "amplitude.%d";
		formatDescription = "instant amplitude of the signal %d";
		
		for (i = 0; i < number; i++) {
			
			jamoma_edit_numeric_instance(&formatName, &inAmplitudeInstance, i+1);
			jamoma_edit_numeric_instance(&formatDescription, &inDescription, i+1);
			
			makeInternals_data(x, nodeAddress, TT(inAmplitudeInstance->s_name), NULL, x->patcherPtr, kTTSym_return, (TTObjectPtr*)&aData);
			aData->setAttributeValue(kTTSym_type, kTTSym_decimal);
			aData->setAttributeValue(kTTSym_tag, kTTSym_generic);
			aData->setAttributeValue(kTTSym_rangeBounds, v);
			aData->setAttributeValue(kTTSym_description, TT(inDescription->s_name));
			aData->setAttributeValue(kTTSym_dataspace, TT("gain"));
			aData->setAttributeValue(kTTSym_dataspaceUnit, TT("linear"));
		}
		
		// make internal data to parameter in/amplitude/active
		makeInternals_data(x, nodeAddress, TT("amplitude/active"), gensym("return_amplitude_active"), x->patcherPtr, kTTSym_parameter, (TTObjectPtr*)&aData);
		aData->setAttributeValue(kTTSym_type, kTTSym_integer);
		aData->setAttributeValue(kTTSym_tag, kTTSym_generic);
		v = TTValue(EXTRA->pollInterval);
		aData->setAttributeValue(kTTSym_valueDefault, v);
		v = TTValue(0, 1000);
		aData->setAttributeValue(kTTSym_rangeBounds, v);
		aData->setAttributeValue(kTTSym_rangeClipmode, kTTSym_low);
		aData->setAttributeValue(kTTSym_description, TT("set the sample rate of the amplitude follower"));
		
		// launch the clock to update amplitude regulary
		EXTRA->clock = clock_new(x, (method)in_update_amplitude);
		clock_delay(EXTRA->clock, EXTRA->pollInterval);
		//EXTRA->clock_is_set = 0;
		
#endif
		
		// expose bypass and mute attributes of TTInput as TTData in the tree structure
		x->subscriberObject->exposeAttribute(x->wrappedObject, kTTSym_bypass, kTTSym_parameter, &aData);
		aData->setAttributeValue(kTTSym_type, kTTSym_boolean);
		aData->setAttributeValue(kTTSym_tag, kTTSym_generic);
		aData->setAttributeValue(kTTSym_description, TT("When active, this attribute bypasses the model's processing algtorithm, letting incoming signal pass through unaffected"));
		v = TTValue(0);
		aData->setAttributeValue(kTTSym_valueDefault, v);			
		
		x->subscriberObject->exposeAttribute(x->wrappedObject, kTTSym_mute, kTTSym_parameter, &aData);
		aData->setAttributeValue(kTTSym_type, kTTSym_boolean);
		aData->setAttributeValue(kTTSym_tag, kTTSym_generic);
		aData->setAttributeValue(kTTSym_description, TT("When active, this attribute turns off model's inputs."));
		v = TTValue(0);
		aData->setAttributeValue(kTTSym_valueDefault, v);
	}
}


#pragma mark -
#pragma mark Methods bound to input/inlets

// Method for Assistance Messages
void in_assist(TTPtr self, TTPtr b, long msg, AtomCount arg, char *dst)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	
	if (msg==1)				// Inlets
		strcpy(dst, "(signal) input of the model");
	else if (msg==2) {		// Outlets
		if (arg < TTInputPtr(x->wrappedObject)->mNumber) 
			strcpy(dst, "(signal) connect to the algorithm");
		else 
			strcpy(dst, "dumpout");
	}
}

#ifndef JCOM_IN_TILDE
void in_bang(TTPtr self)
{
	in_list(self, _sym_bang, 0, NULL);
}

void in_int(TTPtr self, long value)
{
	t_atom a;
	
	atom_setlong(&a, value);
	in_list(self, _sym_int, 1, &a);
}

void in_float(TTPtr self, double value)
{
	t_atom a;
	
	atom_setfloat(&a, value);
	in_list(self, _sym_float, 1, &a);
}

void in_list(TTPtr self, t_symbol *msg, long argc, t_atom *argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTInputPtr					anInput = (TTInputPtr)x->wrappedObject;
	
	if (!anInput->mMute) {
		TTInputPtr(x->wrappedObject)->mIndex = proxy_getinlet((ObjectPtr)x);
		jamoma_input_send((TTInputPtr)x->wrappedObject, msg, argc, argv);
	}
}

void WrappedInputClass_anything(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTInputPtr					anInput = (TTInputPtr)x->wrappedObject;
	
	if (!anInput->mMute) {
		TTInputPtr(x->wrappedObject)->mIndex = proxy_getinlet((ObjectPtr)x);
		jamoma_input_send((TTInputPtr)x->wrappedObject, msg, argc, argv);
	}
}

void in_return_signal(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	
	long index = TTInputPtr(x->wrappedObject)->mIndex;
	
	// avoid blank before data
	if (msg == _sym_nothing)
		outlet_atoms(x->outlets[index], argc, argv);
	else
		outlet_anything(x->outlets[index], msg, argc, argv);
}
#endif

#pragma mark -
#pragma mark Methods relating to audio processing

#ifdef JCOM_IN_TILDE
// Perform Method - just pass the whole vector straight through
// (the work is all done in the dsp method)
t_int *in_perform(t_int *w)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)(w[1]);
	TTInputPtr					anInput = (TTInputPtr)x->wrappedObject;
	TTUInt8						numChannels = 0;
	TTUInt16					vectorSize = 0;
	short						i, j;
	t_float*					envelope;
	TTUInt16					n;
	float						currentvalue = 0;
	float						peakamp, peakvalue = 0;	// values for calculating metering
	
	// get numChannels and vectorSize
	if (anInput) {
		
		anInput->mInfo.get(info_numChannels, numChannels);
		anInput->mInfo.get(info_vectorSize, vectorSize);
		
		// Store the input from the inlets
		for (i=0; i < numChannels; i++) {
			j = (i*2) + 1;
			TTAudioSignalPtr(anInput->mSignalIn)->setVector(i, vectorSize, (TTFloat32*)w[j+1]);
		}
		
		// if signal is bypassed or muted : send a zero signal to the algorithm
		if (anInput->mBypass || anInput->mMute) TTAudioSignal::copy(*TTAudioSignalPtr(anInput->mSignalZero), *TTAudioSignalPtr(anInput->mSignalOut));
		// else copy in to out
		else TTAudioSignal::copy(*TTAudioSignalPtr(anInput->mSignalIn), *TTAudioSignalPtr(anInput->mSignalOut));
		
		// TODO : need to mix in input here from jcom.send~ objects
		
		// Send the input on to the outlets for the algorithm
		for (i=0; i < numChannels; i++) {
			j = (i*2) + 1;
			TTAudioSignalPtr(anInput->mSignalOut)->getVector(i, vectorSize, (TTFloat32*)w[j+2]);
			
			// metering
			if (!anInput->mMute) {
				envelope = (t_float *)(w[j+2]);
				peakvalue = 0.0;
				
				n = vectorSize;
				while (n--) {
					if ((*envelope) < 0 )						// get the current sample's absolute value
						currentvalue = -(*envelope);
					else
						currentvalue = *envelope;
					
					if (currentvalue > peakvalue) 				// if it's a new peak amplitude...
						peakvalue = currentvalue;
					envelope++; 								// increment pointer in the vector
				}
				
				// set meter[i]
				anInput->mInfo.set(info_startMeter+i, peakvalue);
				
				// set peak[i]
				anInput->mInfo.get(info_startMeter+numChannels+i, peakamp);
				if (peakvalue > peakamp)
					anInput->mInfo.set(info_startMeter+numChannels+i, peakvalue);
			}
		}
	}
	
	return w + ((numChannels*2)+2);
}

// DSP Method
void in_dsp(TTPtr self, t_signal **sp, short *count)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTInputPtr					anInput = (TTInputPtr)x->wrappedObject;
	short						i, j, k=0;
	void**						audioVectors = NULL;
	TTUInt8						numChannels = 0;
	TTUInt16					vectorsize = 0;
	
	audioVectors = (void**)sysmem_newptr(sizeof(void*) * ((anInput->mNumber * 2) + 1));
	audioVectors[k] = x;
	k++;
	
	for (i=0; i < anInput->mNumber; i++) {
		j = anInput->mNumber + i;
		if (count[i] || count[j]) {
			numChannels++;
			if (sp[i]->s_n > vectorsize)
				vectorsize = sp[i]->s_n;
			
			audioVectors[k] = sp[i]->s_vec;
			k++;
			audioVectors[k] = sp[j]->s_vec;
			k++;
		}
	}
	
	// keep numChannels and vectorSize
	anInput->mInfo.set(info_numChannels, numChannels);
	anInput->mInfo.set(info_vectorSize, vectorsize);
	
	anInput->mSignalIn->setAttributeValue(kTTSym_numChannels, numChannels);
	anInput->mSignalOut->setAttributeValue(kTTSym_numChannels, numChannels);
	anInput->mSignalIn->setAttributeValue(kTTSym_vectorSize, vectorsize);
	anInput->mSignalOut->setAttributeValue(kTTSym_vectorSize, vectorsize);
	
	// anInput->mSignalIn will be set in the perform method
	anInput->mSignalOut->sendMessage(kTTSym_alloc);
	
	dsp_addv(in_perform, k, audioVectors);
	sysmem_freeptr(audioVectors);
}

// Perform Method 64 bit - just pass the whole vector straight through
// (the work is all done in the dsp 64 bit method)
void in_perform64(TTPtr self, t_object *dsp64, double **ins, long numins, double **outs, long numouts, long sampleframes, long flags, void *userparam)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTInputPtr					anInput = (TTInputPtr)x->wrappedObject;
	TTUInt8						numChannels = 0;
	TTUInt16					vectorSize = 0;
	short						i; 
	
	// get numChannels and vectorSize
	if (anInput) {
		
		anInput->mInfo.get(info_numChannels, numChannels);
		anInput->mInfo.get(info_vectorSize, vectorSize);
		
		// Store the input from the inlets
		for (i=0; i < numChannels; i++)
			TTAudioSignalPtr(anInput->mSignalIn)->setVector(i, vectorSize, ins[i]);
		// if this doesn't work, I need to try setVector64Copy instead of setVector
		
		// TODO: need to mix in input here from jcom.send~ objects (as in the old code above)
		TTAudioSignal::copy(*TTAudioSignalPtr(anInput->mSignalIn), *TTAudioSignalPtr(anInput->mSignalOut));
		
		// Send the input on to the outlets for the algorithm
		for (short i=0; i < numChannels; i++)	
			TTAudioSignalPtr(anInput->mSignalOut)->getVectorCopy(i, vectorSize, outs[i]);
	}
}

// DSP64 method
void in_dsp64(TTPtr self, t_object *dsp64, short *count, double samplerate, long maxvectorsize, long flags)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTInputPtr					anInput = (TTInputPtr)x->wrappedObject;
	TTUInt8						numChannels = 0;
	short						i, j;
	
	// get numChannels and vectorSize
	if (anInput) {
		
		for (i=0; i < anInput->mNumber; i++) {
			j = anInput->mNumber + i;
			if (count[i] || count[j]) {
				numChannels++;			
			}
		}
		anInput->mInfo.set(info_numChannels, numChannels);
		
		anInput->mInfo.set(info_vectorSize, (TTUInt16)maxvectorsize);
		
		anInput->mSignalIn->setAttributeValue(TT("numChannels"), numChannels);
		anInput->mSignalOut->setAttributeValue(TT("numChannels"), numChannels);
		anInput->mSignalIn->setAttributeValue(TT("vectorSize"), (TTUInt16)maxvectorsize);
		anInput->mSignalOut->setAttributeValue(TT("vectorSize"),(TTUInt16)maxvectorsize);
		// mSignalIn will be set in the perform method
		anInput->mSignalOut->sendMessage(TT("alloc"));
		
		object_method(dsp64, gensym("dsp_add64"), x, in_perform64, 0, NULL); 
	}
}

void in_return_amplitude_active(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr x = (WrappedModularInstancePtr)self;
	TTBoolean clockStopped;
	
	if (argc && argv) {
		
		clockStopped = EXTRA->pollInterval == 0;
		
		EXTRA->pollInterval = atom_getlong(argv);
		
		// start our clock
		if (clockStopped && EXTRA->pollInterval)
			clock_delay(EXTRA->clock, EXTRA->pollInterval);
	}
}

void in_update_amplitude(TTPtr self)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTInputPtr		anInput = (TTInputPtr)x->wrappedObject;
	float			metervalue;
	short			i;
	TTValue			keys;
	TTSymbolPtr		name;
	TTValue			storedObject;
	TTObjectPtr		anObject;
	TTErr			err;
	
	//EXTRA->clock_is_set = 0;
	
	if (anInput) {
		
		if (x->internals) {
			if (!x->internals->isEmpty()) {
				
				err = x->internals->getKeys(keys);
				
				if (!err) {
					for (i=0; i<keys.getSize(); i++) {
						
						keys.get(i, &name);
						
						if (name == TT("amplitude/active"))
							continue;
						
						// get internal data object
						x->internals->lookup(name, storedObject);
						storedObject.get(0, (TTPtr*)&anObject);
						
						// get current meter value
						anInput->mInfo.get(info_startMeter+i, metervalue);
						//anInput->mInfo.get(info_startMeter+numChannels+i, peakamp);
						
						// set the value
						anObject->setAttributeValue(kTTSym_value, metervalue);
					}
				}
			}
		}
		
		// restart the clock
		if (EXTRA->pollInterval)
			clock_delay(EXTRA->clock, EXTRA->pollInterval);
	}
}

#endif // JCOM_IN_TILDE
