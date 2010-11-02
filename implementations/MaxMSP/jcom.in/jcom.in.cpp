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

#endif

// Definitions
void		WrapTTInputClass(WrappedClassPtr c);
void		WrappedInputClass_new(TTPtr self, AtomCount argc, AtomPtr argv);
void		in_assist(TTPtr self, TTPtr b, long msg, AtomCount arg, char *dst);
void		in_share_context_node(TTPtr self, TTNodePtr *contextNode);
void		in_build(TTPtr self, long number);

#ifdef JCOM_IN_TILDE
t_int*		in_perform(t_int *w);
void		in_dsp(TTPtr self, t_signal **sp, short *count);

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
	
	class_addmethod(c->maxClass, (method)in_share_context_node,			"share_context_node",	A_CANT,	0);
	
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
	defer_low((ObjectPtr)x, (method)in_build, NULL, 1, &a);
}

void in_build(TTPtr self, long number)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTValue						v, args;
	TTNodePtr					node = NULL;
	TTBoolean					newInstance;
	TTSymbolPtr					nodeAddress, relativeAddress, parentAddress;
	TTDataPtr					aData;
	TTPtr						context;
	TTString					outAddress;
	
	jamoma_patcher_type_and_class((ObjectPtr)x, &x->patcherType, &x->patcherClass);
	jamoma_subscriber_create((ObjectPtr)x, x->wrappedObject, gensym("/in"), x->patcherType, &x->subscriberObject);
	
	// if the subscription is successful
	if (x->subscriberObject) {
		
		// Is a new instance have been created ?
		x->subscriberObject->getAttributeValue(TT("NewInstanceCreated"), v);
		v.get(0, newInstance);
		
		if (newInstance) {
			x->subscriberObject->getAttributeValue(TT("RelativeAddress"), v);
			v.get(0, &relativeAddress);
			object_warn((t_object*)x, "Jamoma cannot create multiple jcom.in with the same OSC identifier (/in).  Using %s instead.", relativeAddress->getCString());
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
		
		// observe /parent/out address in order to link/unlink with an Input object below
		node->getParent()->getOscAddress(&parentAddress, S_SEPARATOR);
		outAddress = parentAddress->getCString();
		outAddress += "/out";
		if (node->getInstance() != NO_INSTANCE) {
			outAddress += ".";
			outAddress += node->getInstance()->getCString();
		}
		x->wrappedObject->setAttributeValue(TT("OutputAddress"), TT(outAddress.data()));
		
		// expose bypass and mute attributes of TTInput as TTData in the tree structure
		x->subscriberObject->exposeAttribute(x->wrappedObject, TT("Bypass"), kTTSym_parameter, &aData);
		aData->setAttributeValue(kTTSym_Type, kTTSym_boolean);
		aData->setAttributeValue(kTTSym_Description, TT("When active, this attribute bypasses the model's processing algtorithm, letting incoming signal pass through unaffected"));
		
		x->subscriberObject->exposeAttribute(x->wrappedObject, TT("Mute"), kTTSym_parameter, &aData);
		aData->setAttributeValue(kTTSym_Type, kTTSym_boolean);
		aData->setAttributeValue(kTTSym_Description, TT("When active, this attribute turns off model's inputs."));
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

void in_share_context_node(TTPtr self, TTNodePtr *contextNode)
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

// TODO : enable patcher
// 'setrock' is the message that is used for pcontrol sends to the patcher of enabling
//object_method(o, gensym("setrock"), 2, a);

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
	TTOutputPtr					anOutput = anInput->mOutputObject;
	TTUInt8						numChannels = 0;
	TTUInt16					vectorSize = 0;
	short						i, j;
	
	// get numChannels and vectorSize
	anInput->mInfo.get(info_numChannels, numChannels);
	anInput->mInfo.get(info_vectorSize, vectorSize);
	
	// Store the input from the inlets
	for (i=0; i < numChannels; i++) {
		j = (i*2) + 1;
		TTAudioSignalPtr(anInput->mSignalIn)->setVector(i, vectorSize, (TTFloat32*)w[j+1]);
	}
	
	// if output exists
	if (anOutput)
		// if signal is bypassed : send a zero signal to the algorithm
		if (anInput->mBypass) TTAudioSignal::copy(*TTAudioSignalPtr(anOutput->mSignalZero), *TTAudioSignalPtr(anInput->mSignalOut));
		// else copy in to out
		else TTAudioSignal::copy(*TTAudioSignalPtr(anInput->mSignalIn), *TTAudioSignalPtr(anInput->mSignalOut));
	
	// otherwise copy in to out
	else TTAudioSignal::copy(*TTAudioSignalPtr(anInput->mSignalIn), *TTAudioSignalPtr(anInput->mSignalOut));
	
	// TODO : need to mix in input here from jcom.send~ objects
	

	// Send the input on to the outlets for the algorithm
	for (i=0; i < numChannels; i++) {
		j = (i*2) + 1;
		TTAudioSignalPtr(anInput->mSignalOut)->getVector(i, vectorSize, (TTFloat32*)w[j+2]);
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
	
	anInput->mSignalIn->setAttributeValue(TT("NumChannels"), numChannels);
	anInput->mSignalOut->setAttributeValue(TT("NumChannels"), numChannels);
	anInput->mSignalIn->setAttributeValue(TT("VectorSize"), vectorsize);
	anInput->mSignalOut->setAttributeValue(TT("VectorSize"), vectorsize);
	
	// anInput->mSignalIn will be set in the perform method
	anInput->mSignalOut->sendMessage(TT("alloc"));
	
	dsp_addv(in_perform, k, audioVectors);
	sysmem_freeptr(audioVectors);
}

#endif // JCOM_IN_TILDE
