/* 
 * jcom.in (~) (TODO %)
 * External for Jamoma: manage any signal inputs
 * Copyright © 2010 by Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTModularClassWrapperMax.h"

#ifdef JCOM_IN_TILDE

#define info_numChannels 0
#define info_vectorSize 1
#define info_startMeter 2

// This is used to store extra data
typedef struct extra {
	
	void	*clock;			///< clock to update amplitude returns
	//short	clock_is_set;	///< is the clock currently scheduled to fire?
	
} t_extra;
#define EXTRA ((t_extra*)x->extra)

// Constants
const double kPollIntervalDefault = 150;	// for amplitude updates

#endif

// Definitions
void		WrapTTInputClass(WrappedClassPtr c);
void		WrappedInputClass_new(TTPtr self, AtomCount argc, AtomPtr argv);
void		WrappedInputClass_free(TTPtr self);
void		in_assist(TTPtr self, TTPtr b, long msg, AtomCount arg, char *dst);
void		in_subscribe(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);

#ifdef JCOM_IN_TILDE
t_int*		in_perform(t_int *w);
void		in_dsp(TTPtr self, t_signal **sp, short *count);
void		in_update_amplitude(TTPtr self);

#else

void		in_return_signal(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);
void		in_bang(TTPtr self);
void		in_int(TTPtr self, long value);
void		in_float(TTPtr self, double value);
void		in_list(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);
void		WrappedInputClass_anything(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);
#endif



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
	//class_addmethod(c->maxClass, (method)in_remoteaudio,				"remoteaudio",			A_CANT, 0);
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

void in_subscribe(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr x = (WrappedModularInstancePtr)self;
	TTValue			v, args;
	long			i, number = atom_getlong(argv);
	TTNodePtr		node = NULL;
	TTSymbolPtr		nodeAddress, parentAddress;
	TTDataPtr		aData;
	TTString		outAddress;
	SymbolPtr		inAmplitudeInstance, inDescription;
	
	// if the subscription is successful
	if (!jamoma_subscriber_create((ObjectPtr)x, x->wrappedObject, gensym("/in"), &x->subscriberObject)) {
		
		// get patcher
		x->patcherPtr = jamoma_patcher_get((ObjectPtr)x);
		
		// get the Node
		x->subscriberObject->getAttributeValue(TT("node"), v);
		v.get(0, (TTPtr*)&node);
		
		// get the Node address
		x->subscriberObject->getAttributeValue(TT("nodeAddress"), v);
		v.get(0, &nodeAddress);
		
		// observe /parent/out address in order to link/unlink with an Input object below
		node->getParent()->getOscAddress(&parentAddress, S_SEPARATOR);
		outAddress = parentAddress->getCString();
		outAddress += "/out";
		if (node->getInstance() != NO_INSTANCE) {
			outAddress += ".";
			outAddress += node->getInstance()->getCString();
		}
		x->wrappedObject->setAttributeValue(TT("outputAddress"), TT(outAddress.data()));
		
#ifdef JCOM_IN_TILDE
		// set audio type
		x->wrappedObject->setAttributeValue(kTTSym_type, TT("audio"));
#else
		// set control type
		x->wrappedObject->setAttributeValue(kTTSym_type, TT("control"));
#endif
		
#ifdef JCOM_IN_TILDE
		// make internal data to return in/amplitude
		v = TTValue(0., 1.);
		for (i = 0; i < number; i++) {
			
			jamoma_edit_numeric_instance("amplitude.%d", &inAmplitudeInstance, i+1);
			jamoma_edit_numeric_instance("instant amplitude of the signal %d", &inDescription, i+1);
			
			makeInternals_data(x, nodeAddress, TT(inAmplitudeInstance->s_name), NULL, x->patcherPtr, kTTSym_return, (TTObjectPtr*)&aData);
			aData->setAttributeValue(kTTSym_type, kTTSym_decimal);
			aData->setAttributeValue(kTTSym_tag, kTTSym_generic);
			aData->setAttributeValue(kTTSym_rangeBounds, v);
			aData->setAttributeValue(kTTSym_description, TT(inDescription->s_name));
			aData->setAttributeValue(kTTSym_dataspace, TT("gain"));
			aData->setAttributeValue(kTTSym_dataspaceUnit, TT("linear"));
		}
		
		// launch the clock to update amplitude regulary
		EXTRA->clock = clock_new(x, (method)in_update_amplitude);
		clock_delay(EXTRA->clock, kPollIntervalDefault);
		//EXTRA->clock_is_set = 0;
#endif
		
		// expose bypass and mute attributes of TTInput as TTData in the tree structure
		x->subscriberObject->exposeAttribute(x->wrappedObject, kTTSym_bypass, kTTSym_parameter, &aData);
		aData->setAttributeValue(kTTSym_type, kTTSym_boolean);
		aData->setAttributeValue(kTTSym_tag, kTTSym_generic);
		aData->setAttributeValue(kTTSym_description, TT("When active, this attribute bypasses the model's processing algtorithm, letting incoming signal pass through unaffected"));
		
		x->subscriberObject->exposeAttribute(x->wrappedObject, kTTSym_mute, kTTSym_parameter, &aData);
		aData->setAttributeValue(kTTSym_type, kTTSym_boolean);
		aData->setAttributeValue(kTTSym_tag, kTTSym_generic);
		aData->setAttributeValue(kTTSym_description, TT("When active, this attribute turns off model's inputs."));
	}
}

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
	
	if (x->internals) {
		if (!x->internals->isEmpty()) {
			
			err = x->internals->getKeys(keys);
			
			if (!err) {
				for (i=0; i<keys.getSize(); i++) {
					
					keys.get(i, &name);
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
	
	clock_delay(EXTRA->clock, kPollIntervalDefault); // restart the clock
}

#endif // JCOM_IN_TILDE
