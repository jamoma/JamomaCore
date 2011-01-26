/* 
 * jcom.out (~) (TODO %)
 * External for Jamoma: manage any signal outputs
 * Copyright © 2010 by Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTModularClassWrapperMax.h"

#ifdef JCOM_OUT_TILDE

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
void		WrapTTOutputClass(WrappedClassPtr c);
void		WrappedOutputClass_new(TTPtr self, AtomCount argc, AtomPtr argv);
void		WrappedOutputClass_free(TTPtr self);
void		out_assist(TTPtr self, TTPtr b, long msg, AtomCount arg, char *dst);
void		out_build(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);

//TODO :	void out_register_preview(t_out *x, void *preview_object){ x->preview_object = preview_object; }

#ifdef JCOM_OUT_TILDE
t_int*		out_perform(t_int *w);
void		out_dsp(TTPtr self, t_signal **sp, short *count);
void		out_update_amplitude(TTPtr self);

#else

void		out_return_signal(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);
void		out_bang(TTPtr self);
void		out_int(TTPtr self, long value);
void		out_float(TTPtr self, double value);
void		out_list(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);
void		WrappedOutputClass_anything(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);
#endif



int TTCLASSWRAPPERMAX_EXPORT main(void)
{
	ModularSpec *spec = new ModularSpec;
	spec->_wrap = &WrapTTOutputClass;
	spec->_new = &WrappedOutputClass_new;
	spec->_free = &WrappedOutputClass_free;
#ifndef JCOM_OUT_TILDE
	spec->_any = &WrappedOutputClass_anything;
#endif
	
#ifdef JCOM_OUT_TILDE
	return wrapTTModularClassAsMaxClass(TT("Output"), "jcom.out~", NULL, spec);
#else
	return wrapTTModularClassAsMaxClass(TT("Output"), "jcom.out", NULL, spec);
#endif
	
}

void WrapTTOutputClass(WrappedClassPtr c)
{
	class_addmethod(c->maxClass, (method)out_assist,						"assist",				A_CANT, 0L);
	
	//class_addmethod(c, (method)out_register_preview,						"register_preview",		A_CANT, 0L);
	
#ifdef JCOM_OUT_TILDE
	class_addmethod(c->maxClass, (method)out_dsp,							"dsp", 					A_GIMME, 0L);
	//class_addmethod(c->maxClass, (method)out_remoteaudio,					"remoteaudio",			A_CANT, 0);
	//class_addmethod(c, (method)out_getAudioForChannel,					"getAudioForChannel",	A_CANT, 0);
	
#else
	class_addmethod(c->maxClass, (method)out_return_signal,					"return_signal",		A_CANT, 0);
	
	class_addmethod(c->maxClass, (method)out_bang,							"bang", 				0L);
	class_addmethod(c->maxClass, (method)out_int,							"int", 					A_LONG, 0L);
	class_addmethod(c->maxClass, (method)out_float,							"float", 				A_FLOAT, 0L);
	class_addmethod(c->maxClass, (method)out_list,							"list", 				A_GIMME, 0L);
#endif
		
#ifdef JCOM_OUT_TILDE
	// Setup our class to work with MSP
	class_dspinit(c->maxClass);
#endif
	
}

void WrappedOutputClass_new(TTPtr self, AtomCount argc, AtomPtr argv)
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
	
#ifdef JCOM_OUT_TILDE
	
	jamoma_output_create_audio((ObjectPtr)x, &x->wrappedObject, number);
	
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
	
#else
	
	jamoma_output_create((ObjectPtr)x, &x->wrappedObject, number);
	
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
	defer_low((ObjectPtr)x, (method)out_build, NULL, 1, &a);
}

void WrappedOutputClass_free(TTPtr self)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	
#ifdef JCOM_OUT_TILDE
	dsp_free((t_pxobject *)x);				// Always call dsp_free first in this routine
	freeobject((t_object *)EXTRA->clock);	// delete our clock
#endif
}

void out_build(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTValue						v, args;
	long						i, number = atom_getlong(argv);
	TTNodePtr					node = NULL;
	TTBoolean					newInstance;
	TTSymbolPtr					nodeAddress, relativeAddress, parentAddress;
	TTDataPtr					aData;
	TTPtr						context;
	TTString					inAddress;
	SymbolPtr					outAmplitudeInstance, outDescription;
	
	jamoma_patcher_type_and_class((ObjectPtr)x, &x->patcherType, &x->patcherClass);
	jamoma_subscriber_create((ObjectPtr)x, x->wrappedObject, gensym("/out"), x->patcherType, &x->subscriberObject);
	
	// if the subscription is successful
	if (x->subscriberObject) {
		
		// Is a new instance have been created ?
		x->subscriberObject->getAttributeValue(TT("newInstanceCreated"), v);
		v.get(0, newInstance);
		
		if (newInstance) {
			x->subscriberObject->getAttributeValue(TT("relativeAddress"), v);
			v.get(0, &relativeAddress);
			object_warn((t_object*)x, "Jamoma cannot create multiple jcom.in with the same OSC identifier (/out).  Using %s instead.", relativeAddress->getCString());
		}
		
		// debug
		x->subscriberObject->getAttributeValue(TT("nodeAddress"), v);
		v.get(0, &nodeAddress);
		object_post((ObjectPtr)x, "address = %s", nodeAddress->getCString());
		
		// get the Node
		x->subscriberObject->getAttributeValue(TT("node"), v);
		v.get(0, (TTPtr*)&node);
		
		// attach to the patcher to be notified of his destruction
		context = node->getContext();
		// Crash : object_attach_byptr_register(x, context, _sym_box);
		
		// observe /parent/in address in order to link/unlink with an Input object below
		node->getParent()->getOscAddress(&parentAddress, S_SEPARATOR);
		inAddress = parentAddress->getCString();
		inAddress += "/in";
		if (node->getInstance() != NO_INSTANCE) {
			inAddress += ".";
			inAddress += node->getInstance()->getCString();
		}
		x->wrappedObject->setAttributeValue(TT("inputAddress"), TT(inAddress.data()));
		
#ifdef JCOM_OUT_TILDE
		// set audio type
		x->wrappedObject->setAttributeValue(kTTSym_type, TT("audio"));
#else
		// set control type
		x->wrappedObject->setAttributeValue(kTTSym_type, TT("control"));
#endif

#ifdef JCOM_OUT_TILDE
		
		// make internal data to return out/amplitude
		v = TTValue(0., 1.);
		for (i = 0; i < number; i++) {
			
			jamoma_edit_numeric_instance("amplitude.%d", &outAmplitudeInstance, i+1);
			jamoma_edit_numeric_instance("instant amplitude of the signal %d", &outDescription, i+1);
			
			makeInternals_data(x, nodeAddress, TT(outAmplitudeInstance->s_name), NULL, context, kTTSym_return, (TTObjectPtr*)&aData);
			aData->setAttributeValue(kTTSym_type, kTTSym_decimal);
			aData->setAttributeValue(kTTSym_tag, kTTSym_generic);
			aData->setAttributeValue(kTTSym_rangeBounds, v);
			aData->setAttributeValue(kTTSym_description, TT(outDescription->s_name));
			aData->setAttributeValue(kTTSym_dataspace, TT("gain"));
			aData->setAttributeValue(kTTSym_dataspaceUnitActive, TT("linear"));
		}
		
		// launch the clock to update amplitude regulary
		EXTRA->clock = clock_new(x, (method)out_update_amplitude);
		clock_delay(EXTRA->clock, kPollIntervalDefault);
		//EXTRA->clock_is_set = 0;
#endif
		
		// expose attributes of TTOutput as TTData in the tree structure
		x->subscriberObject->exposeAttribute(x->wrappedObject, kTTSym_mute, kTTSym_parameter, &aData);
		aData->setAttributeValue(kTTSym_type, kTTSym_boolean);
		aData->setAttributeValue(kTTSym_tag, kTTSym_generic);
		aData->setAttributeValue(kTTSym_description, TT("When active, this attribute turns off model's outputs."));

#ifdef JCOM_OUT_TILDE
		x->subscriberObject->exposeAttribute(x->wrappedObject, kTTSym_mix, kTTSym_parameter, &aData);
		aData->setAttributeValue(kTTSym_type, kTTSym_decimal);
		aData->setAttributeValue(kTTSym_tag, kTTSym_generic);
		v = TTValue(0., 100.);
		aData->setAttributeValue(kTTSym_rangeBounds, v);
		v = TTValue(100.);
		aData->setAttributeValue(kTTSym_valueDefault, v);							// Assume 100%, so that processed signal is passed through
		aData->setAttributeValue(kTTSym_description, TT("Controls the wet/dry mix of the model's processing routine in percent."));
		
		x->subscriberObject->exposeAttribute(x->wrappedObject, kTTSym_gain, kTTSym_parameter, &aData);
		aData->setAttributeValue(kTTSym_type, kTTSym_decimal);
		aData->setAttributeValue(kTTSym_tag, kTTSym_generic);
		v = TTValue(0., 127.);
		aData->setAttributeValue(kTTSym_rangeBounds, v);
		v = TTValue(100.);
		aData->setAttributeValue(kTTSym_valueDefault, v);
		aData->setAttributeValue(kTTSym_description, TT("Set gain of model's outputs (as MIDI value by default)."));
#endif
		
#ifndef JCOM_OUT_TILDE		
		x->subscriberObject->exposeAttribute(x->wrappedObject, kTTSym_freeze, kTTSym_parameter, &aData);
		aData->setAttributeValue(kTTSym_type, kTTSym_boolean);
		aData->setAttributeValue(kTTSym_tag, kTTSym_generic);
		aData->setAttributeValue(kTTSym_description, TT("Freezes the last state of model's outputs from the  processing algorithm."));
		
		x->subscriberObject->exposeAttribute(x->wrappedObject, kTTSym_preview, kTTSym_parameter, &aData);
		aData->setAttributeValue(kTTSym_type, kTTSym_boolean);
		aData->setAttributeValue(kTTSym_tag, kTTSym_generic);
		aData->setAttributeValue(kTTSym_description, TT("Turns on/off preview display of model's outputs from the  processing algorithm."));
#endif
	}
}

// Method for Assistance Messages
void out_assist(TTPtr self, TTPtr b, long msg, AtomCount arg, char *dst)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	
	if (msg==1)				// Inlets
		strcpy(dst, "(signal) connect to the algorithm");
	else if (msg==2) {		// Outlets
		if (arg < TTOutputPtr(x->wrappedObject)->mNumber) 
			strcpy(dst, "(signal) output of the model");
		else 
			strcpy(dst, "dumpout");
	}
}

#ifndef JCOM_OUT_TILDE
void out_bang(TTPtr self)
{
	out_list(self, _sym_bang, 0, NULL);
}

void out_int(TTPtr self, long value)
{
	t_atom a;
	
	atom_setlong(&a, value);
	out_list(self, _sym_int, 1, &a);
}

void out_float(TTPtr self, double value)
{
	t_atom a;
	
	atom_setfloat(&a, value);
	out_list(self, _sym_float, 1, &a);
}

void out_list(TTPtr self, t_symbol *msg, long argc, t_atom *argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	
	TTOutputPtr(x->wrappedObject)->mIndex = proxy_getinlet((ObjectPtr)x);
	jamoma_output_send((TTOutputPtr)x->wrappedObject, msg, argc, argv);
}

void WrappedOutputClass_anything(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	
	TTOutputPtr(x->wrappedObject)->mIndex = proxy_getinlet((ObjectPtr)x);
	jamoma_output_send((TTOutputPtr)x->wrappedObject, msg, argc, argv);
}

void out_return_signal(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	
	long index = TTOutputPtr(x->wrappedObject)->mIndex;
	
	// filter bogus list symbol for jitter matrix case
	if (msg == _sym_list)
		outlet_atoms(x->outlets[index], argc, argv);
	else
		outlet_anything(x->outlets[index], msg, argc, argv);
}
#endif

#ifdef JCOM_OUT_TILDE
// Perform Method - just pass the whole vector straight through
// (the work is all done in the dsp method)
t_int *out_perform(t_int *w)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)(w[1]);
	TTOutputPtr					anOutput = (TTOutputPtr)x->wrappedObject;
	TTInputPtr					anInput = anOutput->mInputObject;
	TTUInt8						inNumCh, numChannels = 0;
	TTUInt16					vectorSize = 0;
	short						i, j;
	t_float*					envelope;
	TTUInt16					n;
	float						currentvalue = 0;
	float						peakamp, peakvalue = 0;	// values for calculating metering
	
	// get numChannels and vectorSize
	anOutput->mInfo.get(info_numChannels, numChannels);
	anOutput->mInfo.get(info_vectorSize, vectorSize);
	
	// Store the input from the inlets
	for (i=0; i < numChannels; i++) {
		j = (i*2) + 1;
		TTAudioSignalPtr(anOutput->mSignalIn)->setVector(i, vectorSize, (TTFloat32*)w[j+1]);
	}
	
	// if the output signal is muted
	if (anOutput->mMute)
		TTAudioSignal::copy(*TTAudioSignalPtr(anOutput->mSignalZero), *TTAudioSignalPtr(anOutput->mSignalOut));
	
	// if input signal exists
	else if (anInput) {
		
		// if input signal is bypassed
		if (anInput->mBypass)
			// copy input (in Temp)
			TTAudioSignal::copy(*TTAudioSignalPtr(anInput->mSignalIn), *TTAudioSignalPtr(anOutput->mSignalTemp));
		
		// otherwise mix input and output signals
		else {
			
			// perform bypass/mix control (in Temp)
			anInput->mInfo.get(info_numChannels, inNumCh);
			if (inNumCh == numChannels)
				TTAudioObjectPtr(anOutput->mMixUnit)->process(TTAudioSignalPtr(anInput->mSignalOut), TTAudioSignalPtr(anOutput->mSignalIn), TTAudioSignalPtr(anOutput->mSignalTemp));	
			else
				TTAudioSignal::copy(*TTAudioSignalPtr(anOutput->mSignalIn), *TTAudioSignalPtr(anOutput->mSignalTemp));
		}
		
		// then perform gain control (from Temp)
		TTAudioObjectPtr(anOutput->mGainUnit)->process(TTAudioSignalPtr(anOutput->mSignalTemp), TTAudioSignalPtr(anOutput->mSignalOut));
	
	// otherwise just perform gain control
	} else
		TTAudioObjectPtr(anOutput->mGainUnit)->process(TTAudioSignalPtr(anOutput->mSignalIn), TTAudioSignalPtr(anOutput->mSignalOut));
		
	
	// Send signal on to the outlets 
	for (i=0; i<numChannels; i++) {
		j = (i*2) + 1;
		TTAudioSignalPtr(anOutput->mSignalOut)->getVector(i, vectorSize, (TTFloat32*)w[j+2]);
		
		// metering
		if (!anOutput->mMute) {
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
			anOutput->mInfo.set(info_startMeter+i, peakvalue);
			
			// set peak[i]
			anOutput->mInfo.get(info_startMeter+numChannels+i, peakamp);
			if (peakvalue > peakamp)
				anOutput->mInfo.set(info_startMeter+numChannels+i, peakvalue);
		}
	}
	
	return w + ((numChannels*2)+2);
}

// DSP Method
void out_dsp(TTPtr self, t_signal **sp, short *count)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTOutputPtr					anOutput = (TTOutputPtr)x->wrappedObject;
	short						i, j, k=0;
	void**						audioVectors = NULL;
	TTUInt8						numChannels = 0;
	TTUInt16					vectorsize = sp[0]->s_n;
	int							sr = sp[0]->s_sr;
	
	anOutput->mRampGainUnit->setAttributeValue(kTTSym_sampleRate, sr);	// convert midi to db for tap_gain
	anOutput->mRampMixUnit->setAttributeValue(kTTSym_sampleRate, sr);	// convert midi to db for tap_gain
	
	audioVectors = (void**)sysmem_newptr(sizeof(void*) * ((anOutput->mNumber * 2) + 1));
	audioVectors[k] = x;
	k++;
	
	for (i=0; i < anOutput->mNumber; i++) {
		j = anOutput->mNumber + i;
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
	anOutput->mInfo.set(info_numChannels, numChannels);
	anOutput->mInfo.set(info_vectorSize, vectorsize);
	
	anOutput->mSignalIn->setAttributeValue(kTTSym_numChannels, numChannels);
	anOutput->mSignalOut->setAttributeValue(kTTSym_numChannels, numChannels);
	anOutput->mSignalTemp->setAttributeValue(kTTSym_numChannels, numChannels);
	anOutput->mSignalZero->setAttributeValue(kTTSym_numChannels, numChannels);
	
	anOutput->mSignalIn->setAttributeValue(kTTSym_vectorSize, vectorsize);
	anOutput->mSignalOut->setAttributeValue(kTTSym_vectorSize, vectorsize);
	anOutput->mSignalTemp->setAttributeValue(kTTSym_vectorSize, vectorsize);
	anOutput->mSignalZero->setAttributeValue(kTTSym_vectorSize, vectorsize);
	
	//audioIn will be set in the perform method
	anOutput->mSignalOut->sendMessage(kTTSym_alloc);
	anOutput->mSignalTemp->sendMessage(kTTSym_alloc);
	anOutput->mSignalZero->sendMessage(kTTSym_alloc);
	anOutput->mSignalZero->sendMessage(kTTSym_clear);
	
	dsp_addv(out_perform, k, audioVectors);
	sysmem_freeptr(audioVectors);
}

void out_update_amplitude(TTPtr self)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTOutputPtr		anOutput = (TTOutputPtr)x->wrappedObject;
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
					anOutput->mInfo.get(info_startMeter+i, metervalue);
					//anOutput->mInfo.get(info_startMeter+numChannels+i, peakamp);
					
					// set the value
					anObject->setAttributeValue(kTTSym_value, metervalue);
				}
			}
		}
	}
	
	clock_delay(EXTRA->clock, kPollIntervalDefault); // restart the clock
}

#endif // JCOM_OUT_TILDE
