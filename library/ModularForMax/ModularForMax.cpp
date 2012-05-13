/* 
 * Modular For Max
 * Copyright © 2010, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "ModularForMax.h"

/***********************************************************************************
*
*		C EXTERN METHODS
*
************************************************************************************/

// Method to deal with the jamoma application
/////////////////////////////////////////

TTErr jamoma_application_dump_configuration(void)
{
	TTUInt16 i;
	TTValue v, appNames;
	TTSymbolPtr anAppKey;
	TTValue toConvert, converted;
	TTString aTTStr;
	
	post("--- Jamoma Application : Symbol Convertion ---");
	JamomaApplication->getAttributeValue(TT("allAppNames"), appNames);
	
	for (i=0; i<appNames.getSize(); i++) {
		
		appNames.get(i, &anAppKey);
		
		toConvert = TTValue(anAppKey);
		JamomaApplication->sendMessage(kTTSym_ConvertToTTName, toConvert, converted); 
		converted.toString();
		converted.get(0, aTTStr);
		post("%s <-> %s", anAppKey->getCString(), aTTStr.data());
	}
	
	post("----------------------------------------------");
	
	return kTTErrNone;
}

TTErr jamoma_application_write_configuration(void)
{
	// Read xml configuration file
	TTValue			v;
	TTXmlHandlerPtr anXmlHandler = NULL;
	
	TTObjectInstantiate(TT("XmlHandler"), TTObjectHandle(&anXmlHandler), v);
	
	v = TTValue(TTPtr(JamomaApplication));
	anXmlHandler->setAttributeValue(kTTSym_object, v);
	
	v = TTValue(TT(JamomaConfigurationFilePath));
	return anXmlHandler->sendMessage(TT("Write"), v, kTTValNONE);
}

// Method to deal with the jamoma directory
/////////////////////////////////////////

TTErr jamoma_directory_dump_observers(void)
{
	unsigned int i, j, s;
	TTValue v;
	TTValuePtr pv;
	TTSymbolPtr key, owner;
	
	post("--- JamomaDirectory Observers ---");
	JamomaDirectory->dumpObservers(v);
	
	s = v.getSize();
	for (i=0; i<s; i++) {
		
		v.get(i,(TTPtr*)&pv);
		pv->get(0, &key);
		post("%s :", key->getCString());
		
		for (j=1; j<pv->getSize(); j++) {
		
			pv->get(j, &owner);
			post("    %s", owner->getCString());
		}
	}
	
	post("----------------------------------------------");
	
	return kTTErrNone;
}

// Method to deal with TTSubscriber
///////////////////////////////////////////////////////////////////////

TTErr jamoma_subscriber_create(ObjectPtr x, TTObjectPtr aTTObject, TTNodeAddressPtr relativeAddress, TTSubscriberPtr *returnedSubscriber)
{
	TTValue			v, args;
	TTNodePtr		aNode;
	TTObjectPtr		contextListCallback;
	TTValuePtr		contextListBaton;
	TTNodeAddressPtr newRelativeAddress, absoluteAddress;
	TTBoolean		newInstance;
		
	// prepare arguments
	args.append(TTPtr(aTTObject));
	args.append(relativeAddress);
	
	contextListCallback = NULL;			// without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
	TTObjectInstantiate(TT("callback"), &contextListCallback, kTTValNONE);
	contextListBaton = new TTValue(TTPtr(x));
	contextListCallback->setAttributeValue(kTTSym_baton, TTPtr(contextListBaton));
	contextListCallback->setAttributeValue(kTTSym_function, TTPtr(&jamoma_subscriber_get_patcher_list));
	args.append(contextListCallback);
	
	*returnedSubscriber = NULL;
	TTObjectInstantiate(TT("Subscriber"), TTObjectHandle(returnedSubscriber), args);
	
	// Check if the subscription is ok (or the binding in case of NULL object)
	(*returnedSubscriber)->getAttributeValue(TT("node"), v);
	v.get(0, (TTPtr*)&aNode);
	if (aNode) {
		
		if (aTTObject) {
			// Is a new instance have been created ?
			(*returnedSubscriber)->getAttributeValue(TT("newInstanceCreated"), v);
			v.get(0, newInstance);
			
			if (newInstance) {
				(*returnedSubscriber)->getAttributeValue(TT("relativeAddress"), v);
				v.get(0, &newRelativeAddress);
				object_warn(x, "Jamoma cannot registers multiple object with the same OSC identifier (%s).  Using %s instead.", relativeAddress->getCString(), newRelativeAddress->getCString());
			}
			
			JamomaDebug {
				(*returnedSubscriber)->getAttributeValue(TT("nodeAddress"), v);
				v.get(0, &absoluteAddress);
				object_post(x, "registers at %s", absoluteAddress->getCString());
			}
		}

		return kTTErrNone;
	}
	
	if (aTTObject)
		object_error(x, "Jamoma cannot registers %s", relativeAddress->getCString());
	else
		// don't display this message because the objects can try many times before to binds
		; //object_error(x, "Jamoma cannot binds %s", relativeAddress->s_name);
	
	return kTTErrGeneric;
}

void jamoma_subscriber_get_patcher_list(TTPtr p_baton, TTValue& data)
{
	TTValuePtr	b;
	TTValue		v;
	ObjectPtr	objPtr, patcherPtr = NULL;
	TTSymbolPtr	patcherContext = NULL;
	TTSymbolPtr	patcherName = NULL;
	TTSymbolPtr patcherClass = NULL;
	TTSymbolPtr lowerContext = NULL;
	TTListPtr	nameAndPtrList;
	
	// unpack baton
	b = (TTValuePtr)p_baton;
	b->get(0, (TTPtr*)&objPtr);
	
	// unpack data to get a TTListPtr
	data.get(0, (TTPtr*)&nameAndPtrList);
	
	// Edit the list of all patcher's name and pointer 
	// above the object looking at all parent patcher
	do {
		// get all info from the current object
		jamoma_patcher_get_info(objPtr, &patcherPtr, &patcherContext, &patcherClass, &patcherName);
		
		if (patcherName && patcherPtr) {
			
			// check if the patcher have the same context than lower patchers
			if (patcherContext == lowerContext || lowerContext == NULL) {
				
				// keep it as lowerContext
				lowerContext = patcherContext;
				
				// insert the current patcher name and his pointer to the list
				v = patcherName;
				v.append((TTPtr)patcherPtr);
				nameAndPtrList->insert(0, v);
				
				// replace current object by his parent patcher
				objPtr = patcherPtr;
			}
			else {
				
				// skip the patcher to go directly to an upper one
				objPtr = patcherPtr;
			}
		}
		else
			break;
		
	} while (jamoma_patcher_get_hierarchy(objPtr) != _sym_topmost);
}

// Method to deal with TTContainer
///////////////////////////////////////////////////////////////////////

/**	Create a container object */
TTErr jamoma_container_create(ObjectPtr x, TTObjectPtr *returnedContainer)
{
	TTValue			args;
	TTObjectPtr		returnAddressCallback, returnValueCallback;
	TTValuePtr		returnAddressBaton, returnValueBaton;
	
	// prepare arguments
	returnAddressCallback = NULL;			// without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
	TTObjectInstantiate(TT("callback"), &returnAddressCallback, kTTValNONE);
	returnAddressBaton = new TTValue(TTPtr(x));
	returnAddressCallback->setAttributeValue(kTTSym_baton, TTPtr(returnAddressBaton));
	returnAddressCallback->setAttributeValue(kTTSym_function, TTPtr(&jamoma_callback_return_address));
	args.append(returnAddressCallback);
	
	returnValueCallback = NULL;			// without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
	TTObjectInstantiate(TT("callback"), &returnValueCallback, kTTValNONE);
	returnValueBaton = new TTValue(TTPtr(x));
	returnValueCallback->setAttributeValue(kTTSym_baton, TTPtr(returnValueBaton));
	returnValueCallback->setAttributeValue(kTTSym_function, TTPtr(&jamoma_callback_return_value));
	args.append(returnValueCallback);
	
	*returnedContainer = NULL;
	TTObjectInstantiate(TT("Container"), TTObjectHandle(returnedContainer), args);
	
	return kTTErrNone;
}

/**	Send Max data using a container object */
TTErr jamoma_container_send(TTContainerPtr aContainer, SymbolPtr relativeAddressAndAttribute, AtomCount argc, AtomPtr argv)
{
	TTNodeAddressPtr anAddress;
	TTValue			v, data;
	
	if (aContainer) {
		
		anAddress = TTADRS(relativeAddressAndAttribute->s_name);
		
		if (anAddress->getType() != kAddressRelative) {
			error("%s is an absolute address", relativeAddressAndAttribute->s_name);
			return kTTErrGeneric;
		}
		
		if (anAddress->getAttribute() == NO_ATTRIBUTE)
			anAddress = anAddress->appendAttribute(kTTSym_value);
		else
			anAddress = anAddress->appendAttribute(ToTTName(anAddress->getAttribute()));

		data.append(anAddress);
		
		jamoma_ttvalue_from_Atom(v, _sym_nothing, argc, argv);
		data.append((TTPtr)&v);
		
		return aContainer->sendMessage(kTTSym_Send, data, kTTValNONE); // data is [address, attribute, [x, x, ,x , ...]]
	}
	
	return kTTErrGeneric;
}

// Method to deal with TTData
///////////////////////////////////////////////////////////////////////

/**	Create a data object */
TTErr jamoma_data_create(ObjectPtr x, TTObjectPtr *returnedData, TTSymbolPtr service)
{
	TTValue			args;
	TTObjectPtr		returnValueCallback;
	TTValuePtr		returnValueBaton;
	
	// prepare arguments
	returnValueCallback = NULL;			// without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
	TTObjectInstantiate(TT("callback"), &returnValueCallback, kTTValNONE);
	returnValueBaton = new TTValue(TTPtr(x));
	returnValueCallback->setAttributeValue(kTTSym_baton, TTPtr(returnValueBaton));
	returnValueCallback->setAttributeValue(kTTSym_function, TTPtr(&jamoma_callback_return_value_typed));
	args.append(returnValueCallback);
	
	args.append(service);
	
	*returnedData = NULL;
	TTObjectInstantiate(TT("Data"), TTObjectHandle(returnedData), args);
	
	return kTTErrNone;
}

/**	Send Max data command */
TTErr jamoma_data_command(TTDataPtr aData, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	TTValue		v;
	
	if (aData) {
		
		jamoma_ttvalue_from_Atom(v, msg, argc, argv);
		
		aData->sendMessage(kTTSym_Command, v, kTTValNONE);
		return kTTErrNone;
	}
	
	return kTTErrGeneric;
}

// Method to deal with TTSender
///////////////////////////////////////////////////////////////////////

/**	Create a sender object */
TTErr jamoma_sender_create(ObjectPtr x, TTObjectPtr *returnedSender)
{
	*returnedSender = NULL;
	TTObjectInstantiate(TT("Sender"), TTObjectHandle(returnedSender), kTTValNONE);
	return kTTErrNone;
}

/**	Send Max data using a sender object */
TTErr jamoma_sender_send(TTSenderPtr aSender, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	TTValue		v;
	
	if (aSender) {
		
		jamoma_ttvalue_from_Atom(v, msg, argc, argv);
		
		return aSender->sendMessage(kTTSym_Send, v, kTTValNONE);
	}
	
	return kTTErrGeneric;
}

// Method to deal with TTReceiver
///////////////////////////////////////////////////////////////////////

/**	Create a receiver object */
TTErr jamoma_receiver_create(ObjectPtr x, TTObjectPtr *returnedReceiver)
{
	TTValue			args;
	TTObjectPtr		returnAddressCallback, returnValueCallback;
	TTValuePtr		returnAddressBaton, returnValueBaton;
	
	returnAddressCallback = NULL;			// without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
	TTObjectInstantiate(TT("callback"), &returnAddressCallback, kTTValNONE);
	returnAddressBaton = new TTValue(TTPtr(x));
	returnAddressCallback->setAttributeValue(kTTSym_baton, TTPtr(returnAddressBaton));
	returnAddressCallback->setAttributeValue(kTTSym_function, TTPtr(&jamoma_callback_return_address));
	args.append(returnAddressCallback);
	
	returnValueCallback = NULL;			// without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
	TTObjectInstantiate(TT("callback"), &returnValueCallback, kTTValNONE);
	returnValueBaton = new TTValue(TTPtr(x));
	returnValueCallback->setAttributeValue(kTTSym_baton, TTPtr(returnValueBaton));
	returnValueCallback->setAttributeValue(kTTSym_function, TTPtr(&jamoma_callback_return_value_typed));
	args.append(returnValueCallback);
	
	*returnedReceiver = NULL;
	TTObjectInstantiate(TT("Receiver"), TTObjectHandle(returnedReceiver), args);
	
	return kTTErrNone;
}


// Method to deal with TTPresetManager
///////////////////////////////////////////////////////////////////////

/**	Create a preset manager object */
TTErr jamoma_presetManager_create(ObjectPtr x, TTObjectPtr *returnedPresetManager)
{
	TTValue			args;
	
	*returnedPresetManager = NULL;
	TTObjectInstantiate(TT("PresetManager"), TTObjectHandle(returnedPresetManager), args);
	
	return kTTErrNone;
}

/**	Create a cue manager object */
TTErr jamoma_cueManager_create(ObjectPtr x, TTObjectPtr *returnedCueManager)
{
	TTValue			args;
	
	*returnedCueManager = NULL;
	TTObjectInstantiate(TT("CueManager"), TTObjectHandle(returnedCueManager), args);
	
	return kTTErrNone;
}

// Method to deal with TTInput
///////////////////////////////////////////////////////////////////////

/**	Create an input object for any signal */
TTErr jamoma_input_create(ObjectPtr x, TTObjectPtr *returnedInput, long number)
{	
	TTValue			args;
	TTObjectPtr		signalOutCallback = NULL;
	TTValuePtr		signalOutBaton;
	
	// prepare arguments
	args.append(TTUInt16(number));
	args.append(TT("control"));
	
	TTObjectInstantiate(TT("callback"), &signalOutCallback, kTTValNONE);
	signalOutBaton = new TTValue(TTPtr(x));
	signalOutBaton->append(TTPtr(jps_return_signal));
	signalOutCallback->setAttributeValue(kTTSym_baton, TTPtr(signalOutBaton));
	signalOutCallback->setAttributeValue(kTTSym_function, TTPtr(&jamoma_callback_return_value_typed));
	args.append(signalOutCallback);
	
	*returnedInput = NULL;
	TTObjectInstantiate(TT("Input"), TTObjectHandle(returnedInput), args);
	
	return kTTErrNone;
}

/**	Create an input object for audio signal */
TTErr jamoma_input_create_audio(ObjectPtr x, TTObjectPtr *returnedInput, long number)
{
	TTValue				args;
	TTObjectPtr			signalOutCallback = NULL;
	TTValuePtr			signalOutBaton;
	TTAudioSignalPtr	audioIn = NULL;
	TTAudioSignalPtr	audioOut = NULL;
	TTAudioSignalPtr	audioZero = NULL;
	
	// prepare arguments
	args.append(TTUInt16(number));
	args.append(TT("audio"));
	
	TTObjectInstantiate(TT("callback"), &signalOutCallback, kTTValNONE);
	signalOutBaton = new TTValue(TTPtr(x));
	signalOutBaton->append(TTPtr(jps_return_signal));
	signalOutCallback->setAttributeValue(kTTSym_baton, TTPtr(signalOutBaton));
	signalOutCallback->setAttributeValue(kTTSym_function, TTPtr(&jamoma_callback_return_value));
	args.append(signalOutCallback);
	
	TTObjectInstantiate(kTTSym_audiosignal, &audioIn, number);
	args.append((TTPtr)audioIn);
	TTObjectInstantiate(kTTSym_audiosignal, &audioOut, number);
	args.append((TTPtr)audioOut);
	TTObjectInstantiate(kTTSym_audiosignal, &audioZero, number);
	args.append((TTPtr)audioZero);
	
	*returnedInput = NULL;
	TTObjectInstantiate(TT("Input"), TTObjectHandle(returnedInput), args);
	
	return kTTErrNone;
}

/**	Send any signal to an input object */
TTErr jamoma_input_send(TTInputPtr anInput, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{	
	TTValue		v;
	
	if (anInput) {
		
		jamoma_ttvalue_from_Atom(v, msg, argc, argv);
		
		anInput->sendMessage(kTTSym_Send, v, kTTValNONE);
		return kTTErrNone;
	}
	
	return kTTErrGeneric;
}


// Method to deal with TTOutput
///////////////////////////////////////////////////////////////////////

/**	Create an output object for signal */
TTErr jamoma_output_create(ObjectPtr x, TTObjectPtr *returnedOutput, long number)
{	
	TTValue			args;
	TTObjectPtr		signalOutCallback = NULL;
	TTValuePtr		signalOutBaton;
	
	// prepare arguments
	args.append(TTUInt16(number));
	args.append(TT("control"));
	
	TTObjectInstantiate(TT("callback"), &signalOutCallback, kTTValNONE);
	signalOutBaton = new TTValue(TTPtr(x));
	signalOutBaton->append(TTPtr(jps_return_signal));
	signalOutCallback->setAttributeValue(kTTSym_baton, TTPtr(signalOutBaton));
	signalOutCallback->setAttributeValue(kTTSym_function, TTPtr(&jamoma_callback_return_value_typed));
	args.append(signalOutCallback);
	
	*returnedOutput = NULL;
	TTObjectInstantiate(TT("Output"), TTObjectHandle(returnedOutput), args);
	
	return kTTErrNone;
}

/**	Create an output object for audio signal */
TTErr jamoma_output_create_audio(ObjectPtr x, TTObjectPtr *returnedOutput, long number)
{
	TTValue				args;
	TTObjectPtr			signalOutCallback = NULL;
	TTValuePtr			signalOutBaton;
	TTAudioSignalPtr	audioIn = NULL;
	TTAudioSignalPtr	audioOut = NULL;
	TTAudioSignalPtr	audioTemp = NULL;
	TTAudioSignalPtr	audioZero = NULL;
	TTObjectPtr			mixUnit = NULL;
	TTObjectPtr			gainUnit = NULL;
	TTObjectPtr			rampMixUnit = NULL;
	TTObjectPtr			rampGainUnit = NULL;
	
	// prepare arguments
	args.append(TTUInt16(number));
	args.append(TT("audio"));
	
	signalOutCallback = NULL;			// without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
	TTObjectInstantiate(TT("callback"), &signalOutCallback, kTTValNONE);
	signalOutBaton = new TTValue(TTPtr(x));
	signalOutBaton->append(TTPtr(jps_return_signal));
	signalOutCallback->setAttributeValue(kTTSym_baton, TTPtr(signalOutBaton));
	signalOutCallback->setAttributeValue(kTTSym_function, TTPtr(&jamoma_callback_return_value));
	args.append(signalOutCallback);
	
	TTObjectInstantiate(kTTSym_audiosignal, &audioIn, number);
	args.append((TTPtr)audioIn);
	TTObjectInstantiate(kTTSym_audiosignal, &audioOut, number);
	args.append((TTPtr)audioOut);
	TTObjectInstantiate(kTTSym_audiosignal, &audioTemp, number);
	args.append((TTPtr)audioTemp);
	TTObjectInstantiate(kTTSym_audiosignal, &audioZero, number);
	args.append((TTPtr)audioZero);
	
	TTObjectInstantiate(TT("crossfade"), &mixUnit, number);
	mixUnit->setAttributeValue(TT("position"), 1.0);
	args.append((TTPtr)mixUnit);
	
	TTObjectInstantiate(TT("gain"), &gainUnit, number);
	gainUnit->setAttributeValue(TT("linearGain"), 1.0);
	args.append((TTPtr)gainUnit);
	
	TTObjectInstantiate(TT("ramp"), &rampMixUnit, number);
	args.append((TTPtr)rampMixUnit);
	TTObjectInstantiate(TT("ramp"), &rampGainUnit, number);
	args.append((TTPtr)rampGainUnit);
	
	*returnedOutput = NULL;
	TTObjectInstantiate(TT("Output"), TTObjectHandle(returnedOutput), args);
	
	return kTTErrNone;
}

/**	Send any signal to an output object */
TTErr jamoma_output_send(TTOutputPtr anOutput, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{	
	TTValue		v;
	
	if (anOutput) {
		
		jamoma_ttvalue_from_Atom(v, msg, argc, argv);
		
		anOutput->sendMessage(kTTSym_Send, v, kTTValNONE);
		return kTTErrNone;
	}
	
	return kTTErrGeneric;
}


// Method to deal with TTMapper
///////////////////////////////////////////////////////////////////////

/**	Create a mapper object */
TTErr jamoma_mapper_create(ObjectPtr x, TTObjectPtr *returnedMapper)
{
	TTValue			args;
	TTObjectPtr		returnValueCallback;
	TTValuePtr		returnValueBaton;
	
	// prepare arguments
	returnValueCallback = NULL;			// without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
	TTObjectInstantiate(TT("callback"), &returnValueCallback, kTTValNONE);
	returnValueBaton = new TTValue(TTPtr(x));
	returnValueCallback->setAttributeValue(kTTSym_baton, TTPtr(returnValueBaton));
	returnValueCallback->setAttributeValue(kTTSym_function, TTPtr(&jamoma_callback_return_value));
	args.append(returnValueCallback);
	
	*returnedMapper = NULL;
	TTObjectInstantiate(TT("Mapper"), TTObjectHandle(returnedMapper), args);
	
	return kTTErrNone;
}


// Method to deal with TTViewer
///////////////////////////////////////////////////////////////////////

/**	Create a viewer object */
TTErr jamoma_viewer_create(ObjectPtr x, TTObjectPtr *returnedViewer)
{
	TTValue			args;
	TTObjectPtr		returnValueCallback;
	TTValuePtr		returnValueBaton;
	
	// prepare arguments
	returnValueCallback = NULL;			// without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
	TTObjectInstantiate(TT("callback"), &returnValueCallback, kTTValNONE);
	returnValueBaton = new TTValue(TTPtr(x));
	returnValueCallback->setAttributeValue(kTTSym_baton, TTPtr(returnValueBaton));
	returnValueCallback->setAttributeValue(kTTSym_function, TTPtr(&jamoma_callback_return_value_typed));
	args.append(returnValueCallback);
	
	*returnedViewer = NULL;
	TTObjectInstantiate(TT("Viewer"), TTObjectHandle(returnedViewer), args);
	
	return kTTErrNone;
}

/**	Send Max data using a viewer object */
TTErr jamoma_viewer_send(TTViewerPtr aViewer, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	TTValue		v;
	
	if (aViewer) {
		
		jamoma_ttvalue_from_Atom(v, msg, argc, argv);
		
		return aViewer->sendMessage(kTTSym_Send, v, kTTValNONE);
	}
	
	return kTTErrGeneric;
}


// Method to deal with TTExplorer
///////////////////////////////////////////////////////////////////////

/**	Create an explorer object */
TTErr jamoma_explorer_create(ObjectPtr x, TTObjectPtr *returnedExplorer)
{
	TTValue			args;
	TTObjectPtr		returnValueCallback;
	TTValuePtr		returnValueBaton;
	
	// prepare arguments
	returnValueCallback = NULL;			// without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
	TTObjectInstantiate(TT("callback"), &returnValueCallback, kTTValNONE);
	returnValueBaton = new TTValue(TTPtr(x));
	returnValueCallback->setAttributeValue(kTTSym_baton, TTPtr(returnValueBaton));
	returnValueCallback->setAttributeValue(kTTSym_function, TTPtr(&jamoma_callback_return_value));
	args.append(returnValueCallback);
	
	args.append((TTPtr)jamoma_explorer_default_filter_bank());
	
	*returnedExplorer = NULL;
	TTObjectInstantiate(TT("Explorer"), TTObjectHandle(returnedExplorer), args);
	
	return kTTErrNone;
}

TTHashPtr jamoma_explorer_default_filter_bank(void)
{
	TTHashPtr		defaultFilterBank = new TTHash();
	TTDictionaryPtr aFilter;
	
	// Create some ready-made filters
	
	// to look for any data (parameter | message | return)
	aFilter = new TTDictionary;
	aFilter->setSchema(kTTSym_filter);
	aFilter->append(kTTSym_object, TT("Data"));
	aFilter->append(kTTSym_mode, kTTSym_include);
	defaultFilterBank->append(TT("data"), (TTPtr)aFilter);
	
	// to look for jcom.parameter
	aFilter = new TTDictionary;
	aFilter->setSchema(kTTSym_filter);
	aFilter->append(kTTSym_object, TT("Data"));
	aFilter->append(kTTSym_attribute, kTTSym_service);
	aFilter->append(kTTSym_value, kTTSym_parameter);
	aFilter->append(kTTSym_mode, kTTSym_include);
	defaultFilterBank->append(TT("parameter"), (TTPtr)aFilter);
	
	// to look for jcom.message
	aFilter = new TTDictionary;
	aFilter->setSchema(kTTSym_filter);
	aFilter->append(kTTSym_object, TT("Data"));
	aFilter->append(kTTSym_attribute, kTTSym_service);
	aFilter->append(kTTSym_value, kTTSym_message);
	aFilter->append(kTTSym_mode, kTTSym_include);
	defaultFilterBank->append(TT("message"), (TTPtr)aFilter);
	
	// to look for jcom.return
	aFilter = new TTDictionary;
	aFilter->setSchema(kTTSym_filter);
	aFilter->append(kTTSym_object, TT("Data"));
	aFilter->append(kTTSym_attribute, kTTSym_service);
	aFilter->append(kTTSym_value, kTTSym_return);
	aFilter->append(kTTSym_mode, kTTSym_include);
	defaultFilterBank->append(TT("return"), (TTPtr)aFilter);
	
	// to look for jcom.model
	aFilter = new TTDictionary;
	aFilter->setSchema(kTTSym_filter);
	aFilter->append(kTTSym_object, TT("Container"));
	aFilter->append(kTTSym_attribute, kTTSym_tag);
	aFilter->append(kTTSym_value, kTTSym_model);
	aFilter->append(kTTSym_mode, kTTSym_include);
	defaultFilterBank->append(TT("model"), (TTPtr)aFilter);
	
	// to look for jcom.view
	aFilter = new TTDictionary;
	aFilter->setSchema(kTTSym_filter);
	aFilter->append(kTTSym_object, TT("Container"));
	aFilter->append(kTTSym_attribute, kTTSym_tag);
	aFilter->append(kTTSym_value, kTTSym_view);
	aFilter->append(kTTSym_mode, kTTSym_include);
	defaultFilterBank->append(TT("view"), (TTPtr)aFilter);
	
	// to look for jcom.remote
	aFilter = new TTDictionary;
	aFilter->setSchema(kTTSym_filter);
	aFilter->append(kTTSym_object, TT("Viewer"));
	aFilter->append(kTTSym_mode, kTTSym_include);
	defaultFilterBank->append(TT("remote"), (TTPtr)aFilter);
	
	// to look for user-defined object
	aFilter = new TTDictionary;
	aFilter->setSchema(kTTSym_filter);
	aFilter->append(kTTSym_attribute, kTTSym_tag);
	aFilter->append(kTTSym_value, kTTSym_generic);
	aFilter->append(kTTSym_mode, kTTSym_exclude);
	defaultFilterBank->append(TT("noGenericTag"), (TTPtr)aFilter);
	
	// to look for generic tagged object
	aFilter = new TTDictionary;
	aFilter->setSchema(kTTSym_filter);
	aFilter->append(kTTSym_attribute, kTTSym_tag);
	aFilter->append(kTTSym_value, kTTSym_generic);
	aFilter->append(kTTSym_mode, kTTSym_restrict);
	defaultFilterBank->append(TT("genericTag"), (TTPtr)aFilter);
	
	return defaultFilterBank;
}

// Method to return data
///////////////////////////////////////////////////////////////////////

void jamoma_callback_return_address(TTPtr baton, TTValue& v)
{
	TTValuePtr	b;
	ObjectPtr	x;
	TTSymbolPtr	address;
	
	// unpack baton (a t_object* and the name of the method to call)
	b = (TTValuePtr)baton;
	b->get(0, (TTPtr*)&x);
	
	// unpack data (address)
	v.get(0, &address);
	
	// send data to a data using the return_value method
	object_method(x, jps_return_address, SymbolGen(address->getCString()), 0, 0);
}

/** Return the value to a jcom. external as _sym_nothing, argc, argv */
void jamoma_callback_return_value(TTPtr baton, TTValue& v)
{
	TTValuePtr	b;
	ObjectPtr	x;
	SymbolPtr	method;
	long		argc = 0;
	AtomPtr		argv = NULL;
	
	// unpack baton (a t_object* and the name of the method to call (default : jps_return_value))
	b = (TTValuePtr)baton;
	b->get(0, (TTPtr*)&x);
	
	if (b->getSize() == 2) {
		b->get(1, (TTPtr*)&method);
		if (method == NULL || method == _sym_nothing)
			return;
		}
	else
		method = jps_return_value;

	jamoma_ttvalue_to_Atom(v, &argc, &argv);
	
	// send data to an external
	object_method(x, method, _sym_nothing, argc, argv);
	
	sysmem_freeptr(argv);
}

/** Return the value to a jcom. external as msg, argc, argv */
void jamoma_callback_return_value_typed(TTPtr baton, TTValue& v)
{
	TTValuePtr	b;
	ObjectPtr	x;
	SymbolPtr	msg, method;
	long		argc = 0;
	AtomPtr		argv = NULL;
	TTBoolean	shifted = false;
	
	// unpack baton (a t_object* and the name of the method to call (default : jps_return_value))
	b = (TTValuePtr)baton;
	b->get(0, (TTPtr*)&x);
	
	if (b->getSize() == 2) {
		b->get(1, (TTPtr*)&method);
		if (method == NULL || method == _sym_nothing)
			return;
	}
	else
		method = jps_return_value;
	
	// convert TTValue into a typed atom array
	jamoma_ttvalue_to_typed_Atom(v, &msg, &argc, &argv, shifted);
	
	// send data to an external using the return_value method
	object_method(x, method, msg, argc, argv);
	
	if (shifted)
		argv--;
	sysmem_freeptr(argv);
}

/** Return any signal */
void jamoma_callback_return_signal(TTPtr baton, TTValue& v)
{
	TTValuePtr	b;
	ObjectPtr	x;
	long		argc = 0;
	AtomPtr		argv = NULL;
	
	// unpack baton (a t_object*)
	b = (TTValuePtr)baton;
	b->get(0, (TTPtr*)&x);
	
	jamoma_ttvalue_to_Atom(v, &argc, &argv);
	
	// send signal using the return_signal method
	object_method(x, jps_return_signal, _sym_nothing, argc, argv);
	
	sysmem_freeptr(argv);
}

/** Return audio signal */
void jamoma_callback_return_signal_audio(TTPtr baton, TTValue& v)
{
	TTValuePtr	b;
	ObjectPtr	x;
	TTPtr		signal;
	long		i, argc = 0;
	AtomPtr		argv = NULL;
	
	// unpack baton (a t_object*)
	b = (TTValuePtr)baton;
	b->get(0, (TTPtr*)&x);
	
	// unpack data (signal)
	argc = v.getSize();
	argv = (AtomPtr)sysmem_newptr(sizeof(t_atom) * argc);
	for (i=0; i<argc; i++) {
		v.get(i, (TTPtr*)&signal);
		atom_setobj(argv+i, signal);
	}
	
	// send signal using the return_signal method
	object_method(x, jps_return_signal, _sym_nothing, argc, argv);
	
	sysmem_freeptr(argv);
}

// Method to deal with TTValue
/////////////////////////////////////////

/** Make a typed Atom array from a TTValue (!!! this method allocate memory for the Atom array ! free it after ! */
void jamoma_ttvalue_to_typed_Atom(const TTValue& v, SymbolPtr *msg, AtomCount *argc, AtomPtr *argv, TTBoolean& shifted)
{
	AtomCount	i;
	
	*msg = _sym_nothing;
	*argc = v.getSize();
	if (!(*argv)) // otherwise use memory passed in
		*argv = (AtomPtr)sysmem_newptr(sizeof(t_atom) * (*argc));
	
	if (*argc && !(v == kTTValNONE)) {
		for (i=0; i<*argc; i++) {
			if(v.getType(i) == kTypeFloat32 || v.getType(i) == kTypeFloat64){
				TTFloat64	value;
				v.get(i, value);
				atom_setfloat((*argv)+i, value);
				*msg = _sym_float;
			}
			else if(v.getType(i) == kTypeSymbol){
				TTSymbolPtr	value = NULL;
				v.get(i, &value);
				if (value == kTTSymEmpty || value == kTTAdrsEmpty)
					atom_setsym((*argv)+i, _sym_bang);
				else
					atom_setsym((*argv)+i, gensym((char*)value->getCString()));
				//*msg = _sym_symbol;
			}
			else{	// assume int
				TTInt32	value;
				v.get(i, value);
				atom_setlong((*argv)+i, value);
				*msg = _sym_int;
			}
		}
		
		if (i>0) {
			if (atom_gettype(*argv) == A_SYM) {
				*msg = atom_getsym(*argv);
				*argc = (*argc)-1;
				*argv = (*argv)+1;
				shifted = true;
			}
			else if (i>1)
				*msg = _sym_list;
		}
	}
	else {
		*msg = _sym_bang;
		*argc = 0;
		*argv = NULL;
	}
}

/** Make an Atom array from a TTValue (!!! this method allocate memory for the Atom array ! free it after ! */
void jamoma_ttvalue_to_Atom(const TTValue& v, AtomCount *argc, AtomPtr *argv)
{
	AtomCount	i;
	
	*argc = v.getSize();
	
	if (*argc == 0 || v == kTTValNONE)
		return;
	
	if (!(*argv)) // otherwise use memory passed in
		*argv = (AtomPtr)sysmem_newptr(sizeof(t_atom) * (*argc));
	
	for (i=0; i<*argc; i++) {
		if (v.getType(i) == kTypeFloat32 || v.getType(i) == kTypeFloat64){
			TTFloat64	value;
			v.get(i, value);
			atom_setfloat((*argv)+i, value);
		}
		else if (v.getType(i) == kTypeSymbol) {
			TTSymbolPtr	value = NULL;
			v.get(i, &value);
			atom_setsym((*argv)+i, gensym((char*)value->getCString()));
		}
		else {	// assume int
			TTInt32	value;
			v.get(i, value);
			atom_setlong((*argv)+i, value);
		}
	}
}

/** Make a TTValue from Atom array */
void jamoma_ttvalue_from_Atom(TTValue& v, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	AtomCount	i, start;
	
	if ((msg == _sym_bang || msg == _sym_nothing) && argc == 0)
		v = kTTValNONE;
	else {
		
		// add msg to the value
		if (msg != _sym_nothing && msg != _sym_int && msg != _sym_float && msg != _sym_symbol && msg != _sym_list) {
			v.setSize(argc+1);
			v.set(0, TT(msg->s_name));
			start = 1;
		}
		else {
			v.setSize(argc);
			start = 0;
		}
			
		// convert Atom to TTValue
		for (i=0; i<argc; i++) 
		{
			if (atom_gettype(argv+i) == A_LONG)
				v.set(i+start, (int)atom_getlong(argv+i));
			else if (atom_gettype(argv+i) == A_FLOAT)
				v.set(i+start, atom_getfloat(argv+i));
			else if (atom_gettype(argv+i) == A_SYM)
				v.set(i+start, TT(atom_getsym(argv+i)->s_name));
		}
	}
}

/** Convert a TTSymbolPtr "MyObjectMessage" into a SymbolPtr "my/object/message" 
 or return NULL if the TTSymbolPtr doesn't begin by an uppercase letter */
SymbolPtr jamoma_TTName_To_MaxName(TTSymbolPtr TTName)
{
	TTSymbolPtr MaxName = convertTTNameInTTNodeAddress(TTName);
	if (MaxName)
		return gensym((char*)MaxName->getCString());
	else
		return NULL;
}

/** Load an external for internal use. Returns true if successful */
TTBoolean jamoma_extern_load(SymbolPtr objectname, AtomCount argc, AtomPtr argv, ObjectPtr *object)
{
	t_class *c = NULL;
	t_object *p = NULL;
	
	c = class_findbyname(jps_box, objectname);
	if (!c) {
		p = (t_object *)newinstance(objectname, 0, NULL);
		if (p) {
			c = class_findbyname(jps_box, objectname);
			freeobject(p);
			p = NULL;
		}
		else {
			error("jamoma: could not load extern (%s) within the core", objectname->s_name);
			return false;
		}
	}
	
	if (*object != NULL) { // if there was an object set previously, free it first...
		object_free(*object);
		*object = NULL;
	}
	
	*object = (t_object *)object_new_typed(CLASS_BOX, objectname, argc, argv);
	return true;
}

/** Convenient method to get the patcher easily */
ObjectPtr jamoma_patcher_get(ObjectPtr obj)
{
	ObjectPtr patcher = NULL;
	object_obex_lookup(obj, SymbolGen("#P"), &patcher);
	
	// If obj is in a bpatcher, the patcher is NULL
	if (!patcher){
		patcher = object_attr_getobj(obj, _sym_parentpatcher);
	}
	
	return patcher;
}

// Don't pass memory in for this function!  It will allocate what it needs
// -- then the caller is responsible for freeing
long jamoma_patcher_get_args(ObjectPtr patcher, AtomCount *argc, AtomPtr *argv)
{
	SymbolPtr	hierarchy = jamoma_patcher_get_hierarchy(patcher);
	ObjectPtr	box = object_attr_getobj(patcher, _sym_box);
	ObjectPtr	textfield = NULL;
	ObjectPtr	assoc = NULL;
	char		*text = NULL;
	unsigned long	textlen = 0;
	method		m = NULL;
	long		index = -1;
	
	if (hierarchy == _sym_bpatcher)
		object_attr_getvalueof(box, SymbolGen("args"), argc, argv);
	
	else if (hierarchy == _sym_subpatcher) {
		textfield = object_attr_getobj(box, SymbolGen("textfield"));
		object_method(textfield, SymbolGen("gettextptr"), &text, &textlen);
		atom_setparse(argc, argv, text);
	}
	else if (hierarchy == gensym("poly")){
	
		object_method(patcher, gensym("getassoc"), &assoc);
		if (assoc) {

			object_attr_getvalueof(assoc, SymbolGen("args"), argc, argv);
			
			// for poly, return the index to edit an instance
			// according to the voice number of the poly~ 
			// (see in jamoma_patcher_get_name)
			m = zgetfn(assoc, gensym("getindex"));
			if(m)
				return index = (long)(*m)(assoc, patcher);
			
		}  
	}
	else {
		*argc = 0;
		*argv = NULL;
	}
	
	return 0;
}

/** Get the hierarchy of the patcher : bpatcher, subpatcher or top level one*/
SymbolPtr jamoma_patcher_get_hierarchy(ObjectPtr patcher)
{
	ObjectPtr box = object_attr_getobj(patcher, _sym_box);
	SymbolPtr objclass = NULL;
	
	if (box)
		objclass = object_classname(box);
	
	if (objclass == _sym_bpatcher)
		return objclass;
	
	else if (objclass == _sym_newobj)
		return _sym_subpatcher;
	
	else {
		
		if(object_attr_getobj(patcher, _sym_parentpatcher)) // a real topmost patcher shouldn't have parent
		   return gensym("poly"); // poly case
		
		return _sym_topmost;
		
	}
}

/** Get the context from the upper jcom model|view in the patcher or from patcher's name */
void jamoma_patcher_get_context(ObjectPtr *patcher, TTSymbolPtr *returnedContext)
{
	SymbolPtr	hierarchy, _sym_jcommodel, _sym_jcomview, _sym_context, patcherName;
	ObjectPtr	obj, upperPatcher;
	TTBoolean	found = NO;
	
	// Look for jcom model|view in the patcher
	obj = object_attr_getobj(*patcher, _sym_firstobject);
	
	// TODO : cache those t_symbol else where ...
	_sym_jcommodel = gensym("jcom.model");
	_sym_jcomview = gensym("jcom.view");
	
	while (obj) {
		
		_sym_context = object_attr_getsym(obj, _sym_maxclass);
		
		if (_sym_context == _sym_jcommodel) {
			
			*returnedContext = kTTSym_model;
			found = YES;
			break;
			
		} else if (_sym_context == _sym_jcomview) {
			
			*returnedContext = kTTSym_view;
			found = YES;
			break;
		}

		obj = object_attr_getobj(obj, _sym_nextobject);
	}
	
	// if no context
	if (!found) {
		
		/*	to -- don't get the context from the filename anymore because it make two ways to set it...
		 
		// try to get it from the patcher name
		patcherName = object_attr_getsym(*patcher, _sym_filename);
		if (patcherName != _sym_nothing) {
			// Is there a ".model.maxpat" string in the patcher name ?
			if (strstr(patcherName->s_name, ".model.maxpat")) {
				*returnedContext = kTTSym_model;
				return;
			}
			// Is there a ".view.maxpat" string in the patcher name ?
			else if (strstr(patcherName->s_name, ".view.maxpat")) {
				*returnedContext = kTTSym_view;
				return;
			}
		}
		 */
		
		// in subpatcher look upper
		hierarchy = jamoma_patcher_get_hierarchy(*patcher);
		if (hierarchy == _sym_subpatcher || hierarchy == _sym_bpatcher || hierarchy == SymbolGen("poly")) {
			
			// get the patcher where is the patcher to look for the context one step upper
			upperPatcher = jamoma_patcher_get(*patcher);
			
			jamoma_patcher_get_context(&upperPatcher, returnedContext);
			
			// if the context is still NULL and there is a jcom model|view at this level
			// the default case would be to set it as a model patcher by default
			if (!(*returnedContext) && found)
				*returnedContext = kTTSym_model;
			// keep the upperPatcher if no jcom model|view around
			// because it is where the context is defined
			else if (!found)
				*patcher = upperPatcher;
		}
		// default case : a patcher has no type
		else if (hierarchy == _sym_topmost)
			*returnedContext = NULL;
	}
}

/** Get the class of the patcher from the file name (removing .model and .view convention name if they exist) */
void jamoma_patcher_get_class(ObjectPtr patcher, TTSymbolPtr context, TTSymbolPtr *returnedClass)
{
	SymbolPtr	patcherName, hierarchy;
	ObjectPtr	upperPatcher;
	TTString	s_toParse;
	TTRegexStringPosition begin, end;
	
	// extract class from the file name
	patcherName =  object_attr_getsym(patcher, _sym_filename);
	
	if (patcherName != _sym_nothing) {
		
		s_toParse = patcherName->s_name;
	
		begin = s_toParse.begin();
		end = s_toParse.end();

		// parse jmod.
		if (!ttRegexForJmod->parse(begin, end)) {
			
			object_error(patcher, "jmod. prefix in %s is a 0.5 convention. Please use .module suffix instead", patcherName->s_name);
			
			s_toParse = string(ttRegexForJmod->end(), end);
			begin = s_toParse.begin();
			end = s_toParse.end();
		} 
		// parse jcom.
		else if (!ttRegexForJcom->parse(begin, end)) {
			
			s_toParse = string(ttRegexForJcom->end(), end);
			begin = s_toParse.begin();
			end = s_toParse.end();
		}
		
		// parse .module or if not parse context (model or view)
		if (!ttRegexForModule->parse(begin, end)) {
			s_toParse = string(begin, ttRegexForModule->begin());
			begin = s_toParse.begin();
			end = s_toParse.end();
		}
		else if (context == kTTSym_model) {
			
			if (!ttRegexForModel->parse(begin, end)) {
				s_toParse = string(begin, ttRegexForModel->begin());
				begin = s_toParse.begin();
				end = s_toParse.end();
			}
		}
		else if (context == kTTSym_view) {
			
			if (!ttRegexForView->parse(begin, end)) {
				s_toParse = string(begin, ttRegexForView->begin());
				begin = s_toParse.begin();
				end = s_toParse.end();
			}
		}
		
		// parse .maxpat
		if (!ttRegexForMaxpat->parse(begin, end)) {
			s_toParse = string(begin, ttRegexForMaxpat->begin());
			begin = s_toParse.begin();
			end = s_toParse.end();
		}
		// parse .maxhelp
		else if (!ttRegexForMaxhelp->parse(begin, end)) {
			s_toParse = string(begin, ttRegexForMaxhelp->begin());
			begin = s_toParse.begin();
			end = s_toParse.end();
		}
		
		*returnedClass = TT(s_toParse);	// TODO : replace each "." by the Uppercase of the letter after the "."
	}
	else {
		
		// in subpatcher look upper
		hierarchy = jamoma_patcher_get_hierarchy(patcher);
		if (hierarchy == _sym_subpatcher || hierarchy == _sym_bpatcher) {
			
			// get the patcher where is the patcher to look for the class one step upper
			upperPatcher = jamoma_patcher_get(patcher);
			
			jamoma_patcher_get_class(upperPatcher, context, returnedClass);
		}
		// default case : a patcher has no class
		else if (hierarchy == _sym_topmost)
			*returnedClass = NULL;
	}
}

/** Get the name of the patcher from his arguments */
void jamoma_patcher_get_name(ObjectPtr patcher, TTSymbolPtr context, TTSymbolPtr *returnedName)
{
	AtomCount		ac = 0;
	AtomPtr			av = NULL;
	SymbolPtr		hierarchy, argName = _sym_nothing;
	TTString		voiceFormat;
	long			index;
	
	*returnedName = NULL;
	
	// try to get context name from the patcher arguments
	hierarchy = jamoma_patcher_get_hierarchy(patcher);
	index = jamoma_patcher_get_args(patcher, &ac, &av);
	
	// ignore the first argument for subpatcher
	if (hierarchy == _sym_subpatcher) {
		av++;
		ac--;
	}
	
	if (ac && av) {
		
		// for model : the first argument is the name
		if (context == kTTSym_model || hierarchy == _sym_subpatcher)
			argName = atom_getsym(av);
		
		// for view : the second argument is the name
		// (the first is reserved for the /model/address)
		else if (context == kTTSym_view && ac > 1)
			argName = atom_getsym(av+1);
		
		// if the argname begin by a @ ignore it
		if (argName->s_name[0] == '@')
			argName = _sym_nothing;
		
		if (argName != _sym_nothing) {
			
			// in poly case, the index is used to edit an instance
			// according to the voice number of the poly~ 
			// (see in jamoma_patcher_get_args)
			if (index) {
				voiceFormat = argName->s_name;
				voiceFormat += ".%d";
				jamoma_edit_numeric_instance(&voiceFormat, &argName, index);
			}
			
			*returnedName = TT(jamoma_parse_dieze(patcher, argName)->s_name);
		}
	}
}

/** Get all context info from the root jcom model|view in the patcher */
void jamoma_patcher_share_info(ObjectPtr patcher, ObjectPtr *returnedPatcher, TTSymbolPtr *returnedContext, TTSymbolPtr *returnedClass,  TTSymbolPtr *returnedName)
{
	TTValue		patcherInfo;
	ObjectPtr	obj;
	SymbolPtr	_sym_jcommodel, _sym_jcomview, _sym_jcomcontext, _sym_share;
	
	obj = object_attr_getobj(patcher, _sym_firstobject);
	
	// TODO : cache those t_symbol else where ...
	_sym_jcommodel = gensym("jcom.model");
	_sym_jcomview = gensym("jcom.view");
	_sym_share = gensym("share_patcher_info");
	while (obj) {
		_sym_jcomcontext = object_attr_getsym(obj, _sym_maxclass);
		if (_sym_jcomcontext == _sym_jcommodel || _sym_jcomcontext == _sym_jcomview) {
		
			// ask it patcher info
			object_method(object_attr_getobj(obj, _sym_object), _sym_share, &patcherInfo);
			
			if (patcherInfo.getSize() == 4) {
				patcherInfo.get(0, (TTPtr*)returnedPatcher);
				patcherInfo.get(1, returnedContext);
				patcherInfo.get(2, returnedClass);
				patcherInfo.get(3, returnedName);
				break;
			}
		}
		obj = object_attr_getobj(obj, _sym_nextobject);
	}
}

/** Get the "aClass.model" external in the patcher */
void jamoma_patcher_get_model_patcher(ObjectPtr patcher, TTSymbolPtr modelClass, ObjectPtr *returnedModelPatcher)
{
	ObjectPtr	obj;
	SymbolPtr	_sym_modelfilename, _sym_objmaxclass, _sym_objfilename;
	
	jamoma_edit_filename(ModelPatcherFormat, modelClass, &_sym_modelfilename);
	
	obj = object_attr_getobj(patcher, _sym_firstobject);
	
	*returnedModelPatcher = NULL;
	
	while (obj) {
		
		// look for jpatcher
		_sym_objmaxclass = object_attr_getsym(obj, _sym_maxclass);
		if (_sym_objmaxclass == _sym_jpatcher) {
			
			// look for _sym_modelfilename
			_sym_objfilename = object_attr_getsym(obj, _sym_filename);
			if (_sym_objfilename == _sym_modelfilename) {
			
				*returnedModelPatcher = object_attr_getobj(obj, _sym_object);
				break;
			}
		}
		obj = object_attr_getobj(obj, _sym_nextobject);
	}
}

/** Get patcher's node from the root jcom model|view in the patcher */
void jamoma_patcher_share_node(ObjectPtr patcher, TTNodePtr *patcherNode)
{
	ObjectPtr	obj;
	SymbolPtr	_sym_jcommodel, _sym_jcomview, _sym_jcomcontext, _sym_share;
	
	*patcherNode = NULL;
	
	obj = object_attr_getobj(patcher, _sym_firstobject);
	
	// TODO : cache those t_symbol else where ...
	_sym_jcommodel = gensym("jcom.model");
	_sym_jcomview = gensym("jcom.view");
	_sym_share = gensym("share_patcher_node");
	while (obj) {
		_sym_jcomcontext = object_attr_getsym(obj, _sym_maxclass);
		if (_sym_jcomcontext == _sym_jcommodel || _sym_jcomcontext == _sym_jcomview) {
			
			// ask it patcher info
			object_method(object_attr_getobj(obj, _sym_object), _sym_share, patcherNode);
			
			if (*patcherNode)
				break;
		}
		obj = object_attr_getobj(obj, _sym_nextobject);
	}
}

/** Get all context info from an object (his patcher and the context, the class and the name of his patcher) */
TTErr jamoma_patcher_get_info(ObjectPtr obj, ObjectPtr *returnedPatcher, TTSymbolPtr *returnedContext, TTSymbolPtr *returnedClass,  TTSymbolPtr *returnedName)
{
	TTBoolean	canShare;
	SymbolPtr	_sym_jcomcontext;
	TTString	viewName;
	ObjectPtr	patcher;
	ObjectPtr	sharedPatcher = NULL;
	TTSymbolPtr sharedContext = NULL;
	TTSymbolPtr sharedClass = NULL;
	TTSymbolPtr sharedName = NULL;
	
	*returnedPatcher = jamoma_patcher_get(obj);
	
	_sym_jcomcontext = object_classname(obj);
	canShare = _sym_jcomcontext == gensym("jcom.model") || _sym_jcomcontext == gensym("jcom.view");
	
	patcher = *returnedPatcher;

	// Get the context, the class and the name of the patcher
	if (*returnedPatcher) {
		
		// try to get them from a jcom model|view around to go faster (except for jcom model|view of course)
		if (!canShare) {
			
			jamoma_patcher_share_info(*returnedPatcher, &sharedPatcher, &sharedContext, &sharedClass, &sharedName);
			
			if (sharedPatcher && sharedContext && sharedClass && sharedName) {

				*returnedPatcher = sharedPatcher;
				*returnedContext = sharedContext;
				*returnedClass = sharedClass;
				*returnedName = sharedName;
				return kTTErrNone;
			}
		}
		
		// get the context looking for a jcom model|view in the patcher
		// it will also return a patcher above where a jcom model|view has been found
		jamoma_patcher_get_context(returnedPatcher, returnedContext);
		
		// if still no context : stop the subscription process
		if (!*returnedContext) {
			*returnedName = S_SEPARATOR;
			// can't find any jcom model|view with a correct context attribute in the patcher
			// so this means the object have to be registered under the root
			return kTTErrGeneric;
		}
		
		// get the class from the patcher filename
		jamoma_patcher_get_class(*returnedPatcher, *returnedContext, returnedClass);
		
		// if no class : set it as "Untitled" to continue the process
		if (!*returnedClass)
			*returnedClass = TT("Untitled");
		
		// for jcom model|view object, use the patcher where it is to get the name
		if (canShare)
			jamoma_patcher_get_name(patcher, *returnedContext, returnedName);
		// else get the name from the argument of the patcher
		else
			jamoma_patcher_get_name(*returnedPatcher, *returnedContext, returnedName);
		
		// if no name
		if (!*returnedName) {
			
			// for model : used "class"
			if (*returnedContext == kTTSym_model)
				*returnedName = *returnedClass;
			
			// for view : used "class(view)"
			else if (*returnedContext == kTTSym_view) {
				viewName = (*returnedClass)->getCString();
				viewName += "(view)";
				*returnedName = TT(viewName.data());
			}
		}
	}
		// if no patcher : stop the subscription process
	else {
		object_error(obj, "Can't get the patcher. Subscription failed");
		return kTTErrGeneric;
	}

	return kTTErrNone;
}

/** returned the N inside "pp/xx.[N]/yyy" and a format string as "pp/xx.%d/yy" and a format string as "pp/xx.%s/yy" */
TTUInt32 jamoma_parse_bracket(SymbolPtr s, TTString *si_format, TTString *ss_format)
{
	long		number = 0;
	TTString	s_toParse = s->s_name;
	TTString	s_number;
	TTString	s_before;
	TTString	s_after;
	TTRegexStringPosition begin, end;
	TTRegexStringPosition beginNumber, endNumber;
	
	begin = s_toParse.begin();
	end = s_toParse.end();
	
	// parse braket
	if (!ttRegexForBracket->parse(begin, end))
	{
		beginNumber = ttRegexForBracket->begin();
		endNumber = ttRegexForBracket->end();
		
		s_before = string(begin, ttRegexForBracket->begin()-1);
		s_number = string(ttRegexForBracket->begin(), ttRegexForBracket->end());
		s_after = string(ttRegexForBracket->end()+1, end);
		
		sscanf(s_number.data(), "%ld", &number);
		
		(*si_format) = s_before;
		(*si_format) += "%d";
		(*si_format) += s_after;
		
		(*ss_format) = s_before;
		(*ss_format) += "%s";
		(*ss_format) += s_after;
	}
	else {
		(*si_format) = "";
		(*ss_format) = "";
	}
	
	return number;
}

/** edit a new instance of the given format address using interger */
void jamoma_edit_numeric_instance(TTString *format, SymbolPtr *returnedName, long i)
{
	char *s_num;
	TTInt32 len;
	
	if (i > 0) {
		len = strlen(format->data()) + (TTInt32)log10((TTFloat32)i); // note : %d (lenght = 2) is replaced by 1 character (0::9), 2 charecters (10 :: 99), 3 char...
		s_num = (char *)malloc(sizeof(char)*len);
		snprintf(s_num, len, format->data(), i);
		*returnedName = gensym(s_num);
		free(s_num);
	}
}

/** edit a new instance of the given format address using string */
void jamoma_edit_string_instance(TTString *format, SymbolPtr *returnedName, TTString *s)
{
	char *s_str;
	long len;
	
	len = strlen(format->data()) + strlen(s->data());
	s_str = (char *)malloc(sizeof(char)*len);
	snprintf(s_str, len, format->data(), s->data());
	*returnedName = gensym(s_str);
	free(s_str);
}

/** edit a file name from a given file format and a class name */
void jamoma_edit_filename(TTString *format, TTSymbolPtr className, SymbolPtr *returnedFileName)
{
	char *s_str;
	long len;
	
	len = strlen(format->data()) + strlen(className->getCString());
	s_str = (char *)malloc(sizeof(char)*len);
	snprintf(s_str, len, format->data(), className->getCString());
	*returnedFileName = gensym(s_str);
	free(s_str);
}

/** Parse #N inside address and replace them by parent patcher arguments if there are */
SymbolPtr jamoma_parse_dieze(ObjectPtr x, SymbolPtr address)
{
	TTString	diezeStr, argsStr, addressStr = address->s_name;
	SymbolPtr	hierarchy;
	ObjectPtr	patcher  = jamoma_patcher_get(x);
	char		dieze[5];
	char		args[64];
	size_t		found = 0;
	long		i, sd, sa;
	AtomCount	ac = 0;
	AtomPtr		av = NULL;
	
	// If x is in a bpatcher, the patcher is NULL
	if (!patcher){
		patcher = object_attr_getobj(x, _sym_parentpatcher);
	}
	
	if (patcher) {
		
		hierarchy = jamoma_patcher_get_hierarchy(patcher);
		
		// Try to get the patcher arguments
		jamoma_patcher_get_args(patcher, &ac, &av);
		if ((hierarchy == _sym_subpatcher)) {
			av++;
			ac--;
		}
		
		// if there are arguments
		if (ac > 0 && av) {
			
			i = 1;
			do {
				
				// prepare to parse #i
				snprintf(dieze, sizeof(dieze), "#%li", i);
				found = addressStr.find(dieze);
				
				// if #i found
				if (found != string::npos) {
					
					// get av+i atom
					if (i-1 < ac) {
						
						if (atom_gettype(av+i-1) == A_LONG)
							snprintf(args, sizeof(args), "%li", atom_getlong(av+i-1));
						else if (atom_gettype(av+i-1) == A_SYM)
							snprintf(args, sizeof(args), "%s", atom_getsym(av+i-1)->s_name);
						else {
							i++;
							continue;
						}
						
						diezeStr = dieze;
						argsStr	= args;
						sd = diezeStr.size();
						sa = argsStr.size();
						addressStr.replace(found, sd, args, sa);
					}
				}
				i++;
				
			} while (i-1 < ac); // while there are argument
			
			return gensym((char*)addressStr.data());
		}
	}
	
	return address;
}


// Files
///////////////////////////////////////////////


/** Get BOOT style filepath from args or, if no args open a dialog to write a file */
TTSymbolPtr jamoma_file_write(ObjectPtr x, AtomCount argc, AtomPtr argv, char* default_filename)
{
	char 			fullpath[MAX_PATH_CHARS];		// for storing the absolute path of the file
	short 			err, path;						// pathID#, error number
	t_filehandle	file_handle;					// a reference to our file (for opening it, closing it, etc.)
	long			filetype = 'TEXT', outtype;		// the file type that is actually true
	SymbolPtr		userpath;
	TTSymbolPtr		result = kTTSymEmpty;
	
	// Give a path ...
	if (argc && argv) {
		if (atom_gettype(argv) == A_SYM) {
			userpath = atom_getsym(argv);
			
			if (userpath != _sym_nothing) {
				// Use BOOT style path
				path = 0;
				path_nameconform(userpath->s_name, fullpath, PATH_STYLE_NATIVE, PATH_TYPE_BOOT);// Copy symbol argument to a local string
				
				// Create a file using Max API
				path_createsysfile(fullpath, path, filetype, &file_handle);
				
				result = TT(fullpath);
			}
		}
	} 
	
	// ... or open a dialog
	if (result == kTTSymEmpty) {
		
		saveas_promptset("Save Preset...");												// Instructional Text in the dialog
		err = saveasdialog_extended(default_filename, &path, &outtype, &filetype, 1);	// Returns 0 if successful
		if (!err) { // User Cancelled
			char posixpath[MAX_PATH_CHARS];
			
			// Create a file using Max API
			path_createsysfile(default_filename, path, filetype, &file_handle);
			
			// Use BOOT style path
			path_topathname(path, default_filename, fullpath);
			path_nameconform(fullpath, posixpath, PATH_STYLE_NATIVE, PATH_TYPE_BOOT);
			
			result = TT(posixpath);
		}
	}
	
	return result;
}

/** Get BOOT style filepath grom args or, if no args open a dialog to read a file */
TTSymbolPtr jamoma_file_read(ObjectPtr x, AtomCount argc, AtomPtr argv, long filetype)
{
	char 			filepath[MAX_FILENAME_CHARS];	// for storing the name of the file locally
	char 			fullpath[MAX_PATH_CHARS];		// path and name passed on to the xml parser
	short 			path;							// pathID#
	long			outtype;
	SymbolPtr		userpath;
	TTSymbolPtr		result = kTTSymEmpty;
	
	// Give a path ...
	if (argc && argv) {
		if (atom_gettype(argv) == A_SYM) {
			userpath = atom_getsym(argv);
			
			if (userpath != _sym_nothing) {
				// Use BOOT style path
				path = 0;
				path_nameconform(userpath->s_name, fullpath, PATH_STYLE_NATIVE, PATH_TYPE_BOOT);// Copy symbol argument to a local string
				
				result = TT(fullpath);
			}
		}
	}
	
	// ... or open a dialog
	if (result == kTTSymEmpty)
		if (!open_dialog(filepath, &path, &outtype, &filetype, 1)) {	// Returns 0 if successful
			char posixpath[MAX_PATH_CHARS];
			
			path_topathname(path, filepath, fullpath);
			path_nameconform(fullpath, posixpath, PATH_STYLE_NATIVE, PATH_TYPE_BOOT);
			result = TT(posixpath);
		}
	
	return result;
}

