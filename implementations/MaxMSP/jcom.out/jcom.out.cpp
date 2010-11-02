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

#endif

// Constants
const double kPollIntervalDefault = 150;	// for meters to update

// Definitions
void		WrapTTOutputClass(WrappedClassPtr c);
void		WrappedOutputClass_new(TTPtr self, AtomCount argc, AtomPtr argv);
void		out_assist(TTPtr self, TTPtr b, long msg, AtomCount arg, char *dst);
void		out_share_context_node(TTPtr self, TTNodePtr *contextNode);
void		out_build(TTPtr self, long number);

//TODO :	void out_register_preview(t_out *x, void *preview_object){ x->preview_object = preview_object; }

#ifdef JCOM_OUT_TILDE
t_int*		out_perform(t_int *w);
void		out_dsp(TTPtr self, t_signal **sp, short *count);

void		out_register_meter(t_out *x, int meternum, void *meter_object);
void		out_remove_meters(t_out *x);
void		update_meters(t_out *x);

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
	
	class_addmethod(c->maxClass, (method)out_share_context_node,			"share_context_node",	A_CANT,	0);
	
	//class_addmethod(c, (method)out_register_preview,						"register_preview",		A_CANT, 0L);
	
#ifdef JCOM_OUT_TILDE
	class_addmethod(c->maxClass, (method)out_dsp,							"dsp", 					A_GIMME, 0L);
	//class_addmethod(c->maxClass, (method)out_remoteaudio,					"remoteaudio",			A_CANT, 0);
	//class_addmethod(c, (method)out_getAudioForChannel,					"getAudioForChannel",	A_CANT, 0);
	
	//class_addmethod(c, (method)out_register_meter,						"register_meter",		A_CANT, 0L);
	//class_addmethod(c, (method)out_remove_meters,							"remove_meters",		A_CANT, 0L);
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
	
	// x->clock = clock_new(x, (method)update_meters);
	// x->clock_is_set = 0;
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

void out_build(TTPtr self, long number)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTValue						v, args;
	TTNodePtr					node = NULL;
	TTBoolean					newInstance;
	TTSymbolPtr					nodeAddress, relativeAddress, parentAddress;
	TTDataPtr					aData;
	TTPtr						context;
	TTString					inAddress;
	
	jamoma_patcher_type_and_class((ObjectPtr)x, &x->patcherType, &x->patcherClass);
	jamoma_subscriber_create((ObjectPtr)x, x->wrappedObject, gensym("/out"), x->patcherType, &x->subscriberObject);
	
	// if the subscription is successful
	if (x->subscriberObject) {
		
		// Is a new instance have been created ?
		x->subscriberObject->getAttributeValue(TT("NewInstanceCreated"), v);
		v.get(0, newInstance);
		
		if (newInstance) {
			x->subscriberObject->getAttributeValue(TT("RelativeAddress"), v);
			v.get(0, &relativeAddress);
			object_warn((t_object*)x, "Jamoma cannot create multiple jcom.in with the same OSC identifier (/out).  Using %s instead.", relativeAddress->getCString());
		}
		
		// debug
		x->subscriberObject->getAttributeValue(TT("NodeAddress"), v);
		v.get(0, &nodeAddress);
		object_post((ObjectPtr)x, "address = %s", nodeAddress->getCString());
		
		// get the Node
		x->subscriberObject->getAttributeValue(TT("Node"), v);
		v.get(0, (TTPtr*)&node);
		
		// attach to the patcher to be notified of his destruction
		node->getAttributeValue(TT("Context"), v);
		v.get(0, (TTPtr*)&context);
		object_attach_byptr_register(x, context, _sym_box);
		
		// observe /parent/in address in order to link/unlink with an Input object below
		node->getParent()->getOscAddress(&parentAddress, S_SEPARATOR);
		inAddress = parentAddress->getCString();
		inAddress += "/in";
		if (node->getInstance() != NO_INSTANCE) {
			inAddress += ".";
			inAddress += node->getInstance()->getCString();
		}
		x->wrappedObject->setAttributeValue(TT("InputAddress"), TT(inAddress.data()));
		
		// expose attributes of TTOutput as TTData in the tree structure
		x->subscriberObject->exposeAttribute(x->wrappedObject, TT("Mute"), kTTSym_parameter, &aData);
		aData->setAttributeValue(kTTSym_Type, kTTSym_boolean);
		aData->setAttributeValue(kTTSym_Description, TT("When active, this attribute turns off model's outputs."));
		
		x->subscriberObject->exposeAttribute(x->wrappedObject, TT("Mix"), kTTSym_parameter, &aData);
		aData->setAttributeValue(kTTSym_Type, kTTSym_decimal);
		v = TTValue(0., 100.);
		aData->setAttributeValue(kTTSym_RangeBounds, v);
		v = TTValue(100.);
		aData->setAttributeValue(kTTSym_ValueDefault, v);							// Assume 100%, so that processed signal is passed through
		aData->setAttributeValue(kTTSym_Description, TT("Controls the wet/dry mix of the model's processing routine in percent."));
		
		x->subscriberObject->exposeAttribute(x->wrappedObject, TT("Gain"), kTTSym_parameter, &aData);
		aData->setAttributeValue(kTTSym_Type, kTTSym_decimal);
		v = TTValue(0., 127.);
		aData->setAttributeValue(kTTSym_RangeBounds, v);
		v = TTValue(100.);
		aData->setAttributeValue(kTTSym_ValueDefault, v);
		aData->setAttributeValue(kTTSym_Description, TT("Set gain of model's outputs (as MIDI value by default)."));
		
#ifndef JCOM_IN_TILDE		
		x->subscriberObject->exposeAttribute(x->wrappedObject, TT("Freeze"), kTTSym_parameter, &aData);
		aData->setAttributeValue(kTTSym_Type, kTTSym_boolean);
		aData->setAttributeValue(kTTSym_Description, TT("Freezes the last state of model's outputs from the  processing algorithm."));
#endif
		
		x->subscriberObject->exposeAttribute(x->wrappedObject, TT("Preview"), kTTSym_parameter, &aData);
		aData->setAttributeValue(kTTSym_Type, kTTSym_boolean);
		aData->setAttributeValue(kTTSym_Description, TT("Turns on/off preview display of model's outputs from the  processing algorithm."));
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

void out_share_context_node(TTPtr self, TTNodePtr *contextNode)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTValue	v;
	
	if (x->subscriberObject) {
		
		x->subscriberObject->getAttributeValue(TT("ContextNode"), v);
		v.get(0, TTObjectHandle(contextNode));
	}
	else
		*contextNode = NULL;
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
	
	/* TODO
	TTUInt16					n;
	float						currentvalue = 0;
	float						peakvalue = 0;	// values for calculating metering
	 */
	
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
		
		/* TODO
		// since we are already looping through the channels here, we will also do the per-channel metering here
		if (x->attr_defeat_meters == 0 && x->num_meter_objects && !anOutput->mMute) {
			t_float* envelope = (t_float *)(w[j+2]);
			peakvalue = 0.0;
			
			n = x->vectorSize;
			while (n--) {
				if ((*envelope) < 0 )						// get the current sample's absolute value
					currentvalue = -(*envelope);
				else
					currentvalue = *envelope;
				
				if (currentvalue > peakvalue) 				// if it's a new peak amplitude...
					peakvalue = currentvalue;
				envelope++; 								// increment pointer in the vector
			}
			if (peakvalue > x->peakamp[i])
				x->peakamp[i] = peakvalue;
		}
		*/
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
	
	anOutput->mRampGainUnit->setAttributeValue(TT("SampleRate"), sr);	// convert midi to db for tap_gain
	anOutput->mRampMixUnit->setAttributeValue(TT("SampleRate"), sr);	// convert midi to db for tap_gain
	
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
	
	anOutput->mSignalIn->setAttributeValue(TT("NumChannels"), numChannels);
	anOutput->mSignalOut->setAttributeValue(TT("NumChannels"), numChannels);
	anOutput->mSignalTemp->setAttributeValue(TT("NumChannels"), numChannels);
	anOutput->mSignalZero->setAttributeValue(TT("NumChannels"), numChannels);
	
	anOutput->mSignalIn->setAttributeValue(TT("VectorSize"), vectorsize);
	anOutput->mSignalOut->setAttributeValue(TT("VectorSize"), vectorsize);
	anOutput->mSignalTemp->setAttributeValue(TT("VectorSize"), vectorsize);
	anOutput->mSignalZero->setAttributeValue(TT("VectorSize"), vectorsize);
	
	//audioIn will be set in the perform method
	anOutput->mSignalOut->sendMessage(TT("alloc"));
	anOutput->mSignalTemp->sendMessage(TT("alloc"));
	anOutput->mSignalZero->sendMessage(TT("alloc"));
	anOutput->mSignalZero->sendMessage(TT("Clear"));
	
	dsp_addv(out_perform, k, audioVectors);
	sysmem_freeptr(audioVectors);
	
	/* TODO
	// start the meters
	if (x->num_meter_objects) {
		for (i=0; i<MAX_NUM_CHANNELS; i++)
			x->peakamp[i] = 0;
		clock_delay(x->clock, kPollIntervalDefault); 			// start the clock
	}
	 */
	
}
 
/* TODO
void out_register_meter(t_out *x, int meternum, void *meter_object)
{
	x->meter_object[meternum] = meter_object;
	if ((meternum+1) > x->num_meter_objects)
		x->num_meter_objects = meternum+1;
}

void out_remove_meters(t_out *x)
{
	short i;
	for (i=0; i<MAX_NUM_CHANNELS; i++)
		x->meter_object[i] = NULL;
	x->num_meter_objects = 0;
}

void update_meters(t_out *x)
{
	short	i;
	t_atom	a[2];
	
	x->clock_is_set = 0;
	for (i=0; i < x->num_meter_objects; i++) {
		if (x->meter_object[i] && x->peakamp[i] != x->lastPeakamp[i]) {
			atom_setsym(&a[0], _sym_float);
			atom_setfloat(&a[1], x->peakamp[i]);
			object_method_typed(x->meter_object[i], jps_dispatched, 2, a, NULL);
			x->lastPeakamp[i] = x->peakamp[i];
			x->peakamp[i] = 0;
		}
	}
	clock_delay(x->clock, kPollIntervalDefault); 			// restart the clock
}

*/

#endif // JCOM_OUT_TILDE
