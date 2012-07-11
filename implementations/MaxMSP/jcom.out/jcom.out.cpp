/* 
 * jcom.out (~) (TODO %)
 * External for Jamoma: manage any signal outputs
 * By Tim Place and Théo de la Hogue, Copyright © 2010
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
	
	void		*clock;			///< Clock to update amplitude returns.
	TTUInt32	pollInterval;	///< The sample rate of the amplitude follower.
	TTHashPtr	instanceTable;	///< A table to associate "amplitude.N" to N for quick instance number access
	//short	clock_is_set;		///< Is the clock currently scheduled to fire?
	
} t_extra;
#define EXTRA ((t_extra*)x->extra)

#endif


// Definitions

/** Wrap the jcom.out class as a Max object.
 @param c			The class to be wrapped
 @see				WrappedOutputClass_new, WrappedOutputClass_free
 */
void		WrapTTOutputClass(WrappedClassPtr c);

/** Wrapper for the jcom.out constructor class, called when an instance is created. 
 @param self		Pointer to this object.
 @param argc		The number of arguments passed to the object.
 @param argv		Pointer to an array of atoms passed to the object.
 @see				WrappedOutputClass_free, out_subscribe
 */
void		WrappedOutputClass_new(TTPtr self, AtomCount argc, AtomPtr argv);

/** Wrapper for the jcom.out deconstructor class, called when an instance is destroyed. 
 @param self		Pointer to this object.
 @see				WrappedOutputClass_new
 */
void		WrappedOutputClass_free(TTPtr self);

/** Assistance Method. 
 @param self		Pointer to this object.
 @param b			Pointer to (exactly what?)
 @param msg			The message passed to the object.
 @param arg			
 @param dst			Pointer to the destination that assistance strings are passed to for display.
 */
void		out_assist(TTPtr self, TTPtr b, long msg, AtomCount arg, char *dst);

/** Associate jcom.out(~) with NodeLib. This is a prerequisit for communication with other Jamoma object in the module and beyond.  */
void		out_subscribe(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);

//TODO :	void out_register_preview(t_out *x, void *preview_object){ x->preview_object = preview_object; }

#ifdef JCOM_OUT_TILDE

/** jcom.out~ 32-bit MSP perform method (for Max 5). Only defined for jcom.out~. */
t_int*		out_perform(t_int *w);

/** jcom.out~ 32-bit DSP method (for Max 5).Only defined for jcom.out~. */
void		out_dsp(TTPtr self, t_signal **sp, short *count);

/** jcom.out~ 64-bit MSP perform method (for Max 6). Only defined for jcom.out~. */
void		out_perform64(TTPtr self, t_object *dsp64, double **ins, long numins, double **outs, long numouts, long sampleframes, long flags, void *userparam);

/** jcom.out~ 64-bit DSP method (for Max 6). Only defined for jcom.out~. */
void		out_dsp64(TTPtr self, t_object *dsp64, short *count, double samplerate, long maxvectorsize, long flags);

/** Activate envelope tracking in jcom.out~. 
 @param self		Pointer to this object.
 @param msg			The message sent to this object.
 @param argc		The number of arguments passed to the object.
 @param argv		Pointer to an array of atoms passed to the object.
 @see				out_update_amplitude
 */
void		out_return_amplitude_active(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);

/** Perform envelope tracking in jcom.out~.
 @param self		Pointer to this object.
 @see				out_return_amplitude_active
 */
void		out_update_amplitude(TTPtr self);

/** Method used to notify that a jcom.in is linked/unlinked to the jcom.out
 @param self		Pointer to this object.
 @param msg			The message sent to this object.
 @param argc		The number of arguments passed to the object.
 @param argv		Pointer to an array of atoms passed to the object.
 @see				out_subscribe
 */
void		out_return_link(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);

#else

/** Method used to pass messages from the module outlet. */
void		out_return_signal(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);

/** bang handler for jcom.out 
 @param self		Pointer to this object.
 @see				out_int, out_float, out_list, WrappedOutputClass_anything
 */
void		out_bang(TTPtr self);

/** int handler for jcom.out 
 @param self		Pointer to this object.
 @param value		The value sent to this object.
 @see				out_bang, out_float, out_list, WrappedOutputClass_anything
 */
void		out_int(TTPtr self, long value);

/** float handler for jcom.out 
 @param self		Pointer to this object.
 @param value		The value sent to this object.
 @see				out_bang, out_int, out_list, WrappedOutputClass_anything
 */
void		out_float(TTPtr self, double value);

/** list handler for jcom.out 
 @param self		Pointer to this object.
 @param msg			The message sent to this object.
 @param argc		The number of arguments passed to the object.
 @param argv		Pointer to an array of atoms passed to the object.
 @see				out_bang, out_int, out_float, WrappedOutputClass_anything
 */
void		out_list(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);

/** anything else handler for jcom.out 
 @param self		Pointer to this object.
 @param msg			The message sent to this object.
 @param argc		The number of arguments passed to the object.
 @param argv		Pointer to an array of atoms passed to the object.
 @see				out_bang, out_int, out_float, out_list
 */
void		WrappedOutputClass_anything(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);

#endif

#pragma mark -
#pragma mark main

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
	class_addmethod(c->maxClass, (method)out_dsp64,							"dsp64",				A_CANT, 0);
	//class_addmethod(c->maxClass, (method)out_remoteaudio,					"remoteaudio",			A_CANT, 0);
	class_addmethod(c->maxClass, (method)out_return_amplitude_active,		"return_amplitude_active",	A_CANT, 0);
	//class_addmethod(c, (method)out_getAudioForChannel,					"getAudioForChannel",	A_CANT, 0);
	class_addmethod(c->maxClass, (method)out_return_link,					"return_link",			A_CANT, 0);
	
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

#pragma mark -
#pragma mark Object life

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
	EXTRA->clock = NULL;
	EXTRA->pollInterval = 150;
	EXTRA->instanceTable = new TTHash();
	
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
	defer_low((ObjectPtr)x, (method)out_subscribe, NULL, 1, &a);
}

void WrappedOutputClass_free(TTPtr self)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	
#ifdef JCOM_OUT_TILDE
	dsp_free((t_pxobject *)x);				// Always call dsp_free first in this routine
	
	if (EXTRA->clock)
		freeobject((t_object *)EXTRA->clock);	// delete our clock
#endif
}

#pragma mark -
#pragma mark NodeLib association

void out_subscribe(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTValue						v, args;
	long						i, number = atom_getlong(argv);
	TTNodePtr					node = NULL;
	TTNodeAddressPtr			nodeAddress, parentAddress;
	TTDataPtr					aData;
	TTString					inAddress, formatName, formatDescription;;
	SymbolPtr					outAmplitudeInstance, outDescription;
	
	// if the subscription is successful
	if (!jamoma_subscriber_create((ObjectPtr)x, x->wrappedObject, TTADRS("out"), &x->subscriberObject)) {
		
		// get patcher
		x->patcherPtr = jamoma_patcher_get((ObjectPtr)x);
		
		// get the Node
		x->subscriberObject->getAttributeValue(TT("node"), v);
		v.get(0, (TTPtr*)&node);
		
		// get the Node address
		x->subscriberObject->getAttributeValue(TT("nodeAddress"), v);
		v.get(0, &nodeAddress);
		
		// observe /parent/in address in order to link/unlink with an Input object below
		node->getParent()->getAddress(&parentAddress);
		parentAddress = parentAddress->appendAddress(TTADRS("in"));
		inAddress = parentAddress->getCString();
		if (node->getInstance() != NO_INSTANCE) {
			inAddress += ".";
			inAddress += node->getInstance()->getCString();
		}
		x->wrappedObject->setAttributeValue(TT("inputAddress"), TTADRS(inAddress.data()));

#ifdef JCOM_OUT_TILDE
		
		// make internal data to return out/amplitude
		v = TTValue(0., 1.);
		formatName = "amplitude.%d";
		formatDescription = "instant amplitude of the signal %d";
		
		for (i = 0; i < number; i++) {
			
			jamoma_edit_numeric_instance(&formatName, &outAmplitudeInstance, i+1);
			jamoma_edit_numeric_instance(&formatDescription, &outDescription, i+1);
			
			makeInternals_data(x, nodeAddress, TT(outAmplitudeInstance->s_name), NULL, x->patcherPtr, kTTSym_return, (TTObjectPtr*)&aData);
			aData->setAttributeValue(kTTSym_type, kTTSym_decimal);
			aData->setAttributeValue(kTTSym_tag, kTTSym_generic);
			aData->setAttributeValue(kTTSym_rangeBounds, v);
			aData->setAttributeValue(kTTSym_description, TT(outDescription->s_name));
			aData->setAttributeValue(kTTSym_dataspace, TT("gain"));
			aData->setAttributeValue(kTTSym_dataspaceUnit, TT("linear"));
			
			// store name and index to retrieve instance number in the update_amplitude method
			v = TTValue((TTUInt32)i);
			EXTRA->instanceTable->append(TT(outAmplitudeInstance->s_name), v);
		}
		
		// make internal data to parameter out/amplitude/active
		makeInternals_data(x, nodeAddress, TT("amplitude/active"), gensym("return_amplitude_active"), x->patcherPtr, kTTSym_parameter, (TTObjectPtr*)&aData);
		aData->setAttributeValue(kTTSym_type, kTTSym_integer);
		aData->setAttributeValue(kTTSym_tag, kTTSym_generic);
		v = TTValue((int)EXTRA->pollInterval);
		aData->setAttributeValue(kTTSym_valueDefault, v);
		v = TTValue(0, 1000);
		aData->setAttributeValue(kTTSym_rangeBounds, v);
		aData->setAttributeValue(kTTSym_rangeClipmode, kTTSym_low);
		aData->setAttributeValue(kTTSym_description, TT("set the sample rate of the amplitude follower"));
		
		// launch the clock to update amplitude regulary
		EXTRA->clock = clock_new(x, (method)out_update_amplitude);
		if (EXTRA->pollInterval)
			clock_delay(EXTRA->clock, EXTRA->pollInterval);
			//EXTRA->clock_is_set = 0;
#endif
		
		// expose attributes of TTOutput as TTData in the tree structure
		x->subscriberObject->exposeAttribute(x->wrappedObject, kTTSym_mute, kTTSym_parameter, &aData);
		aData->setAttributeValue(kTTSym_type, kTTSym_boolean);
		aData->setAttributeValue(kTTSym_tag, kTTSym_generic);
		aData->setAttributeValue(kTTSym_description, TT("When active, this attribute turns off model's outputs."));
		v = TTValue(0);
		aData->setAttributeValue(kTTSym_valueDefault, v);

#ifdef JCOM_OUT_TILDE
		
		// note : the mix attribute is exposed only there is a jcom.in : see out_return_in method
		
		x->subscriberObject->exposeAttribute(x->wrappedObject, kTTSym_gain, kTTSym_parameter, &aData);
		aData->setAttributeValue(kTTSym_type, kTTSym_decimal);
		aData->setAttributeValue(kTTSym_tag, kTTSym_generic);
		v = TTValue(0., 127.);
		aData->setAttributeValue(kTTSym_rangeBounds, v);
		aData->setAttributeValue(kTTSym_rangeClipmode, kTTSym_both);
		v = TTValue(100.);
		aData->setAttributeValue(kTTSym_valueDefault, v);
		aData->setAttributeValue(kTTSym_rampDrive, TT("scheduler"));
		aData->setAttributeValue(kTTSym_rampFunction, TT("linear"));
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

#pragma mark -
#pragma mark Methods bound to input/inlets

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
	
	// avoid blank before data
	if (msg == _sym_nothing)
		outlet_atoms(x->outlets[index], argc, argv);
	else
		outlet_anything(x->outlets[index], msg, argc, argv);
}
#endif

#pragma mark -
#pragma mark Methods relating to audio processing

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
	if (anOutput) {
		
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
	anOutput->mGainUnit->setAttributeValue(TT("interpolated"), 1);
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

// Perform Method 64 bit - just pass the whole vector straight through
// (the work is all done in the dsp 64 bit method)
void out_perform64(TTPtr self, t_object *dsp64, double **ins, long numins, double **outs, long numouts, long sampleframes, long flags, void *userparam)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTOutputPtr					anOutput = (TTOutputPtr)x->wrappedObject;
	TTInputPtr					anInput = anOutput->mInputObject;
	TTUInt8						numChannels = 0;
	TTUInt8						inNumCh = 0;
	TTUInt16					vectorSize = 0;
	short						i; 
	TTUInt16					n;
	TTFloat32					currentvalue = 0;
	TTFloat32					peakamp, peakvalue = 0;	// values for calculating metering
	
	// get numChannels and vectorSize
	if (anOutput) {
		
		anOutput->mInfo.get(info_numChannels, numChannels);
		anOutput->mInfo.get(info_vectorSize, vectorSize);
		
		// Store the input from the inlets
		for (i=0; i < numChannels; i++)
			TTAudioSignalPtr(anOutput->mSignalIn)->setVector(i, vectorSize, ins[i]);
		// if this doesn't work, I need to try setVector64Copy instead of setVector
		
		
		if (anInput->mBypass)																		// perform mix control
			TTAudioSignal::copy(*TTAudioSignalPtr(anInput->mSignalOut), *TTAudioSignalPtr(anOutput->mSignalOut));							//TODO: ideally just passing the pointer without copying memory 
		else if ((anOutput->mMute) || (!anOutput->mGain))
			TTAudioSignalPtr(anOutput->mSignalOut)->clear();  
		else {																					// perform mix control
			anInput->mInfo.get(info_numChannels, inNumCh);
			if (anInput && inNumCh) { 
				if (anOutput->mMix == 100) // fully wet
					TTAudioSignal::copy(*TTAudioSignalPtr(anOutput->mSignalIn), *TTAudioSignalPtr(anOutput->mSignalTemp));			//TODO: ideally just passing the pointer without copying memory 
				else if(!anOutput->mMix) //fully dry
					TTAudioSignal::copy(*TTAudioSignalPtr(anInput->mSignalOut), *TTAudioSignalPtr(anOutput->mSignalTemp));			//TODO: ideally just passing the pointer without copying memory 
				else // we mix wet and dry
					TTAudioObjectPtr(anOutput->mMixUnit)->process(TTAudioSignalPtr(anInput->mSignalOut), TTAudioSignalPtr(anOutput->mSignalIn), TTAudioSignalPtr(anOutput->mSignalTemp));
			}
			else
				TTAudioSignal::copy(*TTAudioSignalPtr(anOutput->mSignalIn), *TTAudioSignalPtr(anOutput->mSignalTemp));
			
			TTAudioObjectPtr(anOutput->mGainUnit)->process(TTAudioSignalPtr(anOutput->mSignalTemp), TTAudioSignalPtr(anOutput->mSignalOut));			// perform gain control
		}
		
		// Send the input on to the outlets for the algorithm
		for (i=0; i < numChannels; i++){	
			TTAudioSignalPtr(anOutput->mSignalOut)->getVectorCopy(i, vectorSize, outs[i]);
			
			// metering
			if (!anOutput->mMute) {
				TTSampleValue* envelope = outs[i];
				peakvalue = 0.0;
				
				n = vectorSize;
				while (n--) {
					if ((*envelope) < 0 )						// get the current sample's absolute value
						currentvalue = -(*envelope); //TODO: we could do a sign flip instead of multiply
					else
						currentvalue = *envelope;
					
					if (currentvalue > peakvalue) 					// if it's a new peak amplitude...
						peakvalue = currentvalue;
					envelope++; 										// increment pointer in the vector
				}
				
				// set meter[i]
				anOutput->mInfo.set(info_startMeter+i, peakvalue);
				
				// set peak[i]
				anOutput->mInfo.get(info_startMeter+numChannels+i, peakamp);
				if (peakvalue > peakamp)
					anOutput->mInfo.set(info_startMeter+numChannels+i, peakvalue);
			}
		}
	}
}

// DSP64 method
void out_dsp64(TTPtr self, t_object *dsp64, short *count, double samplerate, long maxvectorsize, long flags)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTOutputPtr					anOutput = (TTOutputPtr)x->wrappedObject;
	TTUInt8						numChannels = 0;
	short						i, j; 

	anOutput->mRampGainUnit->setAttributeValue(kTTSym_sampleRate, samplerate);	// convert midi to db for tap_gain
	anOutput->mGainUnit->setAttributeValue(TT("interpolated"), 1);
	anOutput->mRampMixUnit->setAttributeValue(kTTSym_sampleRate, samplerate);	// convert midi to db for tap_gain
	
	for (i=0; i < anOutput->mNumber; i++) {
		j = anOutput->mNumber + i;
		if (count[i] || count[j]) {
			numChannels++;			
		}
	}
	anOutput->mInfo.set(info_numChannels, numChannels);
	
	anOutput->mInfo.set(info_vectorSize, (TTUInt16)maxvectorsize);
	
	anOutput->mSignalIn->setAttributeValue(TT("numChannels"), numChannels);
	anOutput->mSignalOut->setAttributeValue(TT("numChannels"), numChannels);
	anOutput->mSignalTemp->setAttributeValue(TT("numChannels"), numChannels);
	//anOutput->mSignalZero->setAttributeValue(TT("numChannels"), numChannels);
	
	anOutput->mSignalIn->setAttributeValue(TT("vectorSize"), (TTUInt16)maxvectorsize);
	anOutput->mSignalOut->setAttributeValue(TT("vectorSize"), (TTUInt16)maxvectorsize);
	anOutput->mSignalTemp->setAttributeValue(TT("vectorSize"), (TTUInt16)maxvectorsize);
	//anOutput->mSignalZero->setAttributeValue(TT("vectorSize"), (TTUInt16)maxvectorsize);//Do we need zeroSignal?
	
	// mSignalIn will be set in the perform method
	anOutput->mSignalOut->sendMessage(TT("alloc"));
	anOutput->mSignalTemp->sendMessage(TT("alloc"));
	//x->zeroSignal->sendMessage(TT("alloc"));
	//x->zeroSignal->sendMessage(TT("clear"));
	//audioIn will be set in the perform method
	//x->audioOut->sendMessage(TT("alloc"));
	
	object_method(dsp64, gensym("dsp_add64"), x, out_perform64, 0, NULL); 
	
	// reset the meters info
	for (i=0; i<numChannels; i++)
		anOutput->mInfo.set(info_startMeter+numChannels+i, 0.);	

}

void out_return_amplitude_active(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
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

void out_update_amplitude(TTPtr self)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTOutputPtr		anOutput = (TTOutputPtr)x->wrappedObject;
	float			metervalue;
	short			i, index;
	TTValue			keys;
	TTSymbolPtr		name;
	TTValue			v, storedObject;
	TTObjectPtr		anObject;
	TTErr			err;
	
	//EXTRA->clock_is_set = 0;
	
	if (anOutput) {
		
		if (x->internals) {
			if (!x->internals->isEmpty()) {
				
				err = x->internals->getKeys(keys);
				
				if (!err) {
					for (i=0; i<keys.getSize(); i++) {
						
						keys.get(i, &name);
						
						if (!EXTRA->instanceTable->lookup(name, v)) {
							
							v.get(0, index);
							
							// get internal data object
							x->internals->lookup(name, storedObject);
							storedObject.get(0, (TTPtr*)&anObject);
							
							// get current meter value
							anOutput->mInfo.get(info_startMeter+index, metervalue);
							//anOutput->mInfo.get(info_startMeter+numChannels+index, peakamp);
							
							// set the value
							anObject->setAttributeValue(kTTSym_value, metervalue);
						}						
					}
				}
			}
		}
		
		// restart the clock
		if (EXTRA->pollInterval)
			clock_delay(EXTRA->clock, EXTRA->pollInterval);
	}
}

void out_return_link(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTDataPtr		aData;
	TTValue			v;
	
	if (atom_getlong(argv) == 1) {
		
		x->subscriberObject->exposeAttribute(x->wrappedObject, kTTSym_mix, kTTSym_parameter, &aData);
		aData->setAttributeValue(kTTSym_type, kTTSym_decimal);
		aData->setAttributeValue(kTTSym_tag, kTTSym_generic);
		v = TTValue(0., 100.);
		aData->setAttributeValue(kTTSym_rangeBounds, v);
		aData->setAttributeValue(kTTSym_rangeClipmode, kTTSym_both);
		v = TTValue(100.);
		aData->setAttributeValue(kTTSym_valueDefault, v);							// Assume 100%, so that processed signal is passed through
		aData->setAttributeValue(kTTSym_rampDrive, TT("scheduler"));
		aData->setAttributeValue(kTTSym_rampFunction, TT("linear"));
		aData->setAttributeValue(kTTSym_description, TT("Controls the wet/dry mix of the model's processing routine in percent."));
	}
	else 
		x->subscriberObject->unexposeAttribute(kTTSym_mix);
}

#endif // JCOM_OUT_TILDE
